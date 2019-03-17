#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

from sys import exit
from running import *
import random

parameter = 1
def back(banum):
    return banum * 123

def drawfunction(drnum):
    banum = (drnum + 60) * 10
    return back(banum)

def setpar(senum):
    drnum = senum / 20
    return drawfunction(drnum)

def hashs(hanum):
    senum = hanum * 20 + 80 * parameter
    return setpar(senum)

def games(ganum):
    hanum = ganum / 2 + 70
    return hashs(hanum)
def maths(manum):
    ganum = manum * 10 + 500
    return games(ganum)
    
def getparameter(parameter):
    number = parameter * 100
    return maths(number)
aa = 12
bb = 32
cc = 45
dd = 78
ee = 65
ff = 98

def answer():
    OO0OO0OO00O0O00OO = aa + bb + cc
    O000OO0000OO000O0 = bb + cc * dd
    OOO00O00O0OO0O000 = dd + ee * cc
    OOO000000OOO00000 = aa + cc * dd * ee
    O00O00000O0OO0OO0 = O000OO0000OO000O0 + O000OO0000OO000O0 + OO0OO0OO00O0O00OO * OO0OO0OO00O0O00OO + OOO00O00O0OO0O000 * OOO000000OOO00000 + OOO00O00O0OO0O000
    return str(O00O00000O0OO0OO0 % O000OO0000OO000O0)

r = remote("210.65.10.170", 9487)
p = int(r.recvline().split()[-1])

parameter = p
ans  = getparameter(parameter)
r.sendline(str(ans))
print answer() + r.recvline()
#r.interactive()
