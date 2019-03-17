#!/usr/bin/env python
# -*- coding: utf-8 -*-
seed = [0] * 32
seed[0]=0x46ca
seed[1]=0x4187
seed[2]=0x5582
seed[3]=0x5e51
seed[4]=0x56e1
seed[5]=0x56e1
seed[6]=0x56e1
seed[7]=0x6666
seed[8]=0x3674
seed[9]=0x367a
seed[10]=0x3668
seed[11]=0x3670
seed[12]=0x3670
seed[13]=0x366e
seed[14]=0x3645
seed[15]=0x29c1
seed[16]=0x15aa
seed[17]=0x158b
seed[18]=0x1599
seed[19]=0x15b9
seed[20]=0x15b4
seed[21]=0x15b8
seed[22]=0x15cd
seed[23]=0x15cd
seed[24]=0x410d
seed[25]=0x4114
seed[26]=0x4109
seed[27]=0x4135
seed[28]=0x4136
seed[29]=0x4109
seed[30]=0x409b
seed[31]=0x409b
out = ""
for j in range(8):
    for i in range(4):
        c = seed[i*8+j] ^ 0x6666
        if i == 0:
            c /= 123
        elif i == 1:
            c -= (0x4fa0 + j)
        elif i == 2:
            c ^= 0x73ab
        elif i == 3:
            c -= 0x26fd
        out += chr(c)
print out
