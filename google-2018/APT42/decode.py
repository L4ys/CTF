def decode(addr):
    addr = PrevHead(addr)
    size = GetOperandValue(addr, 1)

    addr = PrevHead(addr)
    addr = PrevHead(addr)
    key = int(GetOpnd(addr, 1)[:-1], 16)

    addr = PrevHead(addr)
    addr = PrevHead(addr)
    data = GetOperandValue(addr, 1)
    plain = ""

    for i in range((size+3)/4)[::-1]:
        key = (0x5851F42D4C957F2D * key + 1) & 0xffffffffffffffff
        plain += "%08x" % (Dword(data+4*i) ^ (key >> 32))
    return plain.decode('hex')[::-1]

for x in XrefsTo(0x40AC41):
    d = decode(x.frm)
    print "0x%x" % x.frm, d

