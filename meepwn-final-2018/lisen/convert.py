#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

op = [
    "=",
    "<",
    ">",
    "&",
    "|",
    "^",
    "+",
    "-",
    "*",
    "/",
    "%",
    "!",
]

def isop(s):
    return any(x in op for x in s) and not (s[0] == '-' and s[-1] in "01234567890") or s in ["[4]", "[8]"]

def isdigit(s):
    return all(x in "0123456789" for x in s)

def post2infix(l):
    stack = []
    indent = False
    #print l
    for i in l:
        #print "process", i,
        #if i == "[8]" or i =="[4]":
        #    print "def", i
        #    pass
        if isop(i):
            if i in ["=[8]", "=[4]"]:
                i = "="
            #print "=> op, pop"
            if i in ["[4]", "[8]"]:
                a1 = stack.pop()
                if a1.startswith("rbp - "):
                    stack.append("%s" % (a1))
                else:
                    stack.append("def%s(%s)" % (i,a1))
            else:
                a1 = stack.pop()
                a2 = stack.pop()
                if isdigit(a1):
                    a1 = hex(int(a1))
                if isdigit(a2):
                    a2 = hex(int(a2))

                if a1.startswith("rbp - "):
                    a1 = "var%s" % a1.lstrip("rbp - 0x")
                if a2.startswith("rbp - "):
                    a2 = "var%s" % a2.lstrip("rbp - 0x")
                s = "%s %s %s" % (a1, i, a2)
                if "=" in i:
                    if indent:
                        print " " * 10,
                    else:
                        indent = True
                    print s + ";"
                else:
                    stack.append(s)
        else:
            #print "=> val, push"
            stack.append(i)
        #print stack
    #print stack


for line in open("./clean.txt").readlines():
    t = line.split()
    l = t[-1]
    if "," not in l or len(l) < 2:
        continue
    print t[0],
    l = l.split(",")
    post2infix(l)
