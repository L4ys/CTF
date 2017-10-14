#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *
data = []

with open("./covfefe.exe") as f:
    f.seek(0xa08)
    for i in range(4478):
        data.append(u32(f.read(4)))
size = 0x1100 

code = {}


#i = int(sys.argv[1], 16)

def dis(adr):
    idx1 = data[adr]
    idx2 = data[adr+1]
    next = data[adr+2]

    dis = "%04X: %04X(%4X) %04X(%4X)|%04X" % (adr,idx1,data[idx1],idx2,data[idx2],next)

    if idx1 == idx2:
        if next:
            dis += " ; [%x] = 0, JMP %04X" % (idx1,next)
        else:
            dis += " ; [%x] = 0" % idx1
    elif next:
        dis += " ; if [%x] >= [%x] JMP %04X else %04X" % (idx1, idx2, next, adr+3)
    else:
        dis += " ; [%x] -= [%x]" % (idx2, idx1)

    dis = dis.replace("[0]", "R0")
    dis = dis.replace("[1]", "READ BUF")
    dis = dis.replace("[2]", "WRITE BUF")
    dis = dis.replace("[3]", "READ")
    dis = dis.replace("[4]", "WRITE")
    dis = dis.replace("[111]", "RAND")

    code[adr] = dis

nodes = [0x463, 0x5F5]
while len(nodes):
    adr = nodes.pop()
    #print "process %04X" % adr
    try:
        dis(adr)

        idx1 = data[adr]
        idx2 = data[adr+1]
        next = data[adr+2]

        if next and idx1 == idx2:  # JUMP, only one link
            if next not in nodes and next not in code:
                nodes.append(next)
        else:
            if next and next not in nodes and next not in code: # BRANCH
                nodes.append(next)
            if adr + 3 not in nodes and adr + 3 not in code and adr + 3 < 4352:
                nodes.append(adr+3)
    except:
        sys.stderr.write("exception @ %x\n" % adr)

for i in sorted(code):
    print code[i]
print len(code)
