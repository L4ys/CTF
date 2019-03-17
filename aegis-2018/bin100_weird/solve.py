from Crypto.Cipher import AES
from pwn import *

c = p64(0x96795644313C3DBF)
c += p64(0xF99623B38CBCDC15)
c += p64(0x3736B5EFB478EB76)
c += p64(0xECA28FD763BCC2B0)
c += p64(0xE786DAB703798685)
c += p64(0xA8609F69B2576582)

aes = AES.new("D"*16, AES.MODE_CBC, IV="\x00"*16)
print aes.decrypt(c)

