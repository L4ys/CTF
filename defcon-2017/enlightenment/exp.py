#!/usr/bin/env python
# -*- coding: utf-8 -*-

from commands import getoutput
from pwn import *
from pprint import pprint

ldd = lambda name: getoutput("ldd %s" % name)
r = remote("cm2k-enlightenment_4ee3a7c97ce496cde9bdf905843cf0f1.quals.shallweplayaga.me", 12999)

def crack(name):
    if "libswiftCore.so" in ldd(name): # witch
        print "swift"
        ins = getoutput("objdump -M intel -d %s | grep -E '(cmp    rdi|add    rdi,0x|sub    rdi,0x)'" % name).replace(",", " ").split("\n")
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
    elif "libchicken.so.7" in ldd(name): # occ
        print "chicken"
        ins = getoutput("objdump -M intel -d %s | grep -E '(lea    rsi,\[r[cd]x.0x.*\]|cmp    QWORD PTR \[rax\+0x8\])'" % name).replace(",", " ").split("\n")[1:]
        rsi = 0
        ans = ""
        for i in ins:
            tokens = i.split("\t")[2].split()
            op, val = tokens[0], tokens[-1].replace("]", "")
            if op == 'lea':
                rsi += int(val[4:], 16)
            elif op == 'cmp':
                c = chr(((int(val, 16) - rsi) - 1) / 2 & 0xff )
                ans += c
                rsi = 0
        return ans[::-1]
    elif "libdl.so.2" in ldd(name): # ach
        print "libevent"
        c = getoutput("objdump -M intel -d %s | grep -E 'cmp    r.x,0x..$' | grep -v 0e | awk '{print $5}'" % name).replace(",", " ").split("\n")
        ans = "".join([chr(int(i, 16)) for i in c])
        for i, c in enumerate(ans):
            if ord(c) < ord(' ') or ord(c) > ord('~'):
                ans = ans[:i]
        return ans[:80]
    elif "libpthread.so.0" in ldd(name): # sor
        print "rust"
        c = (getoutput("objdump -M intel -d ./%s | grep 'cmp    .l,0x..$' " % name).split("\n"))
        ans = "".join([chr(int(i, 16)) for i in [x.split(",")[1] for x in c]])
        for i, c in enumerate(ans):
            if ord(c) < ord(' ') or ord(c) > ord('~'):
                ans = ans[:i]

        return ans[:80]
    else: # normal
        print "normal"
        c = (getoutput("objdump -M intel -d ./%s | grep 'cmp    rdi,' | awk '{print $5}'" % name).split("\n"))
        ans = "".join([chr(int(i, 16)) for i in c])
        return ans

log.info(r.recvline())
while True:
    name = r.recvline()[:-1]
    log.info(name)

    if len(name) != 64:
        break

    ans = crack("./enlightenment_dist/" + name) + "\n"
    log.success(ans)
    r.sendline(ans.encode('base64').replace("\n", ""))

# The flag is: you got no fear of the underdog Keekviv3
