#!/usr/bin/env python
# -*- coding: utf-8 -*-
import re

prog = open("./program.txt").readlines()

def src_name(s):
    if s.startswith("*") :
        return {
            "*1": "RA",
            "*2": "RB" , 
            "*4": "idx", 
            "*5": "data[idx]",
            "*11": "(RA == 0)",
            "*12": "(RA < 0)"
        }[s]
    else:
        return s if int(s) <= 0x7fff else "-" + str(0x10000 - int(s))

i = 0
for line in prog:
    line = line.rstrip()
    if not line:
        print "%04X: NOP" % i
    else:
        dst = {"6": "RA", "7": "RB", "9": "idx", "10": "data[idx]", "13": "jmp offset"}[re.findall("%(\d+)\$h", line)[0]]
        src = re.findall("%14\$\.([^d$]*)", line)
        src = " + ".join([src_name(s) for s in src])
        size = ["word","byte"][line.endswith("hhn")]
        print "%04X: %s = %s (%s)" % (i, dst, src, size)

    i += 1

