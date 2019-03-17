#!/usr/bin/env python

import random, string, sys, os
from time import time
from Crypto.Cipher import AES
import base64
from PIL import Image
from PIL import ImageFont
from PIL import ImageDraw
from PIL import ImageFilter
import textwrap
from io import BytesIO


def get_iv(time):
    iv = ""
    random.seed(int(time))
    for i in range(0,16):
        iv += random.choice(string.letters + string.digits)
    return iv

def encrypt(m, p):
    iv=get_iv()
    aes = AES.new(p, AES.MODE_CFB, iv)
    return base64.b64encode(aes.encrypt(m))

def decrypt(m, p, i):
    aes = AES.new(p, AES.MODE_CFB, i)
    return aes.decrypt(base64.b64decode(m))

def find_images():
    i = []
    #for r, d, f in os.walk(os.environ['HOME']):
    for r, d, f in os.walk("."):
        for g in f:
            if g.endswith(".png"):
                i.append((os.path.join(r, g)))
    return i

def decrypt_images():
    for i in find_images():
        iv = get_iv(os.path.getmtime(i))
	open(i + ".decoded.png", "wb").write(decrypt(open(i, "rb").read().split("\n")[-1], "Hb8jnSKzaNQr5f7p", iv))

if __name__ == '__main__':
    decrypt_images()

