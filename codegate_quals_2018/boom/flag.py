#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *

r = remote("ch41l3ng3s.codegate.kr", 8008)
r.send("""Know what? It's a new day~
57 14 23 13 50 7 14
17 24 1 8 15 23 5 7 14 16 4 6 13 20 22 10 12 19 21 3 11 18 25 2 9
31
1 1 1 1
""")
r.interactive()
# Enter This! 20aa4263ca767793739862600e72dacdf3514df0
