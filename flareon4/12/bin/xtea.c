#include <stdint.h>
#include <string.h>

#define MBEDTLS_XTEA_ENCRYPT     1
#define MBEDTLS_XTEA_DECRYPT     0

#define MBEDTLS_ERR_XTEA_INVALID_INPUT_LENGTH             -0x0028  
/*
 * 32-bit integer manipulation macros (big endian)
 */
#ifndef GET_UINT32_BE
#define GET_UINT32_BE(n,b,i)                            \
{                                                       \
    (n) = ( (uint32_t) (b)[(i)    ] << 24 )             \
        | ( (uint32_t) (b)[(i) + 1] << 16 )             \
        | ( (uint32_t) (b)[(i) + 2] <<  8 )             \
        | ( (uint32_t) (b)[(i) + 3]       );            \
}
#endif

#ifndef PUT_UINT32_BE
#define PUT_UINT32_BE(n,b,i)                            \
{                                                       \
    (b)[(i)    ] = (unsigned char) ( (n) >> 24 );       \
    (b)[(i) + 1] = (unsigned char) ( (n) >> 16 );       \
    (b)[(i) + 2] = (unsigned char) ( (n) >>  8 );       \
    (b)[(i) + 3] = (unsigned char) ( (n)       );       \
}
#endif

typedef struct
{
    uint32_t k[4];       
}
mbedtls_xtea_context;

void mbedtls_xtea_init( mbedtls_xtea_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_xtea_context ) );
}

/*
 * XTEA key schedule
 */
void mbedtls_xtea_setup( mbedtls_xtea_context *ctx, const unsigned char key[16] )
{
    int i;

    memset( ctx, 0, sizeof(mbedtls_xtea_context) );

    for( i = 0; i < 4; i++ )
    {
        GET_UINT32_BE( ctx->k[i], key, i << 2 );
    }
}

int mbedtls_xtea_crypt_ecb( mbedtls_xtea_context *ctx, int mode,
                    const unsigned char input[8], unsigned char output[8])
{
    uint32_t *k, v0, v1, i;

    k = ctx->k;

    GET_UINT32_BE( v0, input, 0 );
    GET_UINT32_BE( v1, input, 4 );

    if( mode == MBEDTLS_XTEA_ENCRYPT )
    {
        uint32_t sum = 0, delta = 0x9E3779B9;

        for( i = 0; i < 32; i++ )
        {
            v0 += (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + k[sum & 3]);
            sum += delta;
            v1 += (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + k[(sum>>11) & 3]);
        }
    }
    else /* MBEDTLS_XTEA_DECRYPT */
    {
        uint32_t delta = 0x9E3779B9, sum = delta * 32;

        for( i = 0; i < 32; i++ )
        {
            v1 -= (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + k[(sum>>11) & 3]);
            sum -= delta;
            v0 -= (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + k[sum & 3]);
        }
    }

    PUT_UINT32_BE( v0, output, 0 );
    PUT_UINT32_BE( v1, output, 4 );

    return( 0 );
}
/*
 * XTEA-CBC buffer encryption/decryption
 */
int mbedtls_xtea_crypt_cbc( mbedtls_xtea_context *ctx, int mode, size_t length,
                    unsigned char iv[8], const unsigned char *input,
                    unsigned char *output)
{
    int i;
    unsigned char temp[8];

    if( length % 8 )
        return( MBEDTLS_ERR_XTEA_INVALID_INPUT_LENGTH );

    if( mode == MBEDTLS_XTEA_DECRYPT )
    {
        while( length > 0 )
        {
            memcpy( temp, input, 8 );
            mbedtls_xtea_crypt_ecb( ctx, mode, input, output );

            for( i = 0; i < 8; i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );

            memcpy( iv, temp, 8 );

            input  += 8;
            output += 8;
            length -= 8;
        }
    }
    else
    {
        while( length > 0 )
        {
            for( i = 0; i < 8; i++ )
                output[i] = (unsigned char)( input[i] ^ iv[i] );

            mbedtls_xtea_crypt_ecb( ctx, mode, output, output );
            memcpy( iv, output, 8 );

            input  += 8;
            output += 8;
            length -= 8;
        }
    }

    return( 0 );
}


int main(int argc, char *argv[])
{
    mbedtls_xtea_context ctx;
    uint8_t key[16] = {0};
    uint8_t iv[8] = {0};

    read(0, key, 16);
    read(0, iv, 8);

    int size = atoi(argv[1]);
    uint8_t* buf = malloc(size);
    uint8_t* buf2 = malloc(size);
    memset(buf, 0, size);
    memset(buf2, 0, size);
    read(0, buf, size);

    mbedtls_xtea_init( &ctx );
    mbedtls_xtea_setup( &ctx, key );
    mbedtls_xtea_crypt_cbc( &ctx, 0, size, iv, buf, buf2 );

    for ( int i = 0; i < size; ++i )
        printf("%02x", buf2[i]);
    printf("\n");
    return 0;
}
