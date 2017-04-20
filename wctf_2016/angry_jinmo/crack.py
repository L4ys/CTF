#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *

name = "blackhacker's PC"

for i in range(0xffffff):
    vol = "09" + hex(i)[2:].rjust(6, "0")
    plain = "%s:%s:what_is_right_what_is_wrong_who_are_you_what_s_your_name_say_my_name_say_my_name" % (vol, name)
    if i % 0x100000 == 0:
        print "Current: " + plain
    if md5sumhex(plain) == "bd9e8340b617a3651f2e52842888f962":
        print "Found!"
        print plain
        break
