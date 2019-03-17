#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pyshark

out = [ord(' ')] * 90
xx = []

cap = pyshark.FileCapture("./broadcast.pcapng")
for packet in cap:
    ptype = int(packet.wlan.fc, 16) >> 8 # 0x88 or 0x08
    if ptype not in (0x08, 0x88):
        continue

    size = int(packet.data.len)
    flags = int(packet.wlan.flags, 16)

    if str(packet.wlan.sa) != "00:90:4c:5b:8f:24" or flags & 2 == 0:
        continue

    if hasattr(packet.wlan, "ccmp_extiv"):
        iv = int(packet.wlan.ccmp_extiv, 16)
        encmode = "ENCRY_CCMP"
        size -= 44
    if hasattr(packet.wlan, "tkip_extiv"):
        iv = int(packet.wlan.tkip_extiv, 16)
        encmode = "ENCRY_TKIP"
        size -= 44 # why not 48..?

    xx.append(size)
    if len(xx) == 10:
        # val
        a8 = (xx[6] - 1) & 0xff
        a6 = xx[8]
        a2 = (a6 - 1) & 0xff
        a8 = a8 & 0xf
        a2 <<= 4
        a2 |= a8
        a2 &= 0xff

        # idx
        a4 = 0xf
        a5 = (xx[2] - 1) & 0xff
        a7 = (xx[4] - 1) & 0xff
        a5 &= a4
        a7 <<= 4
        a5 = a7 | a5
        a4 = a5 & 0xff

        if (a4 < 90 and
            xx[0] == xx[1] == 0 and
            xx[2] + xx[3] == 17 and
            xx[4] + xx[5] == 17 and
            xx[6] + xx[7] == 17 and
            xx[8] + xx[9] == 17):

            out[a4] = a2
            print bytearray(out)

        xx = []

    #print "num: %d type: %02x size: %04d enc:%s iv: %08x" % (int(packet.number), ptype, size, encmode, iv)

