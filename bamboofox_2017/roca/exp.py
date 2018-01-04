#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from commands import getoutput

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

r = remote("bamboofox.cs.nctu.edu.tw", 58800)

for i in range(5):
    r.recvuntil("========================\n")
    elf = r.recvuntil("===================================\n", drop=True).decode('base64')
    # seed1 = u32(elf[0x166b:0x166b+4])
    # log.info("seed = " + hex(seed1))
    
    r.recvline()
    N, e, c = [int(x, 16) for x in r.recvline().split(",")]
    log.info("N = %x" % N)
    log.info("e = %x" % e)
    log.info("c = %x" % c)
    
    write("elf", elf.replace("/dev/random", "xxxxxrandom"))
    write("xxxxxrandom", "0000")
    write("elf", elf)
    
    p = int(getoutput("./elf 1"), 16) + 1
    part_p = p  & int("ff" * 52 + "00" * 12, 16)
    
    log.info("part p = %x" % part_p)
    
    p = int(getoutput("~/sage/SageMath/sage ./cs.sage %x %x" % (N, part_p)), 16)
    assert N % p == 0
    log.success("p = " + hex(p))
    
    q = N / p
    d = modinv(e,(p-1)*(q-1))
    m = pow(c,d,N)
    r.sendline("%x" % m )

r.interactive()
