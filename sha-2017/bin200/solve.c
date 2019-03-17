#include <stdint.h>

uint32_t key[] = {0x5570c21c, 0xa4da7197, 0xc3e95bcd, 0x5d7fa99b};

void encrypt (uint32_t* v, uint32_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0, i;           /* set up */
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i < 32; i++) {                       /* basic cycle start */
        sum += delta;
        v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

void decrypt (uint32_t* v, uint32_t* k) {
    uint32_t v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
    uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
    uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i<32; i++) {                         /* basic cycle start */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

int main(int argc, char *argv[])
{
    char d[8];
    memcpy(d, "\x12\x0f\xa2\x84\xab\xef\x7a\x80", 8);
    decrypt(d, key);
    printf("%s", d);

    memcpy(d, "\xc4\x18\x04\x6b\x17\x0f\x28\xe8", 8);
    decrypt(d, key);
    printf("%s", d);

    memcpy(d, "\xd7\x27\x02\x94\x85\xa0\xce\x5c", 8);
    decrypt(d, key);
    printf("%s", d);

    memcpy(d, "\x10\x99\x80\x0e\x4d\x57\x54\xe1", 8);
    decrypt(d, key);
    printf("%s", d);

    memcpy(d, "\xe4\x1c\xe6\x30\xab\x97\x63\x74", 8);
    decrypt(d, key);
    printf("%s", d);

    return 0;
}

