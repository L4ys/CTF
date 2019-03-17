#!/usr/bin/env python
# -*- coding: utf-8 -*-

from commands import getoutput
from pwn import *

r = remote("cm2k-alchemy_c745e862098878b8052e1e9588c59bff.quals.shallweplayaga.me", 12004)

def crack(name):
    c = getoutput("objdump -M intel -d %s | grep -E 'cmp    r.x,0x..$' | grep -v 0e | awk '{print $5}'" % name).replace(",", " ").split("\n")
    ans = "".join([chr(int(i, 16)) for i in c])
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
    ans = crack("./alchemy_dist/" + name)
    log.success(ans)
    r.sendline(ans.encode('base64').replace("\n", ""))

# The flag is: end of the world sun clyigujheo
