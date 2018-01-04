#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from base64 import b64encode, b64decode

r = remote("bamboofox.cs.nctu.edu.tw", 58789)
token = r.recvline().split()[-1]
code = r.recvline().split()[-1]

# hashpump
r.recvuntil(": ")
r.sendline(b64encode("user=someone\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xc0&user=admin")) 
r.recvuntil(": ")
r.sendline("27913d6e12027ca86e69ab2748be52ed3b21ae046395958ca6a2729376caf814")
print r.recvline()

# BAMBOOFOX{Y0U_H4V3_BECoME_LEA_MAStEr}

