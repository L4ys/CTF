#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *
from paddingoracle import BadPaddingException, PaddingOracle
from base64 import b64encode, b64decode
import logging
#logging.basicConfig(level=logging.DEBUG)

r = remote("bamboofox.cs.nctu.edu.tw", 58792)
i = 0

class PadBuster(PaddingOracle):
    def __init__(self, **kwargs):
        super(PadBuster, self).__init__(**kwargs)
        self.wait = kwargs.get('wait', 0.0)

    def oracle(self, data, **kwargs):
        global i
        global r
        somedata = b64encode(data)
        i += 1

        if i == 5000:
            i = 0
            r.close()
            r = remote("bamboofox.cs.nctu.edu.tw", 58792)

        r.sendlineafter(":", somedata)

        if "NO, padding is invalid" in r.recvline():
	    raise BadPaddingException

	print('No padding exception raised on %r', somedata)

cipher = "XmmSv7+azqHCSPwBYfsVKVoqq+NpOaWrRHOYlLn3GlRAg4kdAVmEdc5L9koCHcxl5U0Ee28wMqTNdZYzd/BOaynUpmthknT0QdVGLXpx5Oko7QiK7+I0UVFhi8MP0+YFigbKhXMGzuv7ySqhnakeaRhaRGjRvVShMmjL0vitvuw="
encrypted_flag = b64decode(cipher)

padbuster = PadBuster()
flag = padbuster.decrypt(encrypted_flag, block_size=16, iv=bytearray("STARWAR888888888"))

print 'Decrypted flag: => %r' % flag

r.interactive()
# BAMBOOFOX{mAY_THE_Cbc_Be_WlTh_Y0U!!!}
