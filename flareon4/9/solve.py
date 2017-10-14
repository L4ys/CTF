#!/usr/bin/env python
# -*- coding: utf-8 -*-
from ctypes import *

for b in range(0xff+1):
    out = ""
    for i, x in enumerate("B5B586B4F4B3F1B0B0F1ED80BB8FBF8DC68587C094818C".decode("hex")):
        c = c_uint8(ord(x) ^ b)
        c.value += i
        out += chr(c.value)

    if ord(out[10]) == 0x40:
        print out
        break


