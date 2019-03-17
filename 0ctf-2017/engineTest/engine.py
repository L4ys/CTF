#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *

cp = []
ip = []
op = []
cp_idx = []
mem = None

def get_n_bit(idx):
    return (mem[idx >> 6] >> (idx & 63)) & 1

def set_n_bit(idx, val):
    if val:
        v = mem[idx >> 6] | (1 << (idx & 63))
    else:
        v = mem[idx >> 6] & ~(1 << (idx & 63))
    mem[idx >> 6] = v

def Init():
    with open("./cp") as f:
        mem_size = u64(f.read(8))
        global mem
        mem = [0] * ((mem_size + 63) / 64)
        mem[0] = 2
        print hex(len(mem) * 64)

        for i in range(u64(f.read(8))):
            cp.append([u64(f.read(8)), u64(f.read(8)), u64(f.read(8)), u64(f.read(8)), u64(f.read(8))])

    with open("./idx") as f:
        for i in range(len(cp)):
            cp_idx.append(u64(f.read(8)))

    with open("./ip") as f:
        for i in range(u64(f.read(8))):
            ip.append(u64(f.read(8)))

    with open("./op") as f:
        for i in range(u64(f.read(8))):
            op.append(u64(f.read(8)))

def RunCP():
    for i in range(len(cp)):
        j = cp_idx[i]
        _type = cp[j][0]
        src1 = cp[j][1]
        src2 = cp[j][2]
        src3 = cp[j][3]
        dst = cp[j][4]

        if _type == 1:
            r = get_n_bit(src1) & get_n_bit(src2)
            print "mem[0x%x] = mem[0x%x] & mem[0x%x]" % (dst, src1,src2)
        elif _type == 2:
            r = get_n_bit(src1) | get_n_bit(src2)
            print "mem[0x%x] = mem[0x%x] | mem[0x%x]" % (dst, src1,src2)
        elif _type == 3:
            r = get_n_bit(src1) != get_n_bit(src2)
            print "mem[0x%x]= mem[0x%x] ! mem[0x%x]" % (dst, src1,src2)
        elif _type == 4:
            r = get_n_bit(src2) if get_n_bit(src1) else get_n_bit(src3)
            print "mem[0x%x]= mem[0x%x] ? mem[0x%x] : mem[0x%x]" % (dst, src1,src2,src3)
        
        set_n_bit(dst, r)

if __name__ == "__main__":
    Init()
    
    # read input
    for i in range(len(ip)):
        if i % 7 == 0:
            c = ord(sys.stdin.read(1))
        set_n_bit(ip[i], c & 1)
        c >>= 1

    RunCP()
    
    # write output
    c = 0
    for i in range(len(op)):
        if i & 7 == 0:
            c = 0

        v = get_n_bit(op[i])
        c |= v << ( i & 7 )
        if (i & 7) == 7:
            sys.stdout.write(chr(c))

