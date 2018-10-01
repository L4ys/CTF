#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from z3 import *

r = remote("210.61.46.46", 5444)
while True:
    log.info(r.recvline())
    xx = int(r.recvline().split()[-1])
    print xx

    x = [BitVec("x_%d" % i, 32) for i in range(4)]

    s = Solver()
    s.add((((x[0] * x[1]) - x[2]) * x[3]) == xx)
    s.add(x[0] <= 0xff)
    s.add(x[1] <= 0xff)
    s.add(x[2] <= 0xff)
    s.add(x[3] <= 0xff)
    s.add(x[0] >= 0)
    s.add(x[1] >= 0)
    s.add(x[2] >= 0)
    s.add(x[3] >= 0)

    assert s.check() == sat

    m = s.model()
    print m
    for i in [m[x[i]].as_long() for i in range(4)]:
        r.sendlineafter(": ", str(i))
    log.info(r.recvline())


r.interactive()
