#!/usr/bin/env python
# -*- coding: utf-8 -*-

from z3 import *

x = [BitVec("x_%d" % i, 16) for i in range(16)]

s = Solver()
s.add((x[0] ^ 0x4936) + x[10] == 0x7cf5)
s.add((x[1] ^ 0x0fdf) * x[3] * x [4] == 0x3dd8)
s.add((x[2] ^ 0xc7df) + x[7]* x[6] == 0xeb70)
s.add((x[3] ^ 0xc5db) + 0x14aa == 0x500d)
s.add(x[4] * x[15] == 0x7be8)
s.add(x[5] + x[3] + x[6] == 0xdf28)
s.add((x[6] + 0x5432) | 0x3008 == 0x3b78)
s.add(x[7] + 0x1212 == 0x1697)
s.add(x[8] ^ 0x8703 == 0x3136)
s.add((x[10] ^ 0x0a52) + x[9] + 0x4004 == 0x6272)
s.add(x[11] + x[8] == 0x9308)
s.add(x[12] == 0x085b)
s.add((x[13] ^ 0x863c) + 0x1234 == 0x9113)
s.add(x[14] + x[4] + x[9] == 0xf0b8)
s.add((x[15] & 0x0f00) + x[0] == 0x9f94)

assert s.check() == sat

m = s.model()
out = ""
for i in range(16):
    val = m[x[i]]
    if val != None:
        out += "%04X" % (val.as_long())
    else:
        out +="0000"
print out

# This is the flag: th0s3_wh0_l0ok_0nly_to_th3_p4stur3_ar3_cert4in_t0_miss_th3_futur3
