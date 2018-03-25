#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
from Crypto.Cipher import AES

with open("CrackMe.txt") as f:
    IV = f.read(16)
    data = f.read()

    c = AES.new(key=p32(0xF6524442)*4, mode=AES.MODE_CBC, IV=IV)
    print c.decrypt(data)


