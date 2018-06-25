#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
from commands import getoutput

r = remote("keygenme.ctfcompetition.com", 1337)
while True:
    x = r.recvline()[:-1]
    log.info(x)

    t = getoutput("python ./run.py %s 00000000000000000000000000000000" % x).split()
    out = [0] * 16
    for i, c in enumerate(t[0].decode('hex')):
        x = ord(c) ^ (i<<4)
        x ^= i
        out[i] |= x & 0x0f
        out[15-i] |= x & 0xf0

    ans = "".join("%02x" % c for c in out)
    log.success(ans)
    r.sendline(ans)
    log.info(r.recvline())

# CTF{g1mm3_A11_T3h_keyZ}
