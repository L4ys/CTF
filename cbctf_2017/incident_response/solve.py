#!/usr/bin/env python
# -*- coding: utf-8 -*-

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

key = "b0f870fb7587c0482bb7f7c1f7391f9e66de2cd92558ca1f87f2df232fedc7da".decode('hex')
data = "".join(x.rstrip() for x in open("./data").readlines()).decode('hex')

print RC4(data[32:], data[:32])
