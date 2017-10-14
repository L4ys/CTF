#!/usr/bin/env python
# -*- coding: utf-8 -*-

#def java_string_hashcode(s):
#    h = 0
#    for c in s:
#        h = (31 * h + ord(c)) & 0xFFFFFFFF
#    return ((h + 0x80000000) & 0xFFFFFFFF) - 0x80000000
#
#for i in range(20,128):
#    h = java_string_hashcode(chr(i)*2)
#    print chr(i), h
    
print "MYPRSHE__FTW"
print "hashtag_covfefe_Fajitas!"
key = ""
for i in [16,-82,-91,-108,-125,30,11,66,-71,86,-59,120,-17,-102,109,68,-18,57,-109,-115]:
    key += "%02x"  % (i & 0xff)
print key

key = ""
for i in [95,27,-29,-55,-80,-127,-60,13,-33,-60,-96,35,-127,86,0,-114,-25,30,36,-92]:
    key += "%02x"  % (i & 0xff)
print key

# pc_lo4d_l3tt3r_gl1tch@flare-on.com
