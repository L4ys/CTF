from capstone import *
from idaapi import *

def decode(buf):
    if not buf:
       return ""
    buf = bytearray(buf)
    key = [15, 11, 79, 62, 137, 172, 255, 129, 186, 126, 236, 204, 102, 41, 238, 16]                                                                                                               
    
    for i in range(len(buf)):
        v3 = (buf[i] - key[i]) & 0xff;
        buf[i] = (key[i] - v3) & 0xff;
    return str(buf)

def get_ins(code, base):
    #print code.encode('hex')
    md = Cs(CS_ARCH_X86, CS_MODE_32)
    ins = list(md.disasm(code, base))
    if len(ins) == 0:
        return 100, "fail"
    ins = ins[0]
    return ins.size, "%x: %s %s" % (ins.address, ins.mnemonic, ins.op_str)

print "=" * 100
for i in range(43):
    addr = get_dword(0x440000+i*8)
    orig = get_bytes(0x440000+i*8+4,2)    
    next_addr = get_dword(0x440000+(i+1)*8) 
        
    print "[+] Recover 0x%x:" % addr 
    ea = addr
    while True:
        ins = decode(get_bytes(ea, 16))
        offset = ea - addr
        if offset < 2:
            ins = orig[offset:] + ins[2-offset:]
        
        size, asm = get_ins(ins, ea)
        print asm
        # patch_bytes(ea, ins[:size])

        ea += size
        if ea >= next_addr or "jmp" in asm or "ret" in asm:
            break

    
    
