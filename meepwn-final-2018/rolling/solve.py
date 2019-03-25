#!/usr/bin/env python
# -*- coding: utf-8 -*-
from z3 import *

flag = [BitVec("x_%d" % i, 8) for i in range(50)]

s = Solver()


for i in range(41):
    s.add(flag[i] >= ord(' '))
    s.add(flag[i] <= ord('~'))

for i,c in enumerate("MeePwnCTF{"):
    s.add(flag[i] == ord(c))

s.add( flag[16] * 0x2f +  flag[12] * 0xfd +  flag[20] * 0xf7 +  flag[1] * 0xcb +  flag[35] * 0x58 +  flag[15] * 0xca +  flag[39] * 0xd6 +  flag[11] * 0x63 +  flag[32] * 0x51 +  flag[6] * 0x80 +  flag[9] * 0xa0 +  flag[27] * 0x74 +  flag[3] * 0xcf +  flag[17] * 0x27 +  flag[36] * 0xc4 +  flag[28] * 0xd2 +  flag[2] * 0xaf +  flag[4] * 0x76 +  flag[33] * 0xfd +  flag[22] * 0xef +  flag[31] * 0x79 +  flag[21] * 0x86 +  flag[37] * 0xda +  flag[25] * 0x3f +  flag[23] * 0xfd +  flag[26] * 0x04 +  flag[24] * 0x64 +  flag[14] * 0xdb +  flag[8] * 0xcf +  flag[19] * 0xc4 +  flag[5] * 0xb0 +  flag[10] * 0xac +  flag[40] * 0x71 +  flag[38] * 0xec +  flag[0] * 0x2d +  flag[30] * 0x60 +  flag[29] * 0x6a +  flag[7] * 0xc6 +  flag[18] * 0x24 +  flag[34] * 0x79 +  flag[13] * 0x1c == 0x7E6BB)
s.add( flag[38] * 0x1a +  flag[32] * 0x8f +  flag[19] * 0x1b +  flag[31] * 0xa0 +  flag[26] * 0x1c +  flag[30] * 0x76 +  flag[20] * 0x84 +  flag[18] * 0x39 +  flag[4] * 0x63 +  flag[0] * 0xe5 +  flag[8] * 0x8e +  flag[36] * 0xd8 +  flag[23] * 0x75 +  flag[35] * 0x66 +  flag[33] * 0xcd +  flag[6] * 0xec +  flag[14] * 0x42 +  flag[25] * 0xba +  flag[22] * 0x31 +  flag[29] * 0x5c +  flag[21] * 0x76 +  flag[37] * 0x99 +  flag[24] * 0xe9 +  flag[5] * 0xba +  flag[2] * 0x8d +  flag[17] * 0xfa +  flag[1] * 0x6e +  flag[13] * 0xf7 +  flag[11] * 0x13 +  flag[28] * 0xa6 +  flag[15] * 0xf0 +  flag[9] * 0xe2 +  flag[3] * 0x15 +  flag[12] * 0x1e +  flag[40] * 0xab +  flag[27] * 0x9f +  flag[34] * 0x46 +  flag[16] * 0x59 +  flag[7] * 0x78 +  flag[39] * 0xe7 +  flag[10] * 0x57 == 0x75556)
s.add( flag[34] * 0xbd +  flag[21] * 0xf1 +  flag[2] * 0x56 +  flag[25] * 0xc9 +  flag[3] * 0x8a +  flag[4] * 0xb6 +  flag[17] * 0x7f +  flag[18] * 0x6a +  flag[5] * 0x11 +  flag[37] * 0x62 +  flag[31] * 0xf2 +  flag[29] * 0xee +  flag[38] * 0xf7 +  flag[20] * 0xa4 +  flag[33] * 0xea +  flag[39] * 0xe5 +  flag[32] * 0x8c +  flag[40] * 0xc3 +  flag[11] * 0xdc +  flag[22] * 0xc0 +  flag[26] * 0xa4 +  flag[19] * 0x53 +  flag[8] * 0xf1 +  flag[9] * 0xd3 +  flag[6] * 0x7c +  flag[24] * 0x5d +  flag[27] * 0x7a +  flag[36] * 0x41 +  flag[13] * 0x66 +  flag[10] * 0xa6 +  flag[16] * 0xc4 +  flag[15] * 0xa8 +  flag[14] * 0xef +  flag[28] * 0x31 +  flag[30] * 0x86 +  flag[1] * 0xef +  flag[35] * 0x36 +  flag[0] * 0x68 +  flag[12] * 0xa1 +  flag[23] * 0x76 +  flag[7] * 0xbd == 0x8A4D5)
s.add( flag[17] * 0x03 +  flag[15] * 0xb0 +  flag[5] * 0xff +  flag[4] * 0x61 +  flag[32] * 0x1f +  flag[20] * 0xec +  flag[19] * 0x38 +  flag[24] * 0xbe +  flag[8] * 0x3c +  flag[10] * 0x20 +  flag[16] * 0xea +  flag[29] * 0x57 +  flag[21] * 0x75 +  flag[0] * 0xcb +  flag[28] * 0x21 +  flag[13] * 0xbe +  flag[3] * 0x6c +  flag[31] * 0x7a +  flag[18] * 0x7c +  flag[6] * 0x7d +  flag[7] * 0x26 +  flag[22] * 0xb4 +  flag[12] * 0xc5 +  flag[36] * 0x50 +  flag[9] * 0x33 +  flag[27] * 0xdf +  flag[25] * 0x68 +  flag[34] * 0x94 +  flag[14] * 0x27 +  flag[30] * 0x13 +  flag[38] * 0x7b +  flag[23] * 0x94 +  flag[26] * 0xe1 +  flag[35] * 0x57 +  flag[33] * 0x9d +  flag[2] * 0xdd +  flag[37] * 0x13 +  flag[39] * 0xcb +  flag[40] * 0xab +  flag[11] * 0xe0 +  flag[1] * 0x3a == 0x6DD5F)
s.add( flag[23] * 0x67 +  flag[21] * 0x6a +  flag[39] * 0x6e +  flag[25] * 0xd0 +  flag[37] * 0x07 +  flag[27] * 0x66 +  flag[7] * 0x30 +  flag[4] * 0x18 +  flag[10] * 0x01 +  flag[40] * 0xa0 +  flag[32] * 0x06 +  flag[38] * 0x81 +  flag[34] * 0x2f +  flag[3] * 0xdf +  flag[8] * 0x50 +  flag[33] * 0x4f +  flag[12] * 0x0a +  flag[35] * 0x3f +  flag[5] * 0x42 +  flag[22] * 0xa6 +  flag[9] * 0x65 +  flag[13] * 0x9b +  flag[15] * 0x07 +  flag[11] * 0xea +  flag[31] * 0x2f +  flag[2] * 0xa1 +  flag[36] * 0x2e +  flag[26] * 0x75 +  flag[6] * 0x79 +  flag[17] * 0xe8 +  flag[1] * 0x9c +  flag[19] * 0x65 +  flag[0] * 0x97 +  flag[28] * 0x0b +  flag[14] * 0xff +  flag[29] * 0x9e +  flag[20] * 0xfd +  flag[24] * 0x7d +  flag[30] * 0xbc +  flag[16] * 0x21 +  flag[18] * 0x69 == 0x5CA69)
s.add( flag[15] * 0xd6 +  flag[5] * 0xd9 +  flag[20] * 0x67 +  flag[18] * 0x04 +  flag[38] * 0x64 +  flag[23] * 0x79 +  flag[32] * 0x88 +  flag[9] * 0x81 +  flag[39] * 0x1d +  flag[29] * 0x52 +  flag[35] * 0xdc +  flag[10] * 0x19 +  flag[4] * 0x30 +  flag[25] * 0x41 +  flag[17] * 0x37 +  flag[16] * 0x01 +  flag[24] * 0xe9 +  flag[7] * 0x13 +  flag[8] * 0x11 +  flag[40] * 0x8c +  flag[12] * 0xe4 +  flag[31] * 0x19 +  flag[22] * 0x9e +  flag[36] * 0xa3 +  flag[3] * 0xe2 +  flag[26] * 0xcf +  flag[2] * 0xc3 +  flag[28] * 0x2e +  flag[6] * 0x56 +  flag[34] * 0x0c +  flag[37] * 0x31 +  flag[30] * 0x7d +  flag[33] * 0x8e +  flag[13] * 0x1f +  flag[27] * 0x86 +  flag[0] * 0x60 +  flag[19] * 0xd2 +  flag[21] * 0x0e +  flag[11] * 0x8d +  flag[1] * 0x3d +  flag[14] * 0x94 == 0x5DC27)
s.add( flag[27] * 0xe6 +  flag[8] * 0x39 +  flag[10] * 0x83 +  flag[33] * 0xae +  flag[29] * 0x63 +  flag[35] * 0xaf +  flag[14] * 0x3c +  flag[39] * 0x23 +  flag[24] * 0x15 +  flag[0] * 0xdf +  flag[6] * 0x98 +  flag[3] * 0xdd +  flag[36] * 0x24 +  flag[28] * 0xd4 +  flag[21] * 0x10 +  flag[15] * 0xfe +  flag[18] * 0xb5 +  flag[16] * 0xef +  flag[13] * 0x3d +  flag[23] * 0xe8 +  flag[40] * 0x8c +  flag[17] * 0x9d +  flag[22] * 0x1a +  flag[20] * 0x4e +  flag[37] * 0x34 +  flag[4] * 0x2f +  flag[12] * 0xf6 +  flag[7] * 0x84 +  flag[32] * 0xae +  flag[34] * 0x6d +  flag[19] * 0x6f +  flag[2] * 0xf8 +  flag[11] * 0x6e +  flag[30] * 0xae +  flag[1] * 0xbe +  flag[9] * 0x84 +  flag[38] * 0x0c +  flag[31] * 0x95 +  flag[25] * 0xf3 +  flag[26] * 0xb2 +  flag[5] * 0xb2 == 0x75F7E)
s.add( flag[20] * 0x75 +  flag[36] * 0x03 +  flag[27] * 0x86 +  flag[23] * 0xe2 +  flag[1] * 0x5a +  flag[11] * 0x4c +  flag[25] * 0x12 +  flag[9] * 0x61 +  flag[17] * 0xfb +  flag[38] * 0xdd +  flag[4] * 0x6c +  flag[33] * 0x1e +  flag[28] * 0x2d +  flag[32] * 0x41 +  flag[29] * 0x54 +  flag[3] * 0xc0 +  flag[13] * 0x80 +  flag[26] * 0x46 +  flag[40] * 0x9c +  flag[5] * 0x24 +  flag[15] * 0xdf +  flag[22] * 0x55 +  flag[19] * 0xa2 +  flag[2] * 0x83 +  flag[8] * 0x03 +  flag[6] * 0xe6 +  flag[0] * 0xc7 +  flag[39] * 0x9d +  flag[7] * 0x6e +  flag[30] * 0x4c +  flag[24] * 0xf6 +  flag[37] * 0x86 +  flag[12] * 0x40 +  flag[14] * 0x0e +  flag[35] * 0xb8 +  flag[10] * 0xef +  flag[31] * 0x2e +  flag[18] * 0x86 +  flag[21] * 0xf6 +  flag[34] * 0x08 +  flag[16] * 0x62 == 0x66AD3)
s.add( flag[33] * 0x2e +  flag[2] * 0x34 +  flag[7] * 0xec +  flag[23] * 0xd5 +  flag[38] * 0x25 +  flag[21] * 0x3d +  flag[19] * 0x8f +  flag[3] * 0x62 +  flag[1] * 0x74 +  flag[14] * 0x5e +  flag[36] * 0x53 +  flag[37] * 0x87 +  flag[26] * 0xb1 +  flag[9] * 0x1e +  flag[29] * 0x71 +  flag[0] * 0x68 +  flag[20] * 0x4d +  flag[27] * 0x5f +  flag[32] * 0x36 +  flag[15] * 0xb4 +  flag[40] * 0x1a +  flag[22] * 0xe4 +  flag[25] * 0x39 +  flag[35] * 0xc1 +  flag[13] * 0xad +  flag[10] * 0x99 +  flag[17] * 0xa9 +  flag[31] * 0x96 +  flag[11] * 0x5c +  flag[24] * 0xec +  flag[34] * 0x74 +  flag[16] * 0xe7 +  flag[6] * 0x2f +  flag[8] * 0x71 +  flag[4] * 0x4d +  flag[12] * 0xbe +  flag[18] * 0x35 +  flag[30] * 0xfc +  flag[39] * 0x1f +  flag[28] * 0xfa +  flag[5] * 0x16 == 0x64696)
s.add( flag[10] * 0x6f +  flag[35] * 0x23 +  flag[27] * 0xd9 +  flag[34] * 0xb2 +  flag[38] * 0x18 +  flag[0] * 0xf9 +  flag[28] * 0x89 +  flag[24] * 0xa4 +  flag[15] * 0xf6 +  flag[31] * 0x21 +  flag[9] * 0xec +  flag[26] * 0xc0 +  flag[25] * 0x7f +  flag[23] * 0x9a +  flag[14] * 0x3b +  flag[37] * 0xdd +  flag[19] * 0xac +  flag[6] * 0x8c +  flag[20] * 0xed +  flag[17] * 0x6f +  flag[30] * 0xec +  flag[18] * 0x7f +  flag[2] * 0x6b +  flag[13] * 0x93 +  flag[3] * 0x39 +  flag[12] * 0x93 +  flag[40] * 0x98 +  flag[33] * 0x74 +  flag[21] * 0x2d +  flag[11] * 0x5b +  flag[4] * 0x6e +  flag[22] * 0x84 +  flag[5] * 0xac +  flag[29] * 0xc9 +  flag[39] * 0x2b +  flag[32] * 0x67 +  flag[7] * 0xd9 +  flag[16] * 0x71 +  flag[36] * 0x6b +  flag[1] * 0x12 +  flag[8] * 0xf8 == 0x748DF)
s.add( flag[36] * 0x0b +  flag[23] * 0x50 +  flag[11] * 0x5c +  flag[9] * 0x20 +  flag[2] * 0x34 +  flag[37] * 0x1d +  flag[16] * 0x0b +  flag[21] * 0xe5 +  flag[31] * 0xa0 +  flag[27] * 0x78 +  flag[1] * 0x57 +  flag[12] * 0xe9 +  flag[25] * 0x2a +  flag[24] * 0xd3 +  flag[34] * 0xc7 +  flag[33] * 0xd6 +  flag[40] * 0xc2 +  flag[4] * 0x10 +  flag[14] * 0xbd +  flag[13] * 0x7f +  flag[39] * 0xa4 +  flag[28] * 0xcd +  flag[19] * 0x0f +  flag[35] * 0xc3 +  flag[30] * 0x7a +  flag[15] * 0x61 +  flag[22] * 0x50 +  flag[0] * 0xd1 +  flag[20] * 0x87 +  flag[17] * 0x14 +  flag[18] * 0x75 +  flag[32] * 0xfc +  flag[38] * 0x0f +  flag[29] * 0x3e +  flag[7] * 0x2c +  flag[5] * 0x56 +  flag[8] * 0x0f +  flag[10] * 0xd0 +  flag[26] * 0x32 +  flag[3] * 0x3c +  flag[6] * 0xcb == 0x60F5D)
s.add( flag[17] * 0x3a +  flag[24] * 0x67 +  flag[28] * 0xe4 +  flag[7] * 0xf1 +  flag[1] * 0xab +  flag[30] * 0x92 +  flag[13] * 0xe2 +  flag[23] * 0xa0 +  flag[32] * 0xe3 +  flag[3] * 0x30 +  flag[4] * 0xfd +  flag[11] * 0xec +  flag[25] * 0x8b +  flag[2] * 0x0c +  flag[33] * 0x7f +  flag[34] * 0x33 +  flag[21] * 0x28 +  flag[0] * 0xc0 +  flag[27] * 0x8b +  flag[40] * 0x99 +  flag[15] * 0xfa +  flag[16] * 0xfb +  flag[37] * 0x76 +  flag[31] * 0x67 +  flag[10] * 0x22 +  flag[8] * 0xfc +  flag[20] * 0xc0 +  flag[36] * 0xcf +  flag[6] * 0xf4 +  flag[35] * 0x10 +  flag[9] * 0x2f +  flag[22] * 0x19 +  flag[39] * 0x9a +  flag[38] * 0x0b +  flag[19] * 0x49 +  flag[5] * 0x4a +  flag[26] * 0x94 +  flag[12] * 0x96 +  flag[18] * 0x95 +  flag[29] * 0x94 +  flag[14] * 0xdd == 0x7353C)
#s.add( flag[21] * 0xbd +  flag[36] * 0xc9 +  flag[25] * 0x47 +  flag[34] * 0x5c +  flag[20] * 0xcc +  flag[0] * 0x06 +  flag[28] * 0xe4 +  flag[31] * 0xce +  flag[37] * 0x4e +  flag[10] * 0x59 +  flag[14] * 0x6f +  flag[11] * 0x21 +  flag[24] * 0xe1 +  flag[27] * 0xa0 +  flag[33] * 0x3e +  flag[29] * 0x16 +  flag[26] * 0xac +  flag[39] * 0xf7 +  flag[9] * 0x01 +  flag[32] * 0xdf +  flag[17] * 0xec +  flag[5] * 0x09 +  flag[16] * 0x05 +  flag[38] * 0xb9 +  flag[13] * 0xf2 +  flag[3] * 0x27 +  flag[22] * 0xcf +  flag[40] * 0x16 +  flag[19] * 0x3f +  flag[23] * 0x6a +  flag[6] * 0xcc +  flag[18] * 0x6f +  flag[35] * 0xc2 +  flag[7] * 0xae +  flag[15] * 0xd1 +  flag[8] * 0xda +  flag[12] * 0x78 +  flag[4] * 0x7a +  flag[2] * 0x8b +  flag[1] * 0xaf +  flag[30] * 0x58 == 0x70E3A)
#s.add( flag[25] * 0x95 +  flag[8] * 0xad +  flag[24] * 0x69 +  flag[34] * 0x6a +  flag[22] * 0x15 +  flag[0] * 0x8f +  flag[10] * 0x67 +  flag[32] * 0xa8 +  flag[40] * 0x21 +  flag[30] * 0xbd +  flag[17] * 0x44 +  flag[12] * 0x6e +  flag[38] * 0x33 +  flag[3] * 0x0f +  flag[28] * 0x71 +  flag[37] * 0x2c +  flag[29] * 0xe1 +  flag[35] * 0x12 +  flag[21] * 0x59 +  flag[20] * 0xea +  flag[13] * 0xa6 +  flag[18] * 0x5a +  flag[14] * 0x35 +  flag[15] * 0x64 +  flag[6] * 0x17 +  flag[39] * 0x09 +  flag[11] * 0xe9 +  flag[33] * 0xb9 +  flag[19] * 0x75 +  flag[1] * 0x5b +  flag[27] * 0xcb +  flag[4] * 0xab +  flag[31] * 0xf1 +  flag[9] * 0x1a +  flag[36] * 0x0f +  flag[23] * 0x90 +  flag[5] * 0x40 +  flag[26] * 0xab +  flag[2] * 0x08 +  flag[16] * 0x8c +  flag[7] * 0x1a == 0x5A877)
#s.add( flag[28] * 0xdd +  flag[2] * 0x7a +  flag[19] * 0xfc +  flag[11] * 0xe2 +  flag[26] * 0x66 +  flag[9] * 0xa3 +  flag[3] * 0x33 +  flag[27] * 0x04 +  flag[20] * 0x4c +  flag[12] * 0x5b +  flag[6] * 0xc0 +  flag[35] * 0x2f +  flag[1] * 0xce +  flag[22] * 0x87 +  flag[14] * 0xae +  flag[10] * 0xc3 +  flag[16] * 0xef +  flag[24] * 0xed +  flag[40] * 0x4e +  flag[39] * 0xbb +  flag[34] * 0xea +  flag[30] * 0x71 +  flag[0] * 0xa5 +  flag[21] * 0x82 +  flag[17] * 0xae +  flag[8] * 0xa4 +  flag[36] * 0xb4 +  flag[37] * 0xf5 +  flag[15] * 0xa2 +  flag[25] * 0x8f +  flag[23] * 0x07 +  flag[31] * 0xd9 +  flag[32] * 0x91 +  flag[33] * 0x50 +  flag[7] * 0x72 +  flag[4] * 0xff +  flag[18] * 0x35 +  flag[13] * 0xd5 +  flag[38] * 0xbe +  flag[29] * 0x80 +  flag[5] * 0xb6 == 0x8617C)
#s.add( flag[20] * 0xab +  flag[19] * 0x86 +  flag[17] * 0x20 +  flag[10] * 0x63 +  flag[30] * 0x66 +  flag[35] * 0xd8 +  flag[6] * 0xd1 +  flag[18] * 0x12 +  flag[4] * 0x1c +  flag[34] * 0xf9 +  flag[31] * 0x7d +  flag[37] * 0x5f +  flag[32] * 0x82 +  flag[23] * 0x77 +  flag[36] * 0xe5 +  flag[15] * 0x69 +  flag[3] * 0xd9 +  flag[12] * 0xfb +  flag[22] * 0x31 +  flag[1] * 0xce +  flag[8] * 0x20 +  flag[26] * 0x79 +  flag[25] * 0x39 +  flag[16] * 0x25 +  flag[24] * 0x1a +  flag[29] * 0x4a +  flag[27] * 0x48 +  flag[33] * 0xaa +  flag[7] * 0xb2 +  flag[2] * 0x5e +  flag[28] * 0xd4 +  flag[0] * 0x5a +  flag[9] * 0x23 +  flag[5] * 0x67 +  flag[39] * 0x78 +  flag[21] * 0x6a +  flag[38] * 0xf8 +  flag[11] * 0x71 +  flag[13] * 0x30 +  flag[40] * 0x1f +  flag[14] * 0xb7 == 0x65350)
#s.add( flag[33] * 0xfe +  flag[34] * 0xce +  flag[15] * 0xad +  flag[26] * 0xf0 +  flag[30] * 0x47 +  flag[14] * 0xe9 +  flag[20] * 0xc3 +  flag[0] * 0xb2 +  flag[31] * 0x34 +  flag[37] * 0x73 +  flag[35] * 0xaa +  flag[25] * 0x07 +  flag[32] * 0xe3 +  flag[22] * 0x7c +  flag[17] * 0x72 +  flag[27] * 0x39 +  flag[6] * 0x4a +  flag[23] * 0xc3 +  flag[40] * 0xad +  flag[5] * 0x02 +  flag[10] * 0xf1 +  flag[3] * 0x93 +  flag[1] * 0x48 +  flag[21] * 0x87 +  flag[13] * 0x81 +  flag[8] * 0x3d +  flag[11] * 0x2f +  flag[12] * 0x7e +  flag[19] * 0x05 +  flag[2] * 0x65 +  flag[39] * 0x5f +  flag[38] * 0x41 +  flag[18] * 0x3c +  flag[9] * 0x6c +  flag[36] * 0xc2 +  flag[28] * 0x29 +  flag[24] * 0x1f +  flag[7] * 0xce +  flag[4] * 0xb7 +  flag[29] * 0x4d +  flag[16] * 0xa5 == 0x6899D)
#s.add( flag[8] * 0x3c +  flag[28] * 0x08 +  flag[1] * 0x92 +  flag[24] * 0x1a +  flag[0] * 0x9e +  flag[37] * 0xd6 +  flag[14] * 0x95 +  flag[40] * 0xd4 +  flag[38] * 0x06 +  flag[12] * 0x3b +  flag[4] * 0x61 +  flag[25] * 0x80 +  flag[9] * 0x77 +  flag[6] * 0x0b +  flag[16] * 0xaf +  flag[2] * 0x26 +  flag[21] * 0x71 +  flag[18] * 0x8c +  flag[32] * 0x45 +  flag[27] * 0x82 +  flag[39] * 0xf5 +  flag[5] * 0x5b +  flag[22] * 0x95 +  flag[7] * 0x9f +  flag[19] * 0x8f +  flag[31] * 0xe9 +  flag[23] * 0xac +  flag[11] * 0xd5 +  flag[20] * 0x8a +  flag[15] * 0x51 +  flag[30] * 0x0c +  flag[26] * 0x19 +  flag[33] * 0x95 +  flag[36] * 0x45 +  flag[29] * 0xf3 +  flag[17] * 0x3b +  flag[13] * 0xc8 +  flag[3] * 0xda +  flag[34] * 0x04 +  flag[35] * 0xb1 +  flag[10] * 0x37 == 0x66904)
#s.add( flag[13] * 0x6e +  flag[0] * 0xc8 +  flag[26] * 0xae +  flag[35] * 0x18 +  flag[31] * 0xd6 +  flag[22] * 0x2a +  flag[12] * 0x36 +  flag[39] * 0x19 +  flag[36] * 0x41 +  flag[5] * 0xe3 +  flag[21] * 0x37 +  flag[15] * 0xbf +  flag[25] * 0x2b +  flag[20] * 0x43 +  flag[40] * 0x07 +  flag[8] * 0x15 +  flag[24] * 0x23 +  flag[6] * 0x3f +  flag[14] * 0xc5 +  flag[30] * 0x69 +  flag[28] * 0xd2 +  flag[1] * 0x82 +  flag[17] * 0x67 +  flag[10] * 0xfc +  flag[38] * 0xb7 +  flag[18] * 0xb3 +  flag[7] * 0x99 +  flag[34] * 0xba +  flag[11] * 0xd9 +  flag[9] * 0xa4 +  flag[33] * 0x3d +  flag[37] * 0xe2 +  flag[16] * 0x8b +  flag[3] * 0xc0 +  flag[23] * 0xf2 +  flag[19] * 0xf5 +  flag[29] * 0x46 +  flag[27] * 0x17 +  flag[32] * 0xac +  flag[2] * 0x39 +  flag[4] * 0x83 == 0x68891)
#s.add( flag[0] * 0xc7 +  flag[11] * 0x6b +  flag[37] * 0x36 +  flag[15] * 0x76 +  flag[34] * 0x5d +  flag[23] * 0xc2 +  flag[17] * 0xab +  flag[8] * 0xdc +  flag[21] * 0xa8 +  flag[32] * 0xfc +  flag[14] * 0x1a +  flag[19] * 0x1b +  flag[4] * 0x7b +  flag[7] * 0x16 +  flag[5] * 0x29 +  flag[29] * 0x9d +  flag[27] * 0xd9 +  flag[22] * 0xac +  flag[1] * 0xf5 +  flag[39] * 0x78 +  flag[6] * 0xe9 +  flag[20] * 0x69 +  flag[16] * 0x8b +  flag[28] * 0x01 +  flag[26] * 0x1c +  flag[38] * 0xbb +  flag[24] * 0xdd +  flag[36] * 0x7b +  flag[9] * 0x8b +  flag[40] * 0x2c +  flag[30] * 0x95 +  flag[10] * 0x85 +  flag[31] * 0x15 +  flag[2] * 0x45 +  flag[12] * 0x68 +  flag[25] * 0x93 +  flag[18] * 0x78 +  flag[35] * 0xe0 +  flag[33] * 0x87 +  flag[3] * 0x5d +  flag[13] * 0xe3 == 0x72E64)
#s.add( flag[13] * 0x37 +  flag[31] * 0x77 +  flag[35] * 0xae +  flag[40] * 0xf8 +  flag[30] * 0xbf +  flag[37] * 0x7c +  flag[1] * 0xd8 +  flag[9] * 0xcd +  flag[8] * 0xf2 +  flag[39] * 0x5e +  flag[25] * 0x75 +  flag[5] * 0xc7 +  flag[17] * 0x8b +  flag[12] * 0xe3 +  flag[14] * 0x31 +  flag[3] * 0xbc +  flag[27] * 0x0b +  flag[0] * 0x17 +  flag[21] * 0x25 +  flag[22] * 0xe7 +  flag[36] * 0x5d +  flag[7] * 0x73 +  flag[38] * 0x6b +  flag[15] * 0xca +  flag[23] * 0xa8 +  flag[26] * 0xa9 +  flag[10] * 0x3b +  flag[34] * 0x5f +  flag[20] * 0x39 +  flag[18] * 0x34 +  flag[4] * 0x9a +  flag[11] * 0x10 +  flag[28] * 0x18 +  flag[19] * 0x12 +  flag[6] * 0x3e +  flag[2] * 0x2b +  flag[24] * 0x22 +  flag[33] * 0xb1 +  flag[16] * 0x88 +  flag[29] * 0x7d +  flag[32] * 0x1b == 0x679DF)
#s.add( flag[30] * 0x25 +  flag[25] * 0xa4 +  flag[26] * 0xa0 +  flag[18] * 0xc0 +  flag[2] * 0xe2 +  flag[24] * 0x24 +  flag[37] * 0x23 +  flag[39] * 0xd1 +  flag[16] * 0x8f +  flag[32] * 0xbd +  flag[7] * 0x12 +  flag[40] * 0x01 +  flag[10] * 0x9b +  flag[31] * 0x79 +  flag[6] * 0xc1 +  flag[36] * 0xef +  flag[0] * 0x11 +  flag[35] * 0xc7 +  flag[27] * 0xf5 +  flag[33] * 0x49 +  flag[8] * 0x06 +  flag[17] * 0x75 +  flag[5] * 0xb6 +  flag[22] * 0x6f +  flag[23] * 0x69 +  flag[19] * 0xbc +  flag[9] * 0x50 +  flag[28] * 0xf8 +  flag[34] * 0xf2 +  flag[11] * 0xd8 +  flag[29] * 0x8a +  flag[15] * 0xfb +  flag[13] * 0xbb +  flag[12] * 0xaf +  flag[20] * 0x0b +  flag[14] * 0x62 +  flag[3] * 0x27 +  flag[21] * 0x1d +  flag[1] * 0x37 +  flag[4] * 0x18 +  flag[38] * 0x3f == 0x6C0B7)
#s.add( flag[15] * 0xa5 +  flag[14] * 0xa4 +  flag[6] * 0xc5 +  flag[3] * 0xcd +  flag[40] * 0xe4 +  flag[33] * 0x41 +  flag[9] * 0x11 +  flag[11] * 0xce +  flag[35] * 0xba +  flag[19] * 0x05 +  flag[7] * 0x26 +  flag[1] * 0x88 +  flag[12] * 0x72 +  flag[10] * 0x45 +  flag[32] * 0xeb +  flag[30] * 0x8c +  flag[39] * 0x03 +  flag[38] * 0xc7 +  flag[23] * 0xb8 +  flag[2] * 0x85 +  flag[36] * 0x3c +  flag[0] * 0x0a +  flag[21] * 0xca +  flag[18] * 0x4e +  flag[20] * 0x66 +  flag[4] * 0xb7 +  flag[16] * 0x56 +  flag[37] * 0xb6 +  flag[8] * 0x3d +  flag[34] * 0xde +  flag[13] * 0xde +  flag[27] * 0x91 +  flag[24] * 0x7a +  flag[5] * 0x9b +  flag[17] * 0x02 +  flag[28] * 0x05 +  flag[29] * 0x0a +  flag[25] * 0xd0 +  flag[31] * 0xa5 +  flag[22] * 0x49 +  flag[26] * 0x38 == 0x6C2B8)
#s.add( flag[38] * 0x77 +  flag[9] * 0xb1 +  flag[14] * 0xf5 +  flag[15] * 0xac +  flag[28] * 0xde +  flag[30] * 0xd7 +  flag[1] * 0x9b +  flag[37] * 0x12 +  flag[13] * 0x57 +  flag[24] * 0xc3 +  flag[7] * 0x95 +  flag[5] * 0xa3 +  flag[20] * 0xea +  flag[6] * 0x32 +  flag[11] * 0x01 +  flag[12] * 0x6b +  flag[16] * 0xd1 +  flag[10] * 0x92 +  flag[25] * 0x6a +  flag[3] * 0x50 +  flag[21] * 0xa4 +  flag[31] * 0x95 +  flag[35] * 0x90 +  flag[27] * 0xb4 +  flag[4] * 0x01 +  flag[0] * 0x3c +  flag[34] * 0xa1 +  flag[32] * 0xee +  flag[18] * 0xf1 +  flag[40] * 0xf5 +  flag[33] * 0x09 +  flag[17] * 0x4e +  flag[36] * 0x6d +  flag[8] * 0x1a +  flag[23] * 0x93 +  flag[19] * 0xef +  flag[39] * 0x23 +  flag[26] * 0x9a +  flag[29] * 0x73 +  flag[2] * 0x88 +  flag[22] * 0x46 == 0x74A90)
#s.add( flag[7] * 0x84 +  flag[17] * 0x5f +  flag[12] * 0x01 +  flag[8] * 0x3d +  flag[15] * 0xd0 +  flag[9] * 0x03 +  flag[36] * 0x8b +  flag[23] * 0x01 +  flag[16] * 0x87 +  flag[34] * 0xba +  flag[1] * 0xbc +  flag[29] * 0x01 +  flag[35] * 0x9e +  flag[21] * 0xfb +  flag[32] * 0x6a +  flag[6] * 0xc9 +  flag[11] * 0x7d +  flag[22] * 0x9b +  flag[40] * 0xe6 +  flag[33] * 0x2b +  flag[10] * 0x12 +  flag[25] * 0xe4 +  flag[31] * 0xff +  flag[0] * 0x53 +  flag[3] * 0xdf +  flag[27] * 0x03 +  flag[18] * 0x1c +  flag[26] * 0x23 +  flag[39] * 0xfc +  flag[37] * 0xce +  flag[14] * 0x74 +  flag[19] * 0x41 +  flag[24] * 0x03 +  flag[30] * 0x93 +  flag[5] * 0xf9 +  flag[20] * 0x16 +  flag[13] * 0x40 +  flag[28] * 0xfd +  flag[4] * 0xfb +  flag[2] * 0x06 +  flag[38] * 0xc6 == 0x6E0CA)
#s.add( flag[39] * 0xa3 +  flag[5] * 0x1e +  flag[7] * 0xf5 +  flag[2] * 0xbd +  flag[23] * 0x67 +  flag[1] * 0xa1 +  flag[33] * 0x2d +  flag[17] * 0xd3 +  flag[28] * 0x7e +  flag[35] * 0x1e +  flag[16] * 0xf7 +  flag[22] * 0xbc +  flag[19] * 0x72 +  flag[3] * 0xaa +  flag[40] * 0x0f +  flag[36] * 0x10 +  flag[29] * 0xd9 +  flag[6] * 0x83 +  flag[9] * 0x6e +  flag[31] * 0xfa +  flag[34] * 0xba +  flag[12] * 0x43 +  flag[4] * 0xe7 +  flag[30] * 0x45 +  flag[13] * 0x4e +  flag[10] * 0xc2 +  flag[25] * 0x3c +  flag[27] * 0xf4 +  flag[11] * 0x16 +  flag[26] * 0x15 +  flag[18] * 0x61 +  flag[14] * 0x16 +  flag[20] * 0x83 +  flag[0] * 0xfb +  flag[32] * 0x7b +  flag[8] * 0xc3 +  flag[38] * 0xcc +  flag[21] * 0x3b +  flag[37] * 0x89 +  flag[15] * 0x98 +  flag[24] * 0x52 == 0x73F90)
#s.add( flag[17] * 0x97 +  flag[7] * 0x62 +  flag[13] * 0x41 +  flag[10] * 0x82 +  flag[14] * 0x3e +  flag[29] * 0xb6 +  flag[33] * 0xa1 +  flag[5] * 0xd6 +  flag[26] * 0xf5 +  flag[38] * 0xad +  flag[28] * 0x05 +  flag[1] * 0x49 +  flag[37] * 0xbd +  flag[4] * 0x66 +  flag[35] * 0xf3 +  flag[34] * 0x8d +  flag[11] * 0xb7 +  flag[9] * 0xfe +  flag[40] * 0xd1 +  flag[25] * 0x42 +  flag[30] * 0xb7 +  flag[16] * 0x6e +  flag[31] * 0xe2 +  flag[15] * 0x18 +  flag[21] * 0xa1 +  flag[36] * 0x92 +  flag[3] * 0xbf +  flag[6] * 0x48 +  flag[0] * 0xe3 +  flag[39] * 0xdb +  flag[18] * 0xb0 +  flag[23] * 0x34 +  flag[22] * 0xd1 +  flag[8] * 0x0e +  flag[24] * 0xe5 +  flag[32] * 0x66 +  flag[20] * 0x49 +  flag[19] * 0xc2 +  flag[12] * 0x29 +  flag[27] * 0x0e +  flag[2] * 0xe2 == 0x7D39D)
#s.add( flag[26] * 0x97 +  flag[1] * 0x43 +  flag[14] * 0x67 +  flag[4] * 0xe3 +  flag[16] * 0x56 +  flag[20] * 0xc9 +  flag[18] * 0xfd +  flag[13] * 0x2d +  flag[3] * 0xef +  flag[24] * 0x8b +  flag[19] * 0xe4 +  flag[35] * 0x75 +  flag[27] * 0x2c +  flag[6] * 0xe4 +  flag[21] * 0x39 +  flag[2] * 0x37 +  flag[0] * 0xf6 +  flag[23] * 0x10 +  flag[8] * 0x3b +  flag[37] * 0x09 +  flag[39] * 0x85 +  flag[22] * 0x7a +  flag[15] * 0x12 +  flag[9] * 0x04 +  flag[28] * 0x19 +  flag[29] * 0x8a +  flag[36] * 0x09 +  flag[32] * 0xdb +  flag[7] * 0x26 +  flag[30] * 0x0a +  flag[17] * 0x3b +  flag[40] * 0x0e +  flag[12] * 0x3c +  flag[10] * 0x64 +  flag[34] * 0xf1 +  flag[5] * 0x03 +  flag[31] * 0xf2 +  flag[38] * 0xa4 +  flag[11] * 0xeb +  flag[33] * 0xa5 +  flag[25] * 0x08 == 0x5D8E3)
#s.add( flag[27] * 0xaa +  flag[15] * 0xbd +  flag[19] * 0xea +  flag[16] * 0xb9 +  flag[1] * 0xd9 +  flag[20] * 0xb6 +  flag[0] * 0x9b +  flag[23] * 0x41 +  flag[34] * 0xcd +  flag[8] * 0xb0 +  flag[4] * 0xaf +  flag[37] * 0x9d +  flag[3] * 0x7e +  flag[40] * 0x62 +  flag[13] * 0xfd +  flag[31] * 0xf2 +  flag[21] * 0xe6 +  flag[38] * 0x27 +  flag[7] * 0x2b +  flag[14] * 0x24 +  flag[35] * 0x3d +  flag[29] * 0xc4 +  flag[39] * 0xdf +  flag[11] * 0xaf +  flag[10] * 0x75 +  flag[36] * 0x32 +  flag[30] * 0xe9 +  flag[17] * 0xcd +  flag[32] * 0x7e +  flag[26] * 0x58 +  flag[2] * 0xb2 +  flag[24] * 0xbd +  flag[28] * 0x72 +  flag[6] * 0x72 +  flag[5] * 0xfa +  flag[18] * 0x01 +  flag[25] * 0x05 +  flag[9] * 0x6c +  flag[22] * 0x64 +  flag[12] * 0x71 +  flag[33] * 0x85 == 0x7F126)
#s.add( flag[11] * 0x16 +  flag[18] * 0xfb +  flag[3] * 0x06 +  flag[30] * 0x4f +  flag[1] * 0x7a +  flag[24] * 0x05 +  flag[5] * 0x1c +  flag[25] * 0x93 +  flag[10] * 0x8a +  flag[38] * 0x13 +  flag[21] * 0x1c +  flag[13] * 0x51 +  flag[7] * 0xb0 +  flag[16] * 0x9c +  flag[36] * 0x97 +  flag[39] * 0x5e +  flag[27] * 0x68 +  flag[14] * 0x7e +  flag[33] * 0xf1 +  flag[40] * 0x01 +  flag[20] * 0x2d +  flag[15] * 0x8d +  flag[34] * 0x2f +  flag[35] * 0x76 +  flag[37] * 0x32 +  flag[28] * 0xe0 +  flag[9] * 0x63 +  flag[0] * 0x97 +  flag[2] * 0xa3 +  flag[19] * 0xf1 +  flag[4] * 0x58 +  flag[26] * 0x24 +  flag[8] * 0xdd +  flag[29] * 0x4f +  flag[12] * 0xc2 +  flag[32] * 0xfd +  flag[23] * 0x11 +  flag[31] * 0x04 +  flag[17] * 0xca +  flag[6] * 0x91 +  flag[22] * 0xc8 == 0x608AA)
#s.add( flag[9] * 0xf0 +  flag[34] * 0x73 +  flag[22] * 0x5c +  flag[7] * 0xa3 +  flag[27] * 0xae +  flag[6] * 0x99 +  flag[35] * 0x36 +  flag[33] * 0xc1 +  flag[26] * 0x79 +  flag[5] * 0xea +  flag[31] * 0x96 +  flag[24] * 0x71 +  flag[38] * 0x4f +  flag[37] * 0x7c +  flag[39] * 0xf0 +  flag[21] * 0xa2 +  flag[19] * 0x04 +  flag[28] * 0xa2 +  flag[29] * 0xfb +  flag[20] * 0xae +  flag[15] * 0x2f +  flag[18] * 0x0d +  flag[17] * 0x52 +  flag[1] * 0xa4 +  flag[14] * 0x73 +  flag[12] * 0x2b +  flag[30] * 0xdd +  flag[4] * 0xd9 +  flag[40] * 0x53 +  flag[2] * 0x47 +  flag[16] * 0x48 +  flag[3] * 0x79 +  flag[11] * 0x3b +  flag[36] * 0xb5 +  flag[23] * 0x4a +  flag[0] * 0x16 +  flag[13] * 0x13 +  flag[10] * 0x84 +  flag[25] * 0xbc +  flag[32] * 0x5d +  flag[8] * 0x15 == 0x6C924)
#s.add( flag[14] * 0xe4 +  flag[8] * 0x15 +  flag[24] * 0x70 +  flag[16] * 0x78 +  flag[9] * 0x84 +  flag[18] * 0x05 +  flag[11] * 0x6e +  flag[13] * 0xa4 +  flag[12] * 0x5e +  flag[37] * 0xa9 +  flag[29] * 0x19 +  flag[40] * 0x8c +  flag[2] * 0x83 +  flag[33] * 0x21 +  flag[0] * 0xf1 +  flag[5] * 0x25 +  flag[39] * 0x8d +  flag[23] * 0x80 +  flag[31] * 0x6c +  flag[15] * 0xc0 +  flag[30] * 0x8f +  flag[7] * 0x03 +  flag[19] * 0x99 +  flag[17] * 0x3e +  flag[36] * 0x7b +  flag[28] * 0x30 +  flag[10] * 0x7d +  flag[32] * 0x0e +  flag[25] * 0x57 +  flag[1] * 0x87 +  flag[4] * 0xab +  flag[20] * 0x0b +  flag[21] * 0x02 +  flag[22] * 0x4b +  flag[3] * 0x86 +  flag[35] * 0xf5 +  flag[26] * 0xcc +  flag[6] * 0x03 +  flag[34] * 0x83 +  flag[38] * 0x4d +  flag[27] * 0x07 == 0x581F0)
#s.add( flag[36] * 0x62 +  flag[25] * 0x27 +  flag[16] * 0xc4 +  flag[17] * 0x8f +  flag[12] * 0x03 +  flag[27] * 0x90 +  flag[11] * 0x85 +  flag[0] * 0x98 +  flag[32] * 0xfc +  flag[26] * 0xf7 +  flag[13] * 0x11 +  flag[23] * 0xc9 +  flag[20] * 0x1f +  flag[5] * 0x10 +  flag[33] * 0x13 +  flag[2] * 0x1a +  flag[21] * 0x9c +  flag[28] * 0x76 +  flag[40] * 0x45 +  flag[9] * 0x2b +  flag[4] * 0xde +  flag[15] * 0xc6 +  flag[34] * 0x63 +  flag[1] * 0xdf +  flag[3] * 0x9a +  flag[7] * 0x46 +  flag[24] * 0x0a +  flag[30] * 0xb3 +  flag[22] * 0x58 +  flag[35] * 0x47 +  flag[29] * 0x02 +  flag[38] * 0x9f +  flag[10] * 0xca +  flag[14] * 0xd7 +  flag[19] * 0x8d +  flag[31] * 0x03 +  flag[6] * 0xdf +  flag[39] * 0xb4 +  flag[18] * 0xcd +  flag[8] * 0xec +  flag[37] * 0x1a == 0x61D58)
#s.add( flag[6] * 0x37 +  flag[31] * 0xb0 +  flag[5] * 0x52 +  flag[0] * 0x1c +  flag[17] * 0xe9 +  flag[11] * 0x17 +  flag[9] * 0x7a +  flag[16] * 0xab +  flag[12] * 0x9a +  flag[19] * 0x48 +  flag[38] * 0xb7 +  flag[28] * 0x69 +  flag[20] * 0x1b +  flag[18] * 0x7b +  flag[26] * 0x29 +  flag[27] * 0x6b +  flag[32] * 0xb1 +  flag[39] * 0x9b +  flag[37] * 0x5d +  flag[15] * 0xd0 +  flag[33] * 0xe7 +  flag[40] * 0xf6 +  flag[36] * 0xb4 +  flag[25] * 0x49 +  flag[30] * 0x5a +  flag[1] * 0xd5 +  flag[34] * 0x47 +  flag[4] * 0x91 +  flag[29] * 0x9f +  flag[8] * 0x6c +  flag[21] * 0xbe +  flag[35] * 0xde +  flag[13] * 0x23 +  flag[14] * 0x49 +  flag[10] * 0x97 +  flag[24] * 0x3d +  flag[3] * 0xf1 +  flag[2] * 0x5e +  flag[23] * 0xe9 +  flag[7] * 0x7d +  flag[22] * 0x01 == 0x72213)
#s.add( flag[26] * 0x59 +  flag[18] * 0x52 +  flag[21] * 0x03 +  flag[24] * 0x8d +  flag[10] * 0x80 +  flag[22] * 0x1b +  flag[7] * 0xea +  flag[17] * 0x84 +  flag[28] * 0x20 +  flag[34] * 0x6f +  flag[27] * 0x63 +  flag[6] * 0x2e +  flag[40] * 0xe5 +  flag[14] * 0xea +  flag[5] * 0x31 +  flag[12] * 0x58 +  flag[20] * 0xcc +  flag[16] * 0xf9 +  flag[0] * 0x61 +  flag[11] * 0x63 +  flag[32] * 0x06 +  flag[15] * 0xe9 +  flag[36] * 0x93 +  flag[2] * 0xd2 +  flag[33] * 0x50 +  flag[25] * 0x4d +  flag[29] * 0x1a +  flag[31] * 0x6b +  flag[19] * 0xad +  flag[1] * 0xa7 +  flag[35] * 0x0f +  flag[30] * 0x23 +  flag[4] * 0x5a +  flag[8] * 0x9e +  flag[38] * 0x4e +  flag[37] * 0xc9 +  flag[39] * 0x54 +  flag[3] * 0x40 +  flag[9] * 0x60 +  flag[13] * 0xc7 +  flag[23] * 0xbe == 0x62FA0)
#s.add( flag[4] * 0xdf +  flag[29] * 0x0b +  flag[0] * 0x4a +  flag[1] * 0x50 +  flag[33] * 0x1b +  flag[12] * 0x5d +  flag[22] * 0xa5 +  flag[15] * 0x7e +  flag[3] * 0xc7 +  flag[34] * 0x20 +  flag[30] * 0xeb +  flag[35] * 0x12 +  flag[24] * 0x05 +  flag[9] * 0x36 +  flag[38] * 0x1f +  flag[20] * 0x8d +  flag[7] * 0x91 +  flag[39] * 0x8d +  flag[14] * 0x76 +  flag[37] * 0x7f +  flag[17] * 0xa0 +  flag[8] * 0x80 +  flag[19] * 0xfc +  flag[5] * 0xed +  flag[32] * 0xfc +  flag[26] * 0x76 +  flag[40] * 0xf3 +  flag[10] * 0x72 +  flag[21] * 0x61 +  flag[6] * 0x53 +  flag[31] * 0x89 +  flag[18] * 0xaa +  flag[36] * 0x08 +  flag[23] * 0x3a +  flag[13] * 0xfd +  flag[27] * 0xb6 +  flag[28] * 0x1d +  flag[25] * 0x87 +  flag[2] * 0x0a +  flag[11] * 0x07 +  flag[16] * 0x40 == 0x65CD4)
#s.add( flag[29] * 0x3c +  flag[34] * 0x4e +  flag[37] * 0xd3 +  flag[8] * 0x78 +  flag[31] * 0x54 +  flag[32] * 0x25 +  flag[7] * 0x05 +  flag[3] * 0x47 +  flag[25] * 0x50 +  flag[24] * 0xf0 +  flag[35] * 0x30 +  flag[10] * 0xba +  flag[40] * 0x0e +  flag[2] * 0x06 +  flag[21] * 0x88 +  flag[5] * 0xe1 +  flag[36] * 0x4f +  flag[23] * 0x31 +  flag[26] * 0xf0 +  flag[20] * 0x25 +  flag[0] * 0x80 +  flag[4] * 0x87 +  flag[28] * 0x16 +  flag[22] * 0xaa +  flag[17] * 0xf7 +  flag[14] * 0xf0 +  flag[33] * 0x8b +  flag[9] * 0x77 +  flag[15] * 0xf6 +  flag[19] * 0x09 +  flag[6] * 0x7e +  flag[27] * 0x9c +  flag[18] * 0xe8 +  flag[1] * 0xc1 +  flag[39] * 0xe1 +  flag[38] * 0xdb +  flag[13] * 0x5f +  flag[11] * 0xc3 +  flag[16] * 0xd3 +  flag[30] * 0x47 +  flag[12] * 0x10 == 0x6917F)
#s.add( flag[11] * 0x03 +  flag[16] * 0x70 +  flag[5] * 0xe7 +  flag[23] * 0x85 +  flag[2] * 0x76 +  flag[38] * 0x89 +  flag[29] * 0x9b +  flag[4] * 0x9d +  flag[25] * 0xb0 +  flag[24] * 0xa5 +  flag[35] * 0x0b +  flag[1] * 0x48 +  flag[31] * 0xf6 +  flag[37] * 0x89 +  flag[15] * 0xe0 +  flag[36] * 0x11 +  flag[27] * 0xff +  flag[22] * 0xe8 +  flag[18] * 0x58 +  flag[32] * 0x3d +  flag[3] * 0x66 +  flag[13] * 0xff +  flag[40] * 0x24 +  flag[8] * 0xc6 +  flag[39] * 0xe0 +  flag[9] * 0xa8 +  flag[0] * 0x30 +  flag[10] * 0x11 +  flag[6] * 0x9f +  flag[30] * 0x60 +  flag[28] * 0x36 +  flag[34] * 0x7d +  flag[17] * 0xe8 +  flag[7] * 0x53 +  flag[12] * 0x14 +  flag[20] * 0x58 +  flag[26] * 0x9f +  flag[14] * 0x42 +  flag[19] * 0x53 +  flag[21] * 0x07 +  flag[33] * 0x93 == 0x6D94A)
#s.add( flag[0] * 0x5e +  flag[5] * 0xb6 +  flag[26] * 0x15 +  flag[39] * 0x84 +  flag[6] * 0x46 +  flag[24] * 0x62 +  flag[15] * 0x41 +  flag[7] * 0x89 +  flag[23] * 0x01 +  flag[22] * 0x65 +  flag[19] * 0x91 +  flag[21] * 0x73 +  flag[40] * 0xe0 +  flag[37] * 0x68 +  flag[36] * 0xab +  flag[34] * 0x25 +  flag[20] * 0x95 +  flag[31] * 0x82 +  flag[3] * 0x0c +  flag[27] * 0x34 +  flag[17] * 0x54 +  flag[1] * 0x20 +  flag[29] * 0xc0 +  flag[35] * 0x74 +  flag[12] * 0xa4 +  flag[4] * 0xc9 +  flag[2] * 0x1e +  flag[10] * 0x96 +  flag[11] * 0x68 +  flag[33] * 0x8b +  flag[18] * 0x42 +  flag[30] * 0xb7 +  flag[9] * 0xe4 +  flag[8] * 0x8f +  flag[28] * 0x47 +  flag[16] * 0xa7 +  flag[13] * 0x4e +  flag[14] * 0x14 +  flag[38] * 0xea +  flag[25] * 0x9c +  flag[32] * 0x7e == 0x697AE)
#s.add( flag[7] * 0x72 +  flag[17] * 0x1f +  flag[25] * 0xaf +  flag[30] * 0x36 +  flag[13] * 0x14 +  flag[19] * 0x9b +  flag[16] * 0xa0 +  flag[1] * 0x69 +  flag[34] * 0xb8 +  flag[12] * 0x71 +  flag[36] * 0x30 +  flag[20] * 0xbf +  flag[4] * 0xa3 +  flag[22] * 0x22 +  flag[37] * 0xa3 +  flag[33] * 0xfa +  flag[0] * 0x94 +  flag[35] * 0xa6 +  flag[8] * 0xe8 +  flag[14] * 0x8c +  flag[26] * 0x8f +  flag[11] * 0x52 +  flag[9] * 0x63 +  flag[38] * 0x2d +  flag[39] * 0xa5 +  flag[23] * 0x34 +  flag[5] * 0xba +  flag[10] * 0xfa +  flag[32] * 0xfd +  flag[2] * 0x3e +  flag[15] * 0x1a +  flag[29] * 0x19 +  flag[27] * 0xd4 +  flag[40] * 0x68 +  flag[31] * 0x98 +  flag[24] * 0x12 +  flag[28] * 0xbb +  flag[21] * 0x7d +  flag[6] * 0x4c +  flag[3] * 0x41 +  flag[18] * 0x49 == 0x69CA7)
#s.add( flag[32] * 0xd0 +  flag[26] * 0x02 +  flag[28] * 0x16 +  flag[10] * 0xc0 +  flag[22] * 0x5e +  flag[7] * 0x2d +  flag[4] * 0x33 +  flag[40] * 0xa6 +  flag[24] * 0xe2 +  flag[0] * 0xb7 +  flag[1] * 0xe7 +  flag[30] * 0x64 +  flag[33] * 0xc9 +  flag[2] * 0xa9 +  flag[8] * 0x7d +  flag[11] * 0x6b +  flag[19] * 0x2b +  flag[37] * 0xb7 +  flag[23] * 0xa2 +  flag[16] * 0xa1 +  flag[25] * 0xb2 +  flag[13] * 0x94 +  flag[12] * 0xd7 +  flag[27] * 0x45 +  flag[38] * 0x21 +  flag[31] * 0x4c +  flag[35] * 0x92 +  flag[5] * 0x99 +  flag[29] * 0xae +  flag[18] * 0x75 +  flag[21] * 0x26 +  flag[39] * 0x3f +  flag[15] * 0x1a +  flag[36] * 0x1e +  flag[6] * 0x1d +  flag[17] * 0xa3 +  flag[34] * 0x97 +  flag[20] * 0x35 +  flag[14] * 0x2c +  flag[9] * 0x55 +  flag[3] * 0x98 == 0x68E50)

assert s.check() == sat

m = s.model()
print m
print "".join([chr(m[flag[i]].as_long()) for i in range(41)])