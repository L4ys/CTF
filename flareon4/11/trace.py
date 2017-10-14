#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *
from ctypes import *
import random
import sys
data = []

with open("./covfefe.exe") as f:
    f.seek(0xa08)
    for i in range(4478):
        data.append(c_int32(u32(f.read(4))).value)

data[273] = random.randint(0,0xffffffff) % data[272]
def run(size, i):
    def do(i, j, next):
        val = c_int32(data[j])
        val.value -= data[i]
        data[j] = val.value
        if next:
            return data[j] <= 0
        return 0

    while i <= size - 3:
        idx1 = data[i]
        idx2 = data[i+1]
        next = data[i+2]
        print "%04X: %04X(%6X) %04X(%6X)|%04X" % (i,idx1,data[idx1],idx2,data[idx2],next),
        
        if idx1 == idx2 == 0 and next:
            print "; JMP %X" % next
        elif idx1 == idx2:
            if idx1 == 2:
                print "; out = 0"
            elif idx1 == 1:
                print "; in = 0"
            else:
                print "; [%x] = 0" % idx1
        elif idx1 == 0 and idx2 == 4 and data[idx1] == -1:
            print "; write = 1"
        elif idx1 == 0 and idx2 == 3 and data[idx1] == -1:
            print "; read = 1"
        elif idx2 == 2:
            print "; out = '%c'" % (-data[idx1])
        elif next:
                print "; if [%x] >= [%x], JMP %04X else %04X" % (idx1, idx2, next, i+3)
        else:
            print "; [%x] -= [%x] (%x) -> %x" %(idx2, idx1, data[idx1], data[idx2]-data[idx1])

        if do(idx1, idx2, next):
            #data[0xead] = 1
            if next == -1:
                return
            i = next
        else:
            i += 3

        if data[4] == 1:
            sys.stderr.write(chr(data[2]))
            data[4] = 0
            data[2] = 0
        if data[3] == 1:
            data[1] = ord(sys.stdin.read(1))
            data[3] = 0

run(4352,1123)

