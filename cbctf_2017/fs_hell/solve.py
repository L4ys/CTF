#!/usr/bin/env python
# -*- coding: utf-8 -*-
from ctypes import *

data = [0] * 1000
idx = 288 
idx = idx + 11
data[idx] = data[idx] + 87
idx = idx + 22
data[idx] = data[idx] + 52
idx = idx + -22
data[idx] = data[idx] + 109
idx = idx + 26
data[idx] = data[idx] + 56
idx = idx + -13
data[idx] = data[idx] + 44
idx = idx + -10
data[idx] = data[idx] + 84
idx = idx + 7
data[idx] = data[idx] + 179
idx = idx + -14
data[idx] = data[idx] + 92
idx = idx + 10
data[idx] = data[idx] + 15
idx = idx + 3
data[idx] = data[idx] + 88
idx = idx + -1
data[idx] = data[idx] + 114
idx = idx + 11
data[idx] = data[idx] + 37
idx = idx + 6
data[idx] = data[idx] + 175
idx = idx + -31
data[idx] = data[idx] + 100
idx = idx + 13
data[idx] = data[idx] + 3
idx = idx + -2
data[idx] = data[idx] + 32
idx = idx + -3
data[idx] = data[idx] + 181
idx = idx + -7
data[idx] = data[idx] + 48
idx = idx + 18
data[idx] = data[idx] + 52
idx = idx + 10
data[idx] = data[idx] + 129
idx = idx + -9
data[idx] = data[idx] + 68
idx = idx + 7
data[idx] = data[idx] + 39
idx = idx + -30
data[idx] = data[idx] + 204
idx = idx + 25
data[idx] = data[idx] + 30
idx = idx + -7
data[idx] = data[idx] + 91
idx = idx + 3
data[idx] = data[idx] + 2
idx = idx + 6
data[idx] = data[idx] + 212
idx = idx + -22
data[idx] = data[idx] + 43
idx = idx + 9
data[idx] = data[idx] + 113
idx = idx + 16
data[idx] = data[idx] + 9
idx = idx + -29
data[idx] = data[idx] + 117
idx = idx + 23
data[idx] = data[idx] + 45
idx = idx + 2
data[idx] = data[idx] + 13
idx = idx + 7
data[idx] = data[idx] + 164
idx = idx + 3
data[idx] = data[idx] + 39
idx = idx + -15
data[idx] = data[idx] + 13
idx = idx + -14
data[idx] = data[idx] + 218
idx = idx + 9
data[idx] = data[idx] + 5
idx = idx + -10
data[idx] = data[idx] + 216
idx = idx + -7
data[idx] = data[idx] + 65
idx = idx + 4
data[idx] = data[idx] + 125
idx = idx + 5
data[idx] = data[idx] + 225
idx = idx + -7
data[idx] = data[idx] + 97
idx = idx + -3
data[idx] = data[idx] + 67
idx = idx + 27
data[idx] = data[idx] + 18
idx = idx + -1
data[idx] = data[idx] + 68
idx = idx + 8
data[idx] = data[idx] + 22
idx = idx + -30
data[idx] = data[idx] + 119
idx = idx + 29
data[idx] = data[idx] + 110
idx = idx + -11
data[idx] = data[idx] + 36
idx = idx + -9
data[idx] = data[idx] + 4
idx = idx + 18
data[idx] = data[idx] + 34
idx = idx + -16
data[idx] = data[idx] + 227
idx = idx + -5
data[idx] = data[idx] + 5
idx = idx + -6
data[idx] = data[idx] + 23
idx = idx + 8
data[idx] = data[idx] + 49
idx = idx + 18
data[idx] = data[idx] + 84
idx = idx + -2
data[idx] = data[idx] + 10
idx = idx + -11
data[idx] = data[idx] + 30

for i in range(256):
    data[513 + i] = 0xff - i

j = 0
k = 0
flag = ""
for i in range(39):
    for c in range(ord(" "), ord("~")):
        RB = c * (2 ** j)
        RA = c_ubyte(((RB >> 8) & 0xff) + (RB & 0xff))
        RA.value += data[512+k]
        RB = data[288+i]
        RA.value += data[512+RB]
        if RA.value == 0:
            k = RB
            flag += chr(c)
            break

    j += 1
    if j == 8:
        j = 0
print flag
