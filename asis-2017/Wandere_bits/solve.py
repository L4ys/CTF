#!/usr/bin/env python
# -*- coding: utf-8 -*-

def e(flag):
    f = int(flag.encode('hex'), 16)
    a = int("a" * ( len(flag) * 2 ), 16)
    b = int("5" * ( len(flag) * 2 ), 16)

    fa = f & a
    fa >>= 1

    fb = f & b
    fb <<= 1 

    fab = fa | fb
    fab = ~fab
    fab = -fab
    return hex(fab)[2:-1]

print e("82a386a3b7983198313b363293399232349892369a98323692989a313493913036929a303abf".decode('hex')).decode('hex')
