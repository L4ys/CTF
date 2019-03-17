#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from cStringIO import StringIO

code = open("./rolling_a95a97a31f0683ff4a3f0cd00a5b41d95ff3497f75c91ec74b5f00356adcfb17.exe", "rb").read()[0x001EE00+0x40:0x001EE00+0x40+69836]

flag = False
ins_name = {
    0: "halt",
    1: "cmp",
    2: "add",
    3: "sub",
    4: "mul",
    5: "div",
    6: "inc",
    7: "dec",
    8: "xor",
    9: "and",
    10: "push",
    11: "call",
    12: "pop",
    13: "mov",
    14: "read",
    15: "write",
    16: "loop",
    17: "jne",
    18: "je",
    19: "j?",
    20: "io++",
    21: "io--",
}

regs = {
    0: "r0",
    1: "r1",
    2: "r2",
    3: "r3",
    4: "r4"
}

io = 0
pc = 0
sp = 80
stack = [0] * 1000

while True:
    #if op not in [20,21]:
    #    print "[0x%04X]" % pc,
    ins = ord(code[pc]) + 0x2b
    op = ins & 0xff
    #print op
    #print hex(op), ins_name[op]

    idx1 = ord(code[pc+1]) >> 4
    idx2 = ord(code[pc+1]) & 0xf

    if op == 0: 
        print "s.add(",
    elif op == 1: 
        #print "cmp"
        pass
    elif op == 2: 
        pass
        #print "%s += %s" % (regs[idx1], regs[idx2])
    elif op == 3: 
        print "%s -= %s" % (regs[idx1], regs[idx2])
    elif op == 4: 
        #print "%s *= %s" % (regs[idx1], regs[idx2])
        pass
    elif op == 5: 
        print "%s /= %s" % (regs[idx1], regs[idx2])
    elif op == 6:
        print "%s ++" % (regs[idx1])
    elif op == 7: 
        print "%s -= %s" % (regs[idx1], regs[idx2])
    elif op == 8: 
        #print "%s ^= %s" % (regs[idx1], regs[idx2])
        pass
    elif op == 9: 
        print "%s &= %s" % (regs[idx1], regs[idx2])
    elif op == 10:
        print  "push"
    elif op == 11:
        v1 = ord(code[pc+1])
        v16 = (v1 << 24) + (ord(code[pc+2]) << 16) + ord(code[pc+4]);
        v17 = ord(code[pc +3]) << 8;
        if flag:
            print "* 0x%02x + " %  (v16+v17),
            flag = False
        else:
            print  "== 0x%02X)" % (v16+v17)
    elif op == 12:
        pass
        #print "pop %s" % regs[idx1]
    elif op == 13:
        print  "mov"
    elif op == 14:
        #print  "read %s (%d)" % (regs[idx1], io)
        print "flag[%d]" % io,
        flag = True
    elif op == 15:
        print  "write"
    elif op == 16:
        print  "loop"
    elif op == 17:
        print  "jne"
    elif op == 18:
        print  "je"
    elif op == 19:
        #print  "j?"
        pass
    elif op == 20:
        io += 1
        #print  "io++ (%d)" % io
    elif op == 21:
        io -= 1
        #print  "io-- (%d)" % io
    else:
        print "unknown op: %d" % op


    if op == 0:
        pc += 1
    elif op == 11:
        pc += 5
    elif op == 20 or op == 21:
        pc += 1
    else:
        pc += 2
