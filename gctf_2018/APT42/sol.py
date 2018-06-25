#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

r = remote("mlwr-part1.ctfcompetition.com", 4242)
key = randoms(8)

def checksum(data):
    s = 0
    for c in data:
        s ^= ord(c)
    return s

def Send(data):
    p = p32(len(data) + 10)
    p += key
    p += data + "\x00"
    p += chr(checksum(key + data))
    r.send(p)

def Recv():
    size = u32(r.recv(4))
    data = r.recv(size)[8:]
    return data[:-1]

Send("part1 flag")
print Recv()
r.close()
