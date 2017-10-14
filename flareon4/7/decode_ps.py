#!/usr/bin/env python
# -*- coding: utf-8 -*-
from Crypto.Cipher import AES
from pwn import *

data = open("./data").read().decode('base64')

class AESCipher(object):
    def __init__(self, key, iv, bs=32):
        self.bs = bs 
        self.iv = iv
        if len(key) >= bs:
            self.key = key[:bs]
        else:
            self.key = self.pad(key)

    def encrypt(self, plain):
        plain = self.pad(plain)
        cipher = AES.new(self.key, AES.MODE_CBC, self.iv)
        return cipher.encrypt(plain)

    def decrypt(self, enc):
        cipher = AES.new(self.key, AES.MODE_CBC, self.iv)
        return cipher.decrypt(enc)

    def pad(self, s):
        return s.ljust(self.bs, "\x00")

cipher = AESCipher("soooooo_sorry_zis_is_not_ze_flag", "\x00" * 16)
print cipher.decrypt(data)
