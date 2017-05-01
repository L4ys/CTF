#!/usr/bin/env python
# -*- coding: utf-8 -*-

from commands import getoutput
from pwn import *

r = remote("cm2k-occult_92090ea70651a37c143d1af2ac714445.quals.shallweplayaga.me", 12005)

def crack(name):
    ins = getoutput("objdump -M intel -d %s | grep -E '(add    rsi,0x|sub    rsi,0x|cmp    QWORD PTR \[rax\+0x8\])'" % name).replace(",", " ").split("\n")[1:]
    rsi = 0
    ans = ""

    for i in ins:
        tokens = i.split("\t")[2].split()
        op, val = tokens[0], tokens[-1]
        if op == 'add':
            rsi += int(val, 16)
        elif op == 'sub':
            rsi -= int(val, 16)
        elif op == 'cmp':
            c = chr(((int(val, 16) - rsi) - 1) / 2 & 0xff )
            ans += c
            rsi = 0
    return ans[::-1]

log.info(r.recvline())
while True:
    name = r.recvline()[:-1]
    log.info(name)

    if len(name) != 64:
        break

    ans = crack("./occult_dist/" + name)
    log.success(ans)
    r.sendline(ans.encode('base64').replace("\n", ""))

# The flag is: xenoanthropology UtFafEigBu
