#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *

code = open("./code")
num = u32(code.read(4))
print num

for i in range(num):
    op  = u32(code.read(4))
    reg = u32(code.read(4))
    n1  = u32(code.read(4))
    n2  = u32(code.read(4))
    
    print "%04X:" % i,

    if op == 0:
        print "REG[%02d]++, JMP %04X" % (reg, n1)
    elif op == 1:
        print "IF REG[%02d], JMP %04X, --REG[%02d] ELSE JMP %04X" % (reg, n1, reg, n2)
    elif op == 2:
        print ",".join("REG[%02d]" % i for i in range(reg)), "=", "CALL %04X, RET TO %04X" % (n1, n2)
