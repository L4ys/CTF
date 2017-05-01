#!/usr/bin/env python
# -*- coding: utf-8 -*-

from commands import getoutput
from pwn import *

r = remote("cm2k-witchcraft_5f60e994e19a100de1dee736608d639f.quals.shallweplayaga.me", 12003)

def crack(name):
    ins = getoutput("objdump -M intel -d %s | grep -E '(cmp    rdi|add    rdi,0x|sub    rdi,0x)'" % name).replace(",", " ").split("\n")
    #pprint(ins)
    rdi = 0
    ans = ""
    for i in ins:
        tokens = i.split("\t")[2].split()
        op, val = tokens[0], tokens[2]
        if op == 'add':
            rdi += int(val, 16)
        elif op == 'sub':
            rdi -= int(val, 16)
        elif op == 'cmp':
            c = chr((int(val, 16) - rdi) & 0xff )
            ans += c
            rdi = 0

    return ans

log.info(r.recvline())
while True:
    name = r.recvline()[:-1]
    log.info(name)

    if len(name) != 64:
        break

    ans = crack("./witchcraft_dist/" + name)
    log.success(ans)
    r.sendline(ans.encode('base64').replace("\n", ""))

# The flag is: bustin makes me feel good scengoybEm
