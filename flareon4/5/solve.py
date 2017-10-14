#!/usr/bin/env python
# -*- coding: utf-8 -*-
from struct import unpack
u64 = lambda x: unpack("<Q", x)[0]

def rand(x):
    return (0x41C64E6D * x + 12345)

def Decode(data, seed):
    out = ""
    for i in data:
        seed = rand(seed)
        out += chr(ord(i) ^ (seed&0xff))
    return out

f = open("./pewpewboat.exe")
f.seek(0x50e0)

seed = 0x3b1ee5f6b3d99ff7
for i in range(11):
    data = f.read(576)
    data = Decode(data, seed)

    rank = data[30:56].split("\x00")[0]
    description = data[62:].split("\x00")[0]
    print "Rank:", rank
    print "description:", description

    target = bin(u64(data[:8]))[2:].rjust(64,'0')[::-1]
    pos = []
    print i
    for i,b in enumerate(target):
        if b == '1':
            x = i % 8 + 1
            y = "ABCDEFGH"[i // 8]
            pos.append((y, str(x)))

    for y in "ABCDEFGH":
        for x in "123456789":
            if (y,x) in pos:
                print "X",
            else:
                print "_",
        print 

    seed = u64(data[16:24])
    for p in pos:
        seed += 1427 * ord(p[1]) + 7681 * ord(p[0]) + ord(p[0]) * ord(p[1]) + 5281

print "".join("FHGUZREJVO"[i] for  i in [9, 1, 2, 7, 3, 5, 6, 5, 8, 0, 2, 3, 5, 6, 1, 4]).decode('rot13')

# y0u__sUnK_mY__P3Wp3w_b04t@flare-on.com

