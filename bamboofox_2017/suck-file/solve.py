#!/usr/bin/env python
# -*- coding: utf-8 -*-

import zipfile

fname = "a79cc81251ba4c66ed91ccd01b423598818a76cf"

while True:
    try:
        data = open(fname).read()
        if data.startswith("pk"):
            open(fname, "wb").write("PK" + data[2:])

        z = zipfile.ZipFile(fname)
        fname = z.namelist()[0]
        print fname
        z.extractall()
    except:
        break

