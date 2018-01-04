#!/usr/bin/env python
# -*- coding: utf-8 -*-

def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, y, x = egcd(b % a, a)
        return (g, x - (b // a) * y, y)

def modinv(a, m):
    g, x, y = egcd(a, m)
    if g != 1:
        raise Exception('modular inverse does not exist')
    else:
        return x % m

N = 191549949433723386840002778806410465057
p = 11268877353741609193
q = 16998139514769232249
e = 65537
d = modinv(e,(p-1)*(q-1))
c = int('vi\x8aL\x95\x9d\xbc\x83\x82\x94\x8c\xb8\xe2\xbc_S'.encode('hex'), 16)
m = pow(c,d,N)

print hex(m)[2:-1].decode('hex')

