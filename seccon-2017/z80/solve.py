out = []

k = 3
while len(out) != 10:
    k = a = (k + 0x45) & 0xff
    if a >= 0x21 and a < 0x7b:
	out.append(a)

print "SECCON{%s}" % "".join(chr((x&0xfc)|((x&2)>>1)|((x&1)<<1)) for x in out)
