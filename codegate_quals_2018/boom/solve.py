#!/usr/bin/env python
# -*- coding: utf-8 -*-
import itertools


def solve2():
    print "ans for func2:"
    ror = lambda val, r_bits:\
        ((val & (2**32-1)) >> r_bits%32) | \
        (val << (32-(r_bits%32)) & (2**32-1))
    def crack(c):
        for j in range(256):
            a = ror(j, 3)
            a = ror(a ^ 0x62, 5)
            a = ror(a ^ 0x32, 7)
            a %= 47
            if c == "f7*zq5$ase0t6ui#^yd2owgb_n8pu4!k&vc@lrj19mx3h\0\0"[a]:
                return j

    #for i in range(255):
        #print crack(chr(i))
        #crack(i)
        #print ror(i, 3)

    print " ".join(str(crack(i)) for i in "carame1")
    print " ".join(str(crack(i)) for i in "w33kend")
    print " ".join(str(crack(i)) for i in "pand0ra")

def solve3():
    print "ans for func3:"
    for step in itertools.product("RLTB", repeat=6):
        cube = [
            7,1,6,
            3,5,9,
            8,2,4
        ]
        for s in step:
            if s == "R":
                t = cube[2]
                cube[2] = cube[5]
                cube[5] = cube[8]
                cube[8] = t
            elif s == "L":
                t  = cube[0]
                cube[0] = cube[3]
                cube[3] = cube[6]
                cube[6] = t
            elif s == "T":
                t = cube[0]
                cube[0] = cube[1]
                cube[1] = cube[2]
                cube[2] = t
            elif s == "B":
                t = cube[6]
                cube[6] = cube[7]
                cube[7] = cube[8]
                cube[8] = t

        if cube == list(range(1,10)):
            print "found: %s" % "".join(step)
            break

def solve5():
    print "ans for func5:"
    def func12(a1, n):
        # Collatz conjecture
        if n == 1:
            return a1 + 1
        elif n % 2:
            return func12(a1 + 1, 3 * n + 1)
        else:
            return func12(a1 + 1, n / 2)

    for i in range(1,255):
        if func12(0, i) == 107:
            print i
            break

def solve6():
    print "ans for func6:"
    for x in ["H_vocGfsg4p_xicwcrwexg4r", "G_veqijcGvi_qcL4rcGl4a44"]:
        s = ""
        for i,c in enumerate(x):
            if i % 5 == 1:
                s += chr(ord(c)+2)
            else:
                s += chr(ord(c)-4)
        print s

solve2()
solve3()
solve5()
solve6()
