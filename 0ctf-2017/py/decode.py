#!/usr/bin/env python
from dis import dis
import marshal
import sys

with open(sys.argv[1], "rb") as f:
    magic_and_timestamp = f.read(8)  # first 8 bytes are metadata
    code = marshal.load(f)           # rest is a marshalled code object

    print dis(code)
    print "================="
    print dis(code.co_consts[2])
    print "================="
    print dis(code.co_consts[3])
