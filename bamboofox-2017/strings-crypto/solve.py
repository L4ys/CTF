#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pyDes

if __name__ == '__main__':

    r = "\x95\x06\x0B\xD5\x4E\x0A\xA8\x2E\x2D\x78\x42\xE1\x36\xAA\x9B\xEA\x41\x4F\xA7\x1A\xF2\xA2\x82\x24"
    key = "XOFOOBAM"

    d = pyDes.des(key, pyDes.CBC, "\x00"*8)
    print d.decrypt(r)
