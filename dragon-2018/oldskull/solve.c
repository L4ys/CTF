#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <openssl/md5.h>

void md5(char* data, int size, char* hash)
{
    unsigned char md[16];
    char tmp[3] = "";

    MD5(data, size, md);

    for (int i = 0; i < 16; i++){
        sprintf(tmp,"%.2x",md[i]);
        strcat(hash, tmp);
    }
}

void* decode(char *data, size_t size, uint16_t key)
{
    uint8_t hash[40]; // [esp+20h] [ebp-38h]
    char *out; // [esp+48h] [ebp-10h]

    out = malloc(size);
    memset(out, 0, size);
    for ( int i = 0; i < size; ++i )
    {
        out[i] = (data[i] ^ key) - ((key>>8)&0xff);
        key *= 0x62F3;
    }
    memset(hash, 0, 40u);
    md5(out, size - 32, &hash);
    if ( !memcmp(hash, &out[size - 32], 32) )
        return out;
    free(out);
    return 0;
}

int main(int argc, char *argv[])
{
    uint8_t buf[19598] = {0};

    int fd = open("./oldskull.exe", 0);

    lseek(fd, 0x4020, 0);
    read(fd, buf, 19598);

    void* p = buf;
    void* tmp = 0;
    for (int i = 0; i < 0xffff; ++i)
        if ( tmp = decode(p, 19598, i) ) {
            printf("key1 = %x\n", i);
            p = tmp;
            break;
        }

    for (int i = 0; i < 0xffff; ++i){
        if ( tmp = decode(p, 19566, i) ) {
            printf("key2 = %x\n", i);
            p = tmp;
            break;
        }
    }

    for (int i = 0; i < 0xffff; ++i)
        if ( tmp = decode(p, 19534, i) ) {
            printf("key3 = %x\n", i);
            p = tmp;
            break;
        }
    for (int i = 0; i < 0xffff; ++i)
        if ( tmp = decode(p, 19502, i) ) {
            printf("key4 = %x\n", i);
            p = tmp;
            break;
        }
    return 0;
}

