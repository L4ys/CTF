#!/usr/bin/env python
# -*- coding: utf-8 -*-
from z3 import *
from ctypes import *

input = [BitVec("input_%d" % i, 32) for i in range(10)]
s = Solver()

xmm0 = input[0];
xmm1 = xmm0;
xmm3 = 0xFFFFFFFF;
xmm1 ^= xmm3;
xmm1 &= 0xDFDFDFDF;
xmm0 &= 0x20202020;
xmm0 |= xmm1;
xmm0 ^= 0x93a8cc52;
xmm0 &= xmm3;
s.add(xmm0 == 0)

xmm2 = xmm1 = input[1];
xmm2 ^= xmm3;
xmm2 &= 0xa5a5a5a5;
xmm1 &= 0x5a5a5a5a;
xmm1|= xmm2;
xmm1 ^= 0x93dd26ab;
xmm1 &= xmm3;
s.add(xmm1 == 0)

xmm0 = xmm2 = input[2];
xmm0 &= 0xeb9f52fb;
xmm2 ^= xmm3;
xmm2 &= 0x1460ad04;
xmm2|= xmm0;
xmm2 &= xmm3;
s.add(xmm2 == 0)

xmm0 = xmm1 = input[3];
xmm1 ^= xmm3;
xmm1 &= 0xeaeaeaea;
xmm0 &= 0x15151515;
xmm0|= xmm1;
xmm0 ^= 0x3094b95f;
xmm0 &= xmm3;
s.add(xmm0 == 0)

xmm2 = xmm1 = input[4];
xmm2 ^= xmm3;
xmm2 &= 0x39393939;
xmm1 &= 0xc6c6c6c6;
xmm1|= xmm2;
xmm1 ^= 0xa9218610;
xmm1 &= xmm3;
s.add(xmm1 == 0)

xmm2 = xmm0 = input[5];
xmm2 ^= xmm3;
xmm2 &= 0x83838383;
xmm0 &= 0x7c7c7c7c;
xmm0|= xmm2;
xmm0 ^= 0xd24e79b3;
xmm0 &= xmm3;
s.add(xmm0 == 0)

xmm2 = xmm1 = input[6];
xmm2 ^= xmm3;
xmm2 &= 0x12121212;
xmm1 &= 0xedededed;
xmm1|= xmm2;
xmm1 ^= 0x37143a2e;
xmm1 &= xmm3;
s.add(xmm1 == 0)

xmm2 = xmm0 = input[7];
xmm2 ^= xmm3;
xmm2 &= 0xf7f7f7f7;
xmm0 &= 0x08080808;
xmm0|= xmm2;
xmm0 ^= 0x4b6c87cd;
xmm0 &= xmm3;
s.add(xmm0 == 0)

xmm2 = xmm1 = input[8];
xmm2 &= 0xc690662a;
xmm1 ^= xmm3;
xmm1 &= 0x396f99d5;
xmm1|= xmm2;
xmm1 &= xmm3;
s.add(xmm1 == 0)

xmm2 = xmm0 = input[9];
xmm2 &= 0x91642340;
xmm0 ^= xmm3;
xmm0 &= 0x6e9bdcbf;
xmm0|= xmm2;
xmm0 &= xmm3;
s.add(xmm0 == 0)

assert s.check() == sat

m = s.model()
v = [(m[input[i]].as_long()) for i in range(10)]

def decrypt(v):
    v71 = c_uint32(0x261e57dd)
    v91 = c_uint32(0xc34065e8)
    v0 = c_uint32(v[0])
    v1 = c_uint32(v[1])

    for i in range(38):
          v71.value = v0.value - (0xDFEA1844 - (v91.value - 0x2015E7BC));
          v1.value -= ((0x1F6C2E99 - (v0.value >> 5)) & 0x117C66CB | ((v0.value >> 5) + 0x6093D166) & 0x4E839934) ^ v71.value ^ ((0xAA24CDB4 - 16 * v0.value) & 0xD3014E14 | (16 * v0.value + 0x15DB324B) & 0x2CFEB1E3) ^ 0x627D28D7;
          v91.value -= 0x2015E7BC;
          v0.value -= ( ((0xC8D4542C - (v1.value >> 5)) & 0x8F2F078 | ((v1.value >> 5) + 0x372BABD3) & 0x370D0F87) ) ^ ( (v1.value - (0xDFEA1844 - v91.value)) ^ ((0x28CB73A0 - v1.value * 16) & 0x8F2F070 | (v1.value * 16 - 0x28CB73A1) & 0xF70D0F87) );
    return (v0.value, v1.value)

flag = ""
for i in range(0, 10, 2):
    p = decrypt((v[i], v[i+1]))
    flag += ("%08x" % p[0]).decode('hex')[::-1]
    flag += ("%08x" % p[1]).decode('hex')[::-1]
print flag



