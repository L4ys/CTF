#!/usr/bin/env python
# -*- coding: utf-8 -*-

from commands import getoutput
from pwn import *

r = remote("cm2k-sorcery_13de8e6bf26e435fc43efaf46b488eae.quals.shallweplayaga.me", 12002)

def crack(name):
    c = (getoutput("objdump -M intel -d ./%s | grep 'cmp    .l,0x' " % name).split("\n"))
    ans = "".join([chr(int(i, 16)) for i in [x.split(",")[1] for x in c]])
    for i, c in enumerate(ans):
        if ord(c) < ord(' ') or ord(c) > ord('~'):
            ans = ans[:i]
    return ans[:80]

log.info(r.recvline())
while True:
    name = r.recvline()[:-1]
    log.info(name)

    if len(name) != 64:
        break

    ans = crack(name)
    log.success(ans)
    r.sendline(ans.encode('base64').replace("\n", ""))

# The flag is: don't forget me when you're famous Klousovnec
