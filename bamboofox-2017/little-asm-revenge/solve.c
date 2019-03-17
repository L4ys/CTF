unsigned int data[40] = {
    0x0000019C, 0x00000169, 0x00000030, 0x000001D6, 0x00000030, 0x00000030, 0x00000199, 0x0000006A, 
    0x00000157, 0x000000C2, 0x0000010A, 0x00000155, 0x00000150, 0x00000107, 0x00000037, 0x0000012E, 
    0x00000022, 0x000000F1, 0x000001AE, 0x00000151, 0x000000F1, 0x0000001A, 0x000001A5, 0x000001AE, 
    0x000000C9, 0x0000012C, 0x00000001, 0x00000166, 0x0000012C, 0x000000CB, 0x00000030, 0x00000107, 
    0x00000166, 0x000001B4, 0x000001AE, 0x0000014C, 0x00000046, 0x00000000, 0x00000000, 0x00000000
};

unsigned int sub_7B0(int a1)
{
  int v2; // [rsp+Ch] [rbp-8h]
  int i; // [rsp+10h] [rbp-4h]

  v2 = 1;
  for ( i = 0; i < 7; ++i )
    v2 = (a1 * v2) % 481;
  return v2;
}

unsigned int sub_7F4(int a1)
{
  int v2; // [rsp+Ch] [rbp-8h]
  signed int i; // [rsp+10h] [rbp-4h]

  v2 = a1;
  for ( i = 0; i <= 6; ++i )
  {
    if ( i & 1 )
      v2 ^= 1 << i;
    else
      v2 |= 1 << i;
  }
  return v2&0xff;
}

int cmp(unsigned int * s1, unsigned int* s2, int s)
{
	int i;
	for( i = 0; i < s; ++i )
		if ( s1[i] != s2[i] ) 
			return 0;
	return 1;
}

int main()
{
  unsigned int v8[40] = {0}; // [rsp+10h] [rbp-D0h]
  char s[40]; // [rsp+B0h] [rbp-30h]

  klee_make_symbolic(s, 40, "s");
  for ( int i = 0; i < 40; ++i )
    s[i] ^= sub_7F4(i);
  for ( int j = 0; j < 40; ++j)
    v8[j] = sub_7B0(s[j]);

  
  if (cmp(v8, data, 40) == 1)
	  klee_assert(0);
  return 0LL;
}
