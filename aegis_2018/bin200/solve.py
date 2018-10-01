#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from commands import getoutput

r = remote("203.66.68.95", 44544)
r.sendlineafter("...\n", "")
elf = r.recvuntil("\n\n").decode('base64')
write("elf", elf)

getoutput("gdb -x ./gdb.script")
way = read("dump")
keys = read("dump2").split("\x00")

for i in "EBOLA":
    idx = way.find(i) + 1
    r.sendlineafter(": ", str(idx))
    key = keys[ord(i)-ord('A')]
    r.sendafter(": ", key)
    r.recvline()
    print r.recvline()

elf = r.recvuntil("\n\n").decode('base64')
write("flag.jpg", elf)

