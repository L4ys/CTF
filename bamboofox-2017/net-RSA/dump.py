#!/usr/bin/python3
# -*- coding: utf-8 -*-
import pickle
import Crypto

key = pickle.load(open("./key", "rb"))
print(key.exportKey())
print(dir(key.publickey().key))
print(key.e)
print(key.n)

cipher = pickle.load(open("./c", "rb"))
print(cipher)
