#!/usr/bin/env python
# -*- coding: utf-8 -*-

from z3 import *
# VolgaCTF{D1$guis3_y0ur_code_and_y0u_@re_s@fe}

data = [BitVec("x_%d" % i, 8) for i in range(45)]
s = Solver()
for i in range(len(data)):
    s.add(data[i] > ord(' '))
    s.add(data[i] < ord('~'))

s.add(data[0] == ord('V'))
s.add(data[1] == ord('o'))
s.add(data[2] == ord('l'))
s.add(data[3] == ord('g'))
s.add(data[4] == ord('a'))
s.add(data[5] == ord('C'))
s.add(data[6] == ord('T'))
s.add(data[7] == ord('F'))
s.add(data[8] == ord('{'))

s.add ( 9 * data[25]
 + 5 * data[8]
 + data[37] * 28 * data[23]
 + 6 * data[13]
 - 6 * data[17]
 - 3 * data[26]
 - 2 * data[36]
 - 6 * data[4]
 - 10 * data[29]
 - 8 * data[3]
 + data[24] * 99 * data[9]
 + 4 * data[19]
 + data[11] * 84 * data[12] == 1373634 )

v5 = data[36];
v6 = data[32];
s.add ( -11 * data[23]
 + 9 * v5
 + -7 * data[36]
 + data[38] * 78 * data[0]
 - 8 * data[40]
 - data[40]
 - data[42] * 10 * data[34]
 - 7 * data[36]
 + v5
 + data[13] * data[14] * 560 * data[34]
 - v6
 + 11 * v6
 + 15 * data[35] == 805471623 )

v6 = data[12];
s.add ( 2 * v6
 + data[3] * 225 * data[0]
 - 12 * data[36]
 - 7 * data[3]
 - data[43] * 12 * data[7]
 - 12 * data[43]
 - data[0]
 - data[4] * 18 * data[29]
 - data[11] * data[21] * 75 * data[2]
 + 12 * v6
 + 15 * data[25] == -31526095 )
v5 = data[21];
s.add ( 5 * data[23]
 + data[1]
 + 4 * (2 * data[29] - data[18] - v5)
 + data[28] * 39 * data[12]
 - data[36] * data[22] * 30 * v5
 + 8 * data[26]
 - data[26]
 + data[18]
 + 12 * data[0]
 - 10 * data[17]
 - 12 * data[27] * data[17] == -20510795 )
s.add ( data[18]
 + 5 * data[37]
 + 15 * data[43]
 + data[16]
 + 11 * data[13]
 + data[6] * 15 * data[23]
 - 6 * data[20]
 - data[8] * 10 * data[23]
 + 135 * data[20] * data[6]
 + 10 * data[19]
 - 6 * data[18]
 + 14 * data[2]
 - 12 * data[33] == 1333282 )
v5 = data[17];
s.add ( data[10] * data[0] * 182 * data[24]
 + data[32] * 2 * data[30]
 - 4 * data[39]
 - data[39]
 + 10 * data[32]
 + 8 * v5
 - 8 * data[30]
 + 4 * data[34]
 - 12 * data[29]
 - data[12] * 55 * data[41]
 + data[8] * data[4] * 1144 * v5 == 1381453791 )
v5 = data[26];
s.add ( -7 * data[20]
 + -3 * data[43]
 + data[29]
 - 7 * data[35]
 + 11 * data[34]
 - data[39] * v5 * 18 * data[37]
 - 4 * data[0]
 + 2 * data[8]
 - 8 * data[27]
 + 8 * data[15]
 - data[15]
 - v5 * 8 * data[33]
 - 13 * v5 == -19729480 )
_30 = data[30];
s.add ( 13 * data[29]
 + data[36] * 132 * data[0]
 + 13 * data[19]
 + 3 * data[1]
 - _30 * 14 * data[30]
 + data[34] * 60 * data[3]
 - 14 * data[26]
 - 8 * data[28]
 - data[28]
 + 3 * data[19]
 + 10 * data[7]
 - data[4]
 + _30
 + 8 * data[42] == 1311351 )
v5 = data[1];
s.add ( data[10]
 + data[9] * 10 * data[14]
 + 8 * data[44]
 - 3 * data[13]
 - data[7] * 90 * data[26]
 - 6 * data[27]
 + 11 * v5
 + 6 * data[27]
 + 2 * data[24]
 + data[27]
 - data[29]
 - 8 * data[33]
 - data[33]
 + 6 * v5
 - 13 * data[11] == -563008 )
v5 = data[40];
s.add ( -7 * data[24]
 + -11 * data[27]
 + -11 * data[9]
 + data[12]
 + data[38] * 70 * data[30]
 - 10 * data[29]
 - 2 * v5
 - 6 * data[28]
 - data[43] * 8 * data[6]
 + 10 * data[25]
 - 2 * data[12]
 - data[3] * data[43] * ((v5 << 8) - 32 * data[40]) == -267345737 )
s.add ( data[43]
 + data[27]
 + 3 * data[29]
 + -9 * data[20]
 + 4 * data[15]
 - data[25]
 - data[41]
 + 15 * data[12]
 - 6 * data[13]
 + 4 * data[9]
 - data[4] * 24 * data[28]
 + 130 * data[4] * data[41]
 + 14 * data[3]
 + 8 * data[0]
 - data[0] == 584152 )
v6 = data[1];
s.add ( data[23]
 + 5 * data[41]
 + 9 * data[3]
 + v6 * 15 * data[41]
 + 5 * data[22]
 - 15 * data[25]
 - data[31] * 24 * data[22]
 - 4 * data[12]
 - data[16] * 36 * data[44]
 - 10 * data[4]
 + 9 * data[8]
 - 45 * data[34] * v6 == -923909 )
s.add ( -5 * data[23]
 + 15 * data[26]
 + 8 * data[25]
 + 15 * data[23]
 - data[1] * 90 * data[6]
 - 6 * data[32]
 - 4 * data[8]
 - 13 * data[32]
 + data[26]
 - data[14] * 70 * data[23]
 - 4 * data[9]
 - 8 * data[19]
 - data[12] * 78 * data[33] == -1952483 )
s.add ( 15 * data[35]
 + -13 * data[14]
 + -7 * data[41]
 + -7 * data[38]
 + 9 * data[3]
 + data[39] * data[9] * 360 * data[16]
 + 6 * data[24]
 - data[30]
 + 135 * data[2] * data[16]
 - 9 * data[9]
 + 4 * data[30]
 - data[23] * 112 * data[10] == 118806054 )

v7 = data[12];
v8 = data[0];
s.add ( 3 * data[31]
 + 6 * data[19]
 - data[7] * 130 * data[36]
 + 12 * data[40]
 - v7 * 42 * data[31]
 + 4 * data[2]
 + 10 * v8
 + data[10] * 99 * data[28]
 - data[34] * 40 * data[24]
 - 8 * data[5]
 + v7
 + 7 * v8 == -1038889 )
s.add ( -11 * data[43]
 + data[20] * 20 * data[44]
 + data[35] * 60 * data[5]
 - data[40] * data[3] * 1008 * data[1]
 + 8 * data[44]
 - 10 * data[28]
 - 7 * data[35]
 - 2 * data[27]
 - 4 * data[17]
 - data[17]
 - 8 * data[26]
 - data[18]
 - 8 * data[9] == 2970324452 )
s.add ( 9 * data[5]
 + data[8]
 + data[0]
 + 10 * data[3]
 - data[13] * 84 * data[2]
 + data[27] * 16 * data[28]
 + 12 * data[28]
 + 2 * data[11]
 - 14 * data[40]
 - 12 * data[32]
 + 15 * data[10]
 - 4 * data[23]
 - data[23]
 - 3 * data[11]
 - 5 * data[5] == -914171 )
v6 = data[14];
s.add ( data[44] * 55 * data[15]
 + data[17] * 48 * data[36]
 + 2 * (data[19] + 6 * data[2])
 - v6 * 14 * data[38]
 + 11 * data[2]
 - 12 * data[6] * v6
 + 8 * data[11]
 - data[11]
 + data[23] * 13 * data[18]
 - 10 * data[4]
 + 3 * data[21] == 986086 )
v6 = data[16];
s.add ( -3 * data[17]
 + 9 * data[24]
 + 4 * data[37]
 + 9 * data[34]
 - 4 * data[34]
 + 8 * data[15]
 + data[7] * 40 * data[42]
 + 10 * data[15]
 - data[11] * data[27] * 360 * v6
 + 12 * data[5]
 - 15 * data[10] * v6
 + 13 * data[1] == -62537013 )
v5 = data[37];
s.add ( -3 * data[13]
 + -13 * data[38]
 + 15 * data[26]
 + 11 * data[13]
 + data[23] * 110 * data[8]
 + 2 * (-3 * data[25] + 5 * data[27])
 + v5 * data[9] * 550 * data[34]
 - 4 * data[7]
 - data[7]
 - data[31] * 135 * v5
 + 12 * data[11]
 - 9 * data[8] == 498719083 )
s.add ( 11 * data[6]
 + data[25]
 + 7 * (data[32] + data[26])
 + data[36] * 180 * data[33]
 + data[35] * 99 * data[9]
 - 12 * data[42]
 - data[22] * 32 * data[27]
 + 10 * data[15]
 + 15 * data[8]
 + 8 * data[4]
 - 10 * data[33]
 + 14 * data[8] == 910067 )
v5 = data[1];
v6 = data[38];
s.add ( 9 * data[22]
 + -7 * data[27]
 + 8 * v5
 + 4 * (3 * data[9] - 3 * data[31])
 - 6 * data[10]
 + 2 * v6
 + 8 * data[41]
 - data[41]
 - 4 * data[13]
 - data[13]
 - 2 * data[8]
 - data[10] * 60 * data[16]
 + v5 * 60 * v6
 - data[28] * 7 * v5 == 447630 )
v6 = data[29];
s.add ( 9 * data[40]
 + 11 * data[18]
 + 3 * data[21]
 + -13 * data[1]
 + data[31]
 + data[30]
 - 4 * v6
 + 8 * data[4]
 - data[4]
 - data[36] * 210 * v6
 - 14 * data[37]
 - 6 * data[44] * data[21]
 - 2 * data[39]
 + 8 * v6
 + 4 * data[35] == -1562727 )
v5 = data[20];
s.add ( 13 * v5
 + 7 * data[2]
 - 14 * data[42]
 - 4 * data[24]
 + 8 * data[37]
 + data[19] * 78 * data[36]
 - 63 * data[24] * data[42]
 - data[18]
 - 2 * v5
 - 4 * data[31]
 + 4 * data[15]
 + 10 * data[38]
 + 7 * v5
 - 4 * data[26] == -471203 )
v5 = data[14];
s.add ( -7 * data[19]
 + 7 * v5
 + 13 * data[6]
 + data[42]
 + data[23] * 4 * data[17]
 - 2 * data[40]
 - 13 * data[17]
 + 9 * v5
 + 14 * data[1]
 - data[5] * 39 * data[13]
 + 6 * data[32]
 + 4 * data[29]
 - data[37]
 + 14 * data[24] == -262868 )
s.add ( 11 * data[9]
 + data[1] * 56 * data[2]
 - 4 * data[6]
 - data[6]
 - data[20] * 77 * data[14]
 - 12 * data[34]
 - 11 * data[38]
 - 8 * data[5]
 - 15 * data[26]
 + data[11] * data[41] * 72 * data[29]
 - data[18] * data[35] * 528 * data[32] == -716423735 )
s.add ( 15 * data[5]
 + data[33] * 130 * data[40]
 + data[4]
 + 2 * data[10]
 - data[35] * 132 * data[16]
 + data[14] * 75 * data[23]
 - 2 * data[24]
 - 6 * data[32]
 - 2 * data[26]
 + 4 * data[40]
 - 11 * data[15]
 + 4 * data[19]
 - 8 * data[5] == 856586 )
v5 = data[11];
s.add ( 13 * data[33]
 + data[20]
 + 4 * (data[6] - data[20])
 + 8 * data[44]
 - data[44]
 - data[13] * 90 * data[36]
 + 6 * data[20]
 - 4 * data[37]
 - data[37]
 + v5 * data[32] * 20 * data[7]
 - 4 * data[9]
 - data[9]
 + 2 * data[29]
 - 10 * data[0]
 + data[23] * 156 * v5 == 5981100 )
s.add ( 9 * data[3]
 + -5 * data[34]
 + 6 * data[44]
 - 11 * data[21]
 - 14 * data[4]
 - 8 * data[5]
 + data[39] * 1344 * data[4] * data[21]
 + 5 * data[40]
 + 15 * data[1]
 - data[27] * 15 * data[26]
 - 10 * data[13]
 + 11 * data[16]
 + 8 * data[17]
 - data[17] == 1411741755 )
s.add ( 3 * data[41]
 + 5 * data[6]
 + 8 * data[10]
 + 10 * data[8]
 - data[41] * 28 * data[9]
 - 10 * data[30]
 + 10 * data[21]
 + 10 * data[19]
 - data[24]
 + 5 * data[8]
 - 10 * data[22]
 - 3 * data[23]
 + 4 * data[32]
 + 9 * data[30]
 + 11 * data[28] == -117294 )
s.add ( 13 * data[7]
 + -7 * data[13]
 + 9 * data[27]
 + -2 * data[35]
 + 12 * data[34]
 - 3 * data[14]
 + 63 * data[44] * data[27]
 - 7 * data[20]
 + data[37] * 70 * data[42]
 - data[32] * 156 * data[19]
 - 2 * data[12]
 - 12 * data[10] == 656269 )
v6 = data[13];
s.add ( 9 * data[43]
 + 15 * data[29]
 + data[1] * 120 * data[44]
 + 12 * v6
 + 12 * data[15]
 + 14 * data[32]
 + 10 * data[25]
 + 13 * data[37]
 - 4 * data[22]
 - data[22]
 + 8 * data[26]
 - data[26]
 - 4 * data[36]
 - data[36]
 - v6
 + 7 * v6
 - data[40] * 36 * data[38] == 1256993 )
s.add ( 5 * data[31]
 + -15 * data[39]
 + data[19] * 90 * data[18]
 + data[27] * 16 * data[16]
 - data[44] * data[41] * 70 * data[28]
 + 2 * data[8]
 + data[42] * 35 * data[38]
 + 10 * data[7]
 + 2 * data[12]
 + 8 * data[29]
 + 4 * data[20] == -53357640 )
s.add ( 15 * data[0]
 + 13 * data[13]
 + -13 * data[3]
 + 3 * data[15]
 + 3 * data[34]
 + 6 * data[39]
 - data[32] * 60 * data[38]
 + 15 * data[33]
 + data[6] * 60 * data[32]
 - 4 * data[30]
 - data[30]
 - 8 * data[36]
 - data[36]
 - data[11]
 + 8 * data[35]
 + 7 * data[0] == -119712 )
v6 = data[29];
s.add ( -11 * data[6]
 + 13 * v6
 + 13 * data[28]
 + v6
 + -7 * data[20]
 + 5 * data[16]
 + 15 * data[10]
 + 4 * data[41]
 + 2 * data[17]
 - 15 * data[18]
 - 10 * data[30]
 - 6 * data[24]
 + 13 * data[0]
 - 48 * data[43] * data[18]
 - 2 * data[7] == -586617 )

s.add ( 11 * data[18]
 - 8 * data[22]
 + 4 * data[17]
 - 9 * data[29]
 + 8 * data[14]
 - 8 * data[1]
 - 12 * data[38]
 + 2 * data[26]
 - 11 * data[14]
 + 6 * data[3]
 + data[39] * 3 * data[35]
 - 10 * data[16]
 + 22 * data[21] * data[29]
 + 14 * data[42] == 302239 )
v5 = data[20];
s.add ( 9 * data[0]
 + 9 * data[1]
 + data[6] * 156 * data[24]
 - 4 * data[32]
 - data[32]
 + 2 * data[39]
 + 15 * data[9]
 + 10 * data[24]
 - 4 * data[19]
 + 8 * v5
 + 4 * v5
 - 8 * data[23]
 - data[23]
 + 13 * data[40]
 - 7 * data[29]
 - 3 * data[36]
 - 12 * data[0] == 1457854 )
s.add ( 13 * data[1]
 + -3 * data[25]
 + data[28] * 150 * data[27]
 + -13 * data[43]
 + data[38] * 12 * data[0]
 - 4 * data[29]
 - data[10]
 - 2 * data[42]
 + 4 * data[26]
 - 8 * data[33]
 - 10 * data[12]
 + data[39] * 18 * data[24]
 + 13 * data[20] == 1675940 )
s.add ( 13 * data[5]
 + 13 * data[36]
 + 7 * data[9]
 - 15 * data[30]
 - 12 * data[43]
 + 11 * data[40]
 - 12 * data[18]
 + 12 * data[12]
 - 11 * data[18]
 - data[4] * 104 * data[0]
 - data[20] * 132 * data[1]
 - 8 * data[6]
 + 8 * data[19]
 - data[19]
 + 5 * data[14] == -2582478 )

assert s.check() == sat

m = s.model()
print m
print "".join([chr(m[data[i]].as_long()) for i in range(len(data))])

