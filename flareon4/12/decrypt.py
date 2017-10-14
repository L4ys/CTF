#!/usr/bin/env python
# -*- coding: utf-8 -*-
from Crypto.Cipher import AES

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
        return self.unpad(cipher.decrypt(enc))

    def pad(self, s, bs=32):
	return s + (bs - len(s) % bs) * chr(bs - len(s) % bs)

    def unpad(self, s):
	return s[:-ord(s[-1])]

cry = open("./lab10.zip.cry").read()
key = "tCqlc2+fFiLcuq1ee1eAPOMjxcdijh8z0jrakMA/jxg=".decode('base64')
header 	= cry[0:4]
iv 	= cry[4:20]
sha256 	= cry[20:52]
#print sha256.encode('hex')

cipher = AESCipher(key, iv)
open("lab10.zip", "wb").write(cipher.decrypt(cry[52:]))
# infectedinfectedinfectedinfectedinfectedinfectedinfectedinfected919
