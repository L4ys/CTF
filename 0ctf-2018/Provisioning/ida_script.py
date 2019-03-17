import struct
p32 = lambda x: struct.pack("<I", x)

data = get_bytes(0x3fffc000, 0x402620b0-0x3fffc000)

for line in open("/Users/Lays/esp_iot_sdk_v0.9.3/ld/eagle.rom.addr.v6.ld"):
    t = line.replace(';', '').replace(')', '').split()
    if '=' not in t:
        continue
    name, addr = t[2], int(t[4], 16)
    print "%s @ 0x%x" % (name, addr)
    MakeUnkn(addr, 1)
    MakeFunction(addr)
    if len(Name(addr)) == 0:
        MakeName(addr, name)

    off = data.find(p32(addr))
    if off != -1:
        addr = off + 0x3fffc000
        print "access of %s @ 0x%x" % (name, addr)
        if len(Name(addr)) == 0:
            MakeUnkn(addr, 1)
            MakeName(addr, "addr_" + name)
