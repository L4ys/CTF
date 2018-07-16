from pwn import *
import os
context.arch = "amd64"
os.system("cp baby_injector_orig.exe baby_injector2.exe")
with open("baby_injector2.exe", "r+") as f:
    f.seek(0x11fb)
    f.write("\x90" * (0x1245-0x11fb))
    f.seek(0x11fb)
    f.write(asm("""
    mov rax, -1
    mov qword ptr[0x413060], rax
    mov rax, gs:0x30
    mov eax, [eax+0x40]
    mov qword ptr[0x413070], rax
    """))
