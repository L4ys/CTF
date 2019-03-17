#!/usr/bin/env python
# -*- coding: utf-8 -*-
from z3 import *

x = [BitVec("x_%d" % i, 8) for i in range(19)]

s = Solver()
for i in range(19):
    s.add(x[i] >= ord(' '))
    s.add(x[i] <= ord('~'))

s.add(x[4] == ord('-'))
s.add(x[9] == ord('-'))
s.add(x[14] == ord('-'))
s.add(x[0] == x[10])
s.add(x[2] == x[15])
s.add(x[1] == x[5])
s.add(x[16] == x[17])
s.add((x[15]+1) == x[18])
s.add((x[11]+9) == x[12])
s.add((x[13]-1) == x[12])
s.add(x[16] == ord('0'))
s.add((x[2] ^ x[17]) == 0x7d)
s.add(x[3] == x[8])
s.add(x[15]^x[0] == 4)

s.add(x[5] == ord('4'))
s.add(x[6] == ord('4'))
s.add(x[7] == ord('4'))
s.add(x[8] == ord('4'))

s.add((x[11] ^ x[7]) == 0x78)


assert s.check() == sat

m = s.model()
print m
print "".join([chr(m[x[i]].as_long()) for i in range(19)])
