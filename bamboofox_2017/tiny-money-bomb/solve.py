#!/usr/bin/env python
# -*- coding: utf-8 -*-
import base58 # https://github.com/keis/base58
from pwn import *

from itertools import combinations
from itertools import product

def check(k):
    try:
        base58.b58decode_check(k)
        return True
    except:
        return False

r = remote("bamboofox.cs.nctu.edu.tw", 58787)
log.info(r.recvline())

while True:
    t = r.recvline()
    key = r.recvline()[:-1]
    log.info(key)
    if "50" in t:
        key = key.ljust(51, "A")
        key = base58.b58decode(key)[:33]
        key = base58.b58encode_check(key)

    elif "empty" in t:
        for i in "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz":
            k = key.replace(" ", i)
            if check(k):
                key = k
                break
        
    log.success(key)
    r.sendline(key)

r.interactive()
