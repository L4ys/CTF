import opcode  
for op in range(len(opcode.opname)):  
      print('0x%.2X(%.3d): %s' % (op, op, opcode.opname[op]))  
