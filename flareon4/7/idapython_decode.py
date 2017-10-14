def find_function_arg(addr):
  while True:
    addr = idc.PrevHead(addr)
    addr = idc.PrevHead(addr)
    data = GetOperandValue(addr, 0)
    addr = idc.PrevHead(addr)
    addr = idc.PrevHead(addr)
    key = GetOperandValue(addr, 1)
    return (key, data)

def decrypt(key, data):
  if key < 1000:
      return ""
  v9 = key
  key &= 0xff
  out = ""
  i = 0
  while True:
      b = Byte(data+i) ^ (key & 0xff)
      if b == 0:
          break
    
      key = (v9 >> 24) + (v9 << 8)&0xffffffff;
      v9 = (v9 >> 24) + (v9 << 8)&0xffffffff;
      out += chr(b)
      i += 1
      
  return out
  
def SetCmt(ea, cmt):
    cfunc = decompile(ea)
    tl = idaapi.treeloc_t()
    tl.ea = ea
    tl.itp = idaapi.ITP_SEMI
    if cfunc:
      cfunc.set_user_cmt(tl, cmt)
      cfunc.save_user_cmts()
    else:
      print "Decompile failed:0x%x" % ea
    
print "[*] Attempting to decrypt strings in malware"
for x in XrefsTo(0x401113, flags=0):
  ref = find_function_arg(x.frm)
  p = decrypt(ref[0], ref[1])
  print "Ref Addr: 0x%x | Decrypted: %s" % (x.frm,p) 
  SetCmt(x.frm, p)
 
for x in XrefsTo(0x40107D, flags=0):
  ref = find_function_arg(x.frm)
  p = decrypt(ref[0], ref[1])
  print "Ref Addr: 0x%x | Decrypted: %s" % (x.frm,p) 
  SetCmt(x.frm, p)
