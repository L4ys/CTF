#!/usr/bin/env python
# -*- coding: utf-8 -*-

from commands import getoutput
from pwn import *

r = remote("cm2k-magic_b46299df0752c152a8e0c5f0a9e5b8f0.quals.shallweplayaga.me", 12001)

def crack(name):
    c = (getoutput("objdump -M intel -d ./%s | grep 'cmp    rdi,' | awk '{print $5}'" % name).split("\n"))
    ans = "".join([chr(int(i, 16)) for i in c])
    return ans

log.info(r.recvline())
while True:
    name = r.recvline()[:-1]
    log.info(name)

    if len(name) != 64:
        break

    ans = crack("./magic_dist/" + name)
    log.success(ans)
    r.sendline(name.encode('base64').replace("\n", ""))

# The flag is: a color map of the sun sokemsUbif
