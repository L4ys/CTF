
from pwn import *
import string

def RC4(data, key):
    S = range(256);j = 0
    for i in range(256):
        j = (j + S[i] + ord(key[i%len(key)])) % 256
        S[i], S[j] = S[j], S[i]
    i = j = 0
    res = ""
    for d in data:
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        res += chr(ord(d) ^ S[(S[i] + S[j]) % 256])
    return res

"""
F1 = {}
F2 = {}
for i in range(0, 50000):
    F1[i] = RC4(flag1, str(i))
    F2[i] = RC4(flag2, str(i))

for i in F1:
    if all(ord(x) < 0x10 for x in F1[i]):
        print i
for i in F2:
    if all(ord(x) < 0x10 for x in F2[i]):
        print i
"""

data = read("flag")
f = RC4(data[:36], "28009") + RC4(data[36:], "28789")
t = [0x35, 0x2E, 0x37, 0x3B, 0x40, 0x16, 0x1E, 0x04, 0x14, 0x0F, 0x1F, 0x29, 0x33, 0x44, 0x1B, 0x0E, 0x22, 0x42, 0x15, 0x30, 0x21, 0x46, 0x03, 0x11, 0x23, 0x19, 0x0C, 0x31, 0x2C, 0x3F, 0x38, 0x3C, 0x01, 0x0B, 0x13, 0x0A, 0x32, 0x3E, 0x39, 0x34, 0x24, 0x08, 0x2A, 0x02, 0x06, 0x1A, 0x2D, 0x28, 0x47, 0x45, 0x2F, 0x3D, 0x18, 0x09, 0x27, 0x20, 0x41, 0x05, 0x00, 0x3A, 0x0D, 0x1C, 0x17, 0x43, 0x12, 0x36, 0x1D, 0x10, 0x2B, 0x26, 0x07, 0x25]

flag = [0] * 36
for i in range(72):
    idx = t[i]/2
    if t[i] & 1:
        flag[idx] |= ord(f[i]) << 4
    else:
        flag[idx] |= ord(f[i])

print bytearray(flag)
