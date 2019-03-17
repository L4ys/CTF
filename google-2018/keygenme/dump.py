#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
with open("./main", "rb") as f:
    f.seek(0x1bc)
    b = f.read(0x44a8)

    open("bin", "wb").write(xor(b, "\x88\x77\x66\x55\x44\x33\x22\x11"))

