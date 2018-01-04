#!/usr/bin/env python
# -*- coding: utf-8 -*-
from base64 import b64encode, b64decode
from itertools import product
from pwn import *
import string

r = remote("bamboofox.cs.nctu.edu.tw", 58791)

# pow
postfix, sha = re.findall("SHA256\(XXXX \+ (.+)\) == (.+)", r.recvline()[:-1])[0]

l = product(string.ascii_letters + string.digits, repeat=4)
for XXXX in l:
    XXXX = "".join(XXXX)
    if sha256sumhex(XXXX + postfix) == sha:
        log.success("pow = " + XXXX)
        break

r.sendlineafter("Give me XXXX:", XXXX)

token = r.recvline().split()[-1]
code = r.recvline().split()[-1]

token = b64decode(token)

# bit flip + break unpad
append = 'STARWSY849AAAAAA' + token[16:]
r.sendlineafter("input your token: ", b64encode(token + append))
r.sendlineafter("input your authentication code: ", sha256sumhex(""))

r.interactive()

# BAMBOOFOX{IT'S_AcTUA1ly_JUsT_MEsSlNg_WiTH_P4DD1NG}
