#!/usr/bin/env python
# -*- coding: utf-8 -*-

import re
import requests

s = open("./strings.txt").read()
users = re.findall("[A-Za-z0-9_]+\.[a-z0-9]{7,}", s)

for u in users:
    uname, psw = u.split(".")
    r = requests.post("http://master.quals.2018.volgactf.ru:3333/", data={"uname": uname, "psw": psw[:26]})
    if r.content != "No flag for you!":
        print uname, psw
        print r.content


