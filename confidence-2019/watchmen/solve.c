#include <stdint.h>
#include <string.h>

// Solved with LazyKLEE

unsigned char ans[32] = {
    0xE8, 0xF4, 0xDA, 0xF1, 0x15, 0xC6, 0xB8, 0xBD, 0x77, 0x8C, 0xC1, 0xF9, 0x74, 0x46, 0x78, 0xBA, 
    0xD1, 0x4E, 0xBC, 0x3A, 0xF3, 0x6D, 0xA9, 0x61, 0x44, 0x61, 0x65, 0x13, 0x6D, 0x3D, 0xCE, 0x7B
};

void sub_401C20(char *a1)
{
  int i; // [esp+Ch] [ebp-8h]

  for ( i = 0; i <= 31; ++i )
    a1[i] ^= "October 12th, 1985. Tonight, a comedian died in New York"[i];
}
void sub_401C6C(char *input)
{
  char v1; // [esp+Bh] [ebp-5h]
  int i; // [esp+Ch] [ebp-4h]

  v1 = *input;
  for ( i = 0; i <= 30; ++i )
    input[i] = *(uint16_t*)&input[i] >> 4;
  input[31] = (16 * v1) | ((uint8_t)input[31] >> 4);
}
void sub_401CE2(char *a1)
{
    char v1[32]; // [esp+Ch] [ebp-B4h]
    int v2[32]; // [esp+2Ch] [ebp-94h]
    uint8_t v3; // [esp+AFh] [ebp-11h]
    const char *v4; // [esp+B0h] [ebp-10h]
    int k; // [esp+B4h] [ebp-Ch]
    int j; // [esp+B8h] [ebp-8h]
    int i; // [esp+BCh] [ebp-4h]

    v4 = "I am tired of Earth, these people. I'm tired of being caught in the tangle of their lives.";
    for ( i = 0; i <= 31; ++i )
    {
        v2[i] = i;
        v1[i] = a1[i];
    }
    for ( j = 0; v4[j]; ++j )
    {
        v3 = v2[j % 32];
        v2[j % 32] = v2[v4[j] & 0x1F];
        v2[v4[j] & 0x1F] = v3;
    }
    for ( k = 0; k <= 31; ++k )
        a1[k] = v1[v2[k]];
}

int main(int argc, char *argv[])
{
    char input[33];
    klee_make_symbolic(input, 33, "input");

    for ( int i = 0; i < 16; ++i ) {
        sub_401C20(input);
        sub_401C6C(input);
        sub_401CE2(input);
    }
    if(!memcmp(ans, input, 32))
        klee_assert(0);

    return 0;
}
