#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *

# msvcrt rand
def rand(seed):
    new_seed = (0x343fd * seed + 0x269ec3) & ((1 << 32) - 1)
    randval = (new_seed >> 16) & 0x7fff
    return randval, new_seed

def RC4(data, key):
    S = range(256);j = 0
    for i in range(256):
        j = (j + S[i] + ord(key[i%len(key)])) % 256
        S[i], S[j] = S[j], S[i]
    j = 0
    i = 0
    res = ""
    for d in data:
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        res += chr(ord(d) ^ S[(S[i] + S[j]) % 256])
    return res

rva2file = lambda x: x-0x1000+0x400
file2rva = lambda x: x-0x400+0x1000

# decode exports
code = ""
dll = open("./payload.dll").read()
for i in range(26):
    seed = 0x52414E44 + i
    for b in dll[0x400+512*i:0x400+512*(i+1)]:
        r, seed = rand(seed)
        code += chr(ord(b) ^ (r&0xff))

open("./payload_decode.dll", "wb").write(dll[:0x400] + code + dll[0x400+512*26:])

# get function names
names = []
dll = open("./payload_decode.dll").read()
for i in range(26):
    data = dll[0x400+512*i:0x400+512*(i+1)]
    Characteristics = u32(data[0:4])
    Time            = u32(data[4:8])
    MajorVer        = u16(data[8:10])
    MinorVer        = u16(data[10:12])
    Name            = u32(data[12:16])
    Base            = u32(data[16:20])
    FuncNum         = u32(data[20:24])
    NameNum         = u32(data[24:28])
    FuncAddr        = u32(data[28:32])
    NameAddr        = u32(data[32:36])
    OrdAddr         = u32(data[36:40])

    offset = rva2file(NameAddr)
    offset = rva2file(u32(dll[offset:offset+4]))
    name = dll[offset:].split("\x00")[0]
    names.append(name)
    print name

    offset = rva2file(FuncAddr)
    offset = (u32(dll[offset:offset+4]))
    #print hex(offset)
    
# decode functions
functions = [0x4770, 0x4820, 0x48D0, 0x4980, 0x4A30, 0x4AE0, 0x4B90, 0x4C40, 0x4CF0, 0x4DA0, 0x4E50, 0x4F10, 0x4FD0, 0x5090, 0x5150, 0x5210, 0x52D0, 0x5390, 0x5450, 0x5510, 0x55D0, 0x5690, 0x5750, 0x5810, 0x58D0, 0x5990, 0x5a50]

codes = ""
for i in range(len(functions)-1):
    code = dll[rva2file(functions[i]):rva2file(functions[i+1])]
    codes += RC4(code, names[i])
    
#open("./payload_decode2.dll", "wb").write(dll[:0x3b70] + codes + dll[0x5a50:])

# dump flag from asm
context.arch = "i386"
s = "".join(i for i in re.findall("BYTE PTR .+,0x(..)", disasm(codes))).decode('hex')
print "".join(re.findall("0x(..)", s)).decode('hex')

#wuuut-exp0rts@flare-on.com

