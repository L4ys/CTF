#!/usr/bin/env python
# -*- coding: utf-8 -*-

# ref:http://thanat0s.trollprod.org/2014/01/loader-un-binaire-arduino-dans-ida/

with open("./remorse.ino") as f:
    f.seek(0xcea)
    ram = "\x00" * 0x100
    ram += f.read(0x46c)
    ram = ram.ljust(2048, "\x00")

    open("./RAM.bin", "wb").write(ram)

