#include <stdio.h>
#include <string.h>
#include <stdint.h>

#define CBC 1
#include "aes.h"

int main(int argc, char* argv[])
{
    uint8_t iv[16] = { 0 };
    uint8_t in[16]  = { 0 };

    int fd = open("CrackMe.txt", 0);
    read(fd, iv, 16);
    read(fd, in, 16);

    uint32_t start = strtol(argv[1], NULL, 16);
    for ( int i = start; i < 0xffffffff; ++i ) {
        uint32_t key[4] = {i,i,i,i};
        uint8_t buf[16];
        memcpy(buf, in, 16);
        struct AES_ctx ctx = {0};
        AES_init_ctx_iv(&ctx, key, iv);
        AES_CBC_decrypt_buffer(&ctx, buf, 16);
        if ( buf[0] == 'V' && buf[1] == 'o' && buf[2] == 'l' && buf[3] == 'g' && buf[4] == 'a' ) {
          printf("0x%08X %s\n", i, buf);
          break;
        }
        if (i % 0x10000000==0)
          printf("0x%08X\n", i);
    }
}

