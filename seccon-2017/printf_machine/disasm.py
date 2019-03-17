#!/usr/bin/env python
# -*- coding: utf-8 -*-

import re

def name(idx):
    idx = int(idx)
    assert idx <= 64, "idx = %d" % idx
    if idx >= 49:
        return "input[%d]" % (idx-49)
    elif idx >= 33:
        return "data[%d]" % (idx-33)
    elif idx >= 17:
        return "input[%d]" % (idx-17)
    else:
        return "data[%d]" % (idx-1)

prog = open("./default.fs").readlines()
for line in prog:
    line = line.rstrip()

    dst = re.findall("%(\d+)\$h", line)
    if len(dst) == 2: # %4$hhn...
        print "%s = 0;" % name(dst[0])
    dst = name(dst[-1])
    
    src1 = re.findall("%2\$\*(\d+)\$s", line) # data
    src2 = re.findall("%2\$(\d+)s", line) # const
    src3 = re.findall("%(\d+)\$s", line) # bool

    src = []
    src += (name(s) for s in src1)
    src += src2
    src += ("(%s != 0);" % name(s) for s in src3)
    src = " + ".join(src) if src else "0"
    print "%s = %s;" % (dst, src)

