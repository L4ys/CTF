#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
import os
import sys
sys.path.append("./bin/")

MODE_SERVER = 0
MODE_CLIENT = 1
DUMP_FILE = True

# for dump files
send_data = ""
recv_data = ""
plugin_data = ""
file_name = ""
file_data = ""
bmp_body = ""
bmp_header = ""

def dump(name, data):
    if DUMP_FILE:
        if not os.path.exists("dump"):
            os.makedirs("dump")
        open("./dump/" + name, "wb").write(data)

def save_bmp():
    bmp = "BM"
    bmp += p32(len(bmp_header)+len(bmp_body)+14)
    bmp += p32(0)
    if len(header) == 40:
        bmp += p32(1078)
    else:
        bmp += p32(54)
    bmp += bmp_header
    bmp += bmp_body
    log.success("Save BMP...")
    dump("screen_%d.bmp" % len(bmp), bmp)

def save_dll(plugin_id, plugin_type):
    global plugin_data
    # decrypt dll
    dll = bytearray(plugin_data)
    # MZ 
    dll[0] = "\x4d"
    dll[1] = "\x5a"
    # PE
    nt = u16(dll[0x3c:0x3e])
    dll[nt] = "\x50"
    dll[nt+1] = "\x45"
    dll[nt+2] = "\x00"
    dll[nt+4] = "\x4c"
    dll[nt+5] = "\x01"
    # Fix entry point
    dll[nt+40] ^= 0xcd
    dll[nt+41] ^= 0xab
    dll[nt+42] ^= 0xcd
    dll[nt+43] ^= 0xab
    
    log.success("Dump plugin %s (%s)..." % (plugin_id,plugin_type))
    dump("./plugin_%s_%s.dll" % (plugin_id, plugin_type), dll)
    plugin_data = ""

def RC4(data, key):
    S = range(256);j = 0
    for i in range(256):
        j = (j + S[i] + ord(key[i%len(key)])) % 256
        S[i], S[j] = S[j], S[i]
    j = 0
    i = 0
    res = ""
    for d in data:
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        res += chr(ord(d) ^ S[(S[i] + S[j]) % 256])
    return res

def decompress(header, body, compressor_id):
    if compressor_id == "f37126ad88a5617eaf06000d424c5a21":   # default
        return body
    elif compressor_id == "5fd8ea0e9d0a92cbe425109690ce7da2": # zlib
        import zlib
        return zlib.decompress(body)
    elif compressor_id == "503b6412c75a7c7558d1c92683225449": # aplib
        import aplib
        return aplib.depack_safe(body)
    elif compressor_id == "0a7874d2478a7713705e13dd9b31a6b1": # lzo1x
        with context.local(log_level='ERROR'):
            try:
                p = process(["./bin/lzo", str(len(body))])
                p.send(body)
                plain = p.readline()[:-1].decode('hex')
                p.close()
            except:
                # FIXME: lzo seg fault ?_?
                return
            return plain
    else:
        log.warning("Unknown Compressor: %s" % compressor_id)

def decrypt(header, body, cryptor_id):
    if cryptor_id == "51298f741667d7ed2941950106f50545":   # default
        return body

    elif cryptor_id == "c30b1a2dcb489ca8a724376469cf6782": # rc4
        key = header[36:52]
        return RC4(body, key)

    elif cryptor_id == "38be0f624ce274fc61f75c90cb3f5915":
        m = [0xC7,0x19,0x30,0x0C,0xA8,0x10,0xAD,0xD5,0xD4,0x16,0x52,0xFC,0x1B,0x82,0x7D,0x32,0x34,0x01,0xE6,0x4C,0x12,0x08,0x2B,0xF7,0xAC,0x8B,0x3F,0x67,0x48,0x72,0x21,0xDC,0xED,0xF6,0x85,0xB8,0x4F,0x5F,0x53,0x0A,0x04,0x28,0xDF,0xD8,0x7E,0x06,0x3D,0x03,0x40,0x36,0x68,0x73,0x25,0xB7,0x5D,0x1E,0xD2,0x0D,0xC6,0xC3,0x22,0xF2,0x20,0x0E,0x17,0xCC,0x60,0x5C,0x51,0xC2,0x1D,0x4A,0xCB,0x33,0x1C,0xF8,0x66,0x83,0x6B,0x3E,0x27,0xE3,0x9F,0xF5,0x3A,0xAA,0x8A,0x26,0x7F,0x5A,0x42,0xCF,0x7C,0x07,0x58,0x71,0xEB,0x05,0xBA,0x29,0x4B,0x7A,0xE0,0xEC,0x9A,0x7B,0x2E,0x37,0xFE,0xA4,0xBE,0x49,0xDE,0x00,0xC5,0xBB,0x96,0xE9,0xC4,0x79,0x99,0x87,0xF4,0x13,0x1A,0x15,0x63,0xF9,0xA0,0xD1,0x02,0xD6,0x09,0x1F,0xE5,0x92,0x6A,0xE7,0x18,0x43,0x91,0x6E,0x41,0xC8,0xA3,0xB2,0x2C,0xEE,0x8D,0xA6,0x5B,0xEF,0x24,0xB9,0x75,0x57,0x0F,0x6F,0x11,0x47,0x9B,0x3B,0x76,0xE1,0x9D,0x64,0x54,0xA7,0xC1,0x55,0xB3,0x89,0x31,0xFD,0xAB,0xB1,0x94,0xB6,0x14,0x2F,0xF3,0xBC,0x69,0xBF,0xA1,0x80,0x59,0x0B,0xBD,0xC9,0x2A,0xD7,0x81,0x3C,0x23,0xD3,0xF1,0xFA,0xEA,0x39,0x38,0x9E,0x5E,0xB5,0x45,0x61,0xFF,0x4E,0x77,0x4D,0x65,0x9C,0xE8,0xD9,0x93,0xAF,0x50,0xA2,0x84,0x88,0x78,0x98,0xE2,0x86,0xCE,0xDD,0x8C,0x8E,0xA9,0x95,0x70,0xAE,0xE4,0xCA,0x62,0xCD,0x90,0xC0,0xFB,0xB0,0xDB,0xB4,0xD0,0x97,0xF0,0x2D,0x46,0xDA,0x6C,0x6D,0x44,0x74,0xA5,0x8F,0x56,0x35]
        return "".join(chr(m[ord(i)]) for i in body)

    elif cryptor_id == "ba0504fcc08f9121d16fd3fed1710e60": # base64
        import string
        import base64
        STANDARD_ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        CUSTOM_ALPHABET = 'B7wAOjbXLsD+S24/tcgHYqFRdVKTp0ixlGIMCf8zvE5eoN1uyU93Wm6rZPQaJhkn'
        ENCODE_TRANS = string.maketrans(STANDARD_ALPHABET, CUSTOM_ALPHABET)
        DECODE_TRANS = string.maketrans(CUSTOM_ALPHABET, STANDARD_ALPHABET)
        return base64.b64decode(body.translate(DECODE_TRANS))

    elif cryptor_id == "b2e5490d2654059bbbab7f2a67fe5ff4": # XTEA
        key = header[36:52]
        iv = header[52:60]
        with context.local(log_level='ERROR'):
            p = process(["./bin/xtea", str(len(body))])
            p.send(key)
            p.send(iv)
            p.send(body)
            plain = p.readline()[:-1].decode('hex')
            p.close()
        return plain
    elif cryptor_id == "2965e4a19b6e9d9473f5f54dfef93533": # Blowfish
        key = header[36:52]
        iv = header[52:60]
        with context.local(log_level='ERROR'):
            p = process(["./bin/bf", str(len(body))])
            p.send(key)
            p.send(iv)
            p.send(body)
            plain = p.readline()[:-1].decode('hex')
            p.close()
        return plain
    elif cryptor_id == "8746e7b7b0c1b9cf3f11ecae78a3a4bc": # XOR
        key = header[36:40]
        return xor(body, key)
    elif cryptor_id == "46c5525904f473ace7bb8cb58b29968a": # 3DES
        key = header[36:60]
        iv = header[60:68]
        with context.local(log_level='ERROR'):
            p = process(["./bin/des", str(len(body))])
            p.send(key)
            p.send(iv)
            p.send(body)
            plain = p.readline()[:-1].decode('hex')
            p.close()
        return plain
    elif cryptor_id == "9b1f6ec7d9b42bf7758a094a2186986b": # Camellia
        key = header[36:52]
        with context.local(log_level='ERROR'):
            p = process(["./bin/camellia", str(len(body))])
            p.send(key)
            p.send(body)
            plain = p.readline()[:-1].decode('hex')
            p.close()
            return plain
    else:
        log.warning("Unknown Cryptor: %s" % cryptor_id)
        

def handle_cmd(header, buf, processor_id):
    global file_name
    global file_data
    cmd = u32(header[4:8])

    if processor_id == "155bbf4a1efe1517734604b9d42b80e8":
        default_process(header, cmd, buf, mode)
    elif processor_id == "f46d09704b40275fb33790a362762e56": # CMD
        if cmd == 1:
            log.info(" Shell  | Start")
        elif cmd == 2:
            log.info(" Shell  | Close")
        elif cmd == 3:
            log.info(" Shell  | cmd | %s" % buf.replace("\r\n", "\\r\\n").split("\x00")[0] )
        elif cmd == 4:
            log.info(" Shell  | response:\n%s" % buf.split("\x00")[0])
        else:
            log.warning("  Shell  | %d" % cmd)

    elif processor_id == "f47c51070fa8698064b65b3b6e7d30c6": # Disk
        if cmd == 1:
            log.info("  Disk  | Get Info")
        elif cmd == 2:
            log.info("  Disk  | List Directory | %s" % buf[:260].decode('utf16').rstrip("\x00"))
        elif cmd == 3:
            if mode == MODE_CLIENT:
                log.info("  Disk  | Download")
            else:
                file_name = buf[16:].decode('utf16').rstrip("\x00") 
                log.info("  Disk  | Download | %s" % file_name)

        elif cmd == 4 and mode == MODE_CLIENT:
            fid = buf[:16].encode('hex')
            sent = u64(buf[16:24])
            size = u64(buf[24:32])
            block = u64(buf[32:40])
            if sent == size:
                sha1 = buf[:20].encode('hex')
                log.info("  Disk  | Download | ID: %s | Finished | SHA1: %s" % (fid, sha1))
                log.success("Dump file %s.bin ..." % fid)
                dump("%s.dump" % sha1, file_data)
            else:
                log.info("  Disk  | Download | ID: %s | File Response %d bytes (%d/%d) " % (fid, block, sent, size))
                file_data += buf[40:40+block]
        elif cmd == 5:
            log.info("  Disk  | Close File")
        elif cmd == 6:
            if mode == MODE_CLIENT:
                log.info("  Disk  | Upload")
            else:
                fname = buf[52:].decode('utf16').rstrip("\x00")
                fid = buf[:16].encode('hex')
                size = u32(buf[24:28])
                _ = u32(buf[28:32])
                sha1 = buf[32:52].encode('hex')
                log.success("  Disk  | Upload: %s | %s | Size: %d | SHA1: %s" % (fname, fid, size, sha1) )

                file_data = ""
                file_name = fname.split("\\")[-1]
        elif cmd == 7:
            if mode == MODE_CLIENT:
                log.info("  Disk  | Upload")
            else:
                sha1 = buf[:16].encode('hex')
                written = u32(buf[16:20])
                size = u32(buf[24:28])
                block = u32(buf[32:36])

                if block == 0:
                    log.info("  Disk  | Upload: %s | Finished (%d/%d)" % (sha1, written, size))
                    log.success("Dump file %s..." % file_name)
                    dump(file_name, file_data)
                else:
                    log.info("  Disk  | Upload: %s | %d bytes (%d/%d)" % (sha1, block, written, size))
                    file_data += buf[40:40+block]
        else:   
            log.warning("  Disk  | %d" % cmd)

    elif processor_id == "a3aecca1cb4faa7a9a594d138a1bfbd5": # Screen Shot
        global bmp_header
        global bmp_body
        if cmd == 1:
            a = u32(buf[:4])
            bit = u32(buf[4:8])
            log.info(" Screen | bit: %d %d" % (a, bit))
        elif cmd == 2 and mode == MODE_CLIENT:
            size = u32(buf[:4])
            bmp_header = buf[4:]
            w = u32(bmp_header[4:8])
            h = u32(bmp_header[8:12])
            bit = u16(bmp_header[14:16])
            log.info(" Screen | Response Header | size: %d | (%d x %d) %d bit" % (size, w, h, bit))
        elif cmd == 3:
            sent = u32(buf[0:4])
            size = u32(buf[4:8])
            block = u32(buf[8:12])
            log.info(" Screen | Response | %d (%d/%d)" % (block, sent, size, ))
            bmp_body = bmp_body.ljust(sent, "\0")
            bmp_body += buf[12:block+12]
            if sent + block == size:
                save_bmp()
        else:
            log.warning(" Screen | %d" % cmd)

    elif processor_id == "77d6ce92347337aeb14510807ee9d7be": # Socket
        global send_data
        global recv_data 
        if cmd == 1:
            if mode == MODE_CLIENT:
                log.info("Connect | ")
            else:
                host = buf[4:].rstrip("\x00")
                port = u32(buf[0:4])
                log.info("Connect | host: %s | port %d" % (host,port))

            send_data = ""
            recv_data = ""
        elif cmd == 2:
            # server closed the connection
            log.info("Connect | Close")
            if send_data:
                log.success("Dump send data to server2.bin...")
                dump("server2.bin", send_data)
        elif cmd == 3:
            if mode == MODE_SERVER:
                log.info("Connect | Send: %d bytes" % len(buf))
                send_data += buf
            else:
                log.info("Connect | Recv: %d bytes" % len(buf))
                recv_data += buf
                if len(buf) == 0 and recv_data:
                    log.success("Dump recv data to client2.bin...")
                    dump("client2.bin", recv_data)

        elif cmd == 4:
            log.info("Connect | Recv")
        else:
            log.warning("Connect | %d" % cmd)
    else:
        log.warning("Unknown processer %s" % processor_id)
    

def default_process(header, cmd, buf, mode):
    global plugin_data
    if cmd == 2:
        log.info("Default | IsAuthed")
    elif cmd == 3:
        if mode == MODE_CLIENT:
            rand    = buf[:16].encode('hex')
            version = buf[16:80].rstrip("\x00")
            comname = buf[80:208].decode('utf16').rstrip("\x00")
            user    = buf[208:336].decode('utf16').rstrip("\x00")
            group   = buf[336:848].decode('utf16').rstrip("\x00")
            token   = u32(buf[848:852])
            mode    = u32(buf[852:856])
            lcid    = u32(buf[856:860])
            major_ver = u32(buf[860:864])
            min_ver = u32(buf[864:868])
            buildnum = u32(buf[868:872])
            platform = u32(buf[872:876])
            log.info("Default | Computer Info")
            log.info("Rand: %s | Version: %s" % (rand,version))
            log.info("Computer: %s | User: %s | Group: %s" % (comname,user,group))
            log.info("Token: %d | Mode: %d | Lang: %d" % (token,mode,lcid))
            log.info("Version: %d.%d Build %d | Platform: %08X" % (major_ver, min_ver, buildnum, platform))
            
        else:
            log.info("Default | GetComputerInfo")
    elif cmd == 4:
        log.info("Default | ListPlugins")
    elif cmd == 5:
        if mode == MODE_CLIENT:
            log.info("Default | DownloadPlugin")
        else:
            plugin_id = buf[:16].encode('hex')
            plugin_type = buf[16:20]
            _ = u32(buf[20:24])
            size = u32(buf[24:28])
            log.info("Default | DownloadPlugin | ID: %s | Type: %s | Size: %d" % (plugin_id,plugin_type,size))
            plugin_data = ""
    elif cmd == 6:
        if mode == MODE_CLIENT:
            log.info("Default | DownloadPlugin")
        else:
            plugin_id = buf[:16].encode('hex')
            plugin_type = buf[16:20]
            written = u32(buf[20:24])
            size = u32(buf[24:28])
            block = u32(buf[28:32])
            log.info("Default | DownloadPlugin | ID: %s | Type: %s | %d bytes (%d/%d)" % (plugin_id,plugin_type,block,written,size))

            plugin_data += buf[32:block+32]
    elif cmd == 7:
        if mode == MODE_CLIENT:
            log.info("Default | InstallPlugin")
        else:
            plugin_id = buf[:16].encode('hex')
            plugin_type = buf[16:20]
            log.info("Default | InstallPlugin  | ID: %s | Type: %s" % (plugin_id, plugin_type))
            save_dll(plugin_id, plugin_type)

    elif cmd == 8:
        log.info("Default | Exit")
    elif cmd == 11:
        log.info("Default | MessageBox | Title: %s | Content: %s" % ( buf[:512].decode('utf16'), buf[512:].decode('utf16')))
    elif cmd == 13:
        log.info("Default | DownloadPlugin | Stop")
    elif cmd == 14:
        if mode == MODE_CLIENT:
            log.info("Default | Online")
        else:
            log.info("Default | Online | password: %s" % buf.decode('utf16').rstrip("\x00"))
    else:
        log.warning("Default | %d" % cmd)

def decode(packet):
    # header
    # DWORD year;
    # DWORD checksum;
    # DWORD header_size;
    # DWORD body_size;
    # DWORD decrypted_size;
    # BYTE cryptor_id[16];
    header = packet[:36]
    year   = header[0:4]

    if year != '2017':
        log.warning("Invalid packet header: %s" % year)
        print hexdump(packet)
        return

    checksum    = u32(header[4:8])
    header_size = u32(header[8:12])
    body_size   = u32(header[12:16])
    plain_size  = u32(header[16:20])
    cryptor_id  = header[20:36].encode('hex')
    header = packet[:header_size]
    body   = packet[header_size:]
    body = decrypt(header, body, cryptor_id)
    if not body:
        log.warning("Decrypt Failed")
        return

    # DWORD header_size;
    # DWORD body_size;
    # DWORD decompressed_size;
    # BYTE compressor_id[16];
    header_size = u32(body[0:4])
    body_size   = u32(body[4:8])
    plain_size  = u32(body[8:12])
    compressor_id = body[12:28].encode('hex')

    header = body[:header_size]
    body   = body[header_size:]
    data = decompress(header, body, compressor_id)

    if not data:
        log.warning("Decompress Failed")
        print hexdump(body)
        return
        
    # DWORD version;
    # DWORD cmd;
    # DWORD seq;
    # DWORD error_code;
    # DWORD last_error; 
    # char processer_id[16];
    version = u32(data[0:4])
    if version != 0x20170417:
        log.warning("Invalid command header: %08x" % version)
        print hexdump(data)
        return

    cmd     = u32(data[4:8])
    seq     = u32(data[8:12])
    error   = u32(data[12:16])
    last_error = u32(data[16:20])
    processer_id = data[20:36].encode('hex')

    header = data[:36]
    body   = data[36:]
    handle_cmd(header, body, processer_id)

if len(sys.argv) != 2:
    print "Usage %s [client*.bin|server*.bin]" % sys.argv[0]
    exit()

packet = sys.argv[1]
if packet.startswith("client"):
    mode = MODE_CLIENT
elif packet.startswith("server"):
    mode = MODE_SERVER
else:
    log.warning("packet name must starts with 'client' or 'server'")
    exit()

with open(packet, "rb") as f:
    pre = ""
    while True:
        header = pre + f.read(36-len(pre))
        if len(header) != 36:
            log.warning("No more packet?")
            break

        year        = u32(header[0:4])
        checksum    = u32(header[4:8])
        header_size = u32(header[8:12])
        body_size   = u32(header[12:16])
        plain_size  = u32(header[16:20])
        if header_size > 36:
            header += f.read(header_size - 36)
        packet = header + f.read(body_size)

        b = f.read(4)
        if not b:
            break

        while b != "2017":
            b = f.read(4)
            if not b:
                exit()
        pre = b

        decode(packet)


