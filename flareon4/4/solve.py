#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

x = "\x37\xE7\xD8\xBE\x7A\x53\x30\x25\xBB\x38\x57\x26\x97\x26\x6F\x50\xF4\x75\x67\xBF\xB0\xEF\xA5\x7A\x65\xAE\xAB\x66\x73\xA0\xA3\xA1"
key =  "558bec8b4d0c5657".decode('hex')
key += "8B550852FF153020".decode('hex')
key += "C04050FFD683C408".decode('hex')
key += xor("e-on.com", x[-8:])

print xor(key,x)

