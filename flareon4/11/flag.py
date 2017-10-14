
flag = ""
for i in [0x00035E8A,0x0002DF13,0x0002F58E,0x0002C89E,0x0003391B,0x0002C88D,0x0002F59B,0x00036D9C,0x00036616,0x000340A0,0x0002D79B,0x0002C89E,0x0002DF0C,0x00036D8D,0x0002EE0A,0x000331FF]:
    flag += chr(i / 1920) 
    flag += chr(((i/1920*1920) ^ 0x7f) - i)

print flag + "flare-on.com"
#subleq_and_reductio_ad_absurdum@flare-on.com
