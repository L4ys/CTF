#include "defs.h"

int puts(char* c){
    return 0;
}
//----- (0000000000400986) ----------------------------------------------------
int func1(char a1, char a2)
{
  if ( a1 * 2 * (a2 ^ a1) - a2 != 10858 )
    exit(1);
  if ( a1 <= 85 || a1 > 95 || a2 <= 96 || a2 > 111 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400A04) ----------------------------------------------------
int func2(char a1, char a2)
{
  if ( a1 % a2 != 7 )
    exit(1);
  if ( a2 <= 90 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400A53) ----------------------------------------------------
int func3(char a1, char a2)
{
  if ( a1 / a2 + (a2 ^ a1) != 21 || a1 > 99 || a2 > 119 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400AAB) ----------------------------------------------------
int func4(char a1, char a2)
{
  __int64 v2; // rtt

  LODWORD(v2) = (a2 ^ a1 ^ a2);
  HIDWORD(v2) = (a2 ^ a1 ^ a2) >> 32;
  if ( (v2 % a2) + a1 != 137 || a1 <= 115 || a2 > 99 || a2 != 95 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400B0D) ----------------------------------------------------
int func5(char a1, char a2)
{
  if ( ((a2 + a1) ^ (a1 ^ a2 ^ a1)) != 225 || a1 <= 90 || a2 > 89 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400B68) ----------------------------------------------------
int func6(char a1, char a2, char a3)
{
  if ( a1 > a2 )
    exit(1);
  if ( a2 > a3 )
    exit(1);
  if ( a1 <= 85 || a2 <= 110 || a3 <= 115 || ((a2 + a3) ^ (a1 + a2)) != 44 || (a2 + a3) % a1 + a2 != 161 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400C11) ----------------------------------------------------
int func7(char a1, char a2, char a3)
{
  if ( a1 < a2 )
    exit(1);
  if ( a2 < a3 )
    exit(1);
  if ( a1 > 119 || a2 <= 90 || a3 > 89 || ((a1 + a3) ^ (a2 + a3)) != 122 || (a1 + a3) % a2 + a3 != 101 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400CB7) ----------------------------------------------------
int func8(char a1, char a2, char a3)
{
  if ( a1 > a2 )
    exit(1);
  if ( a2 > a3 )
    exit(1);
  if ( a3 > 114 || (a1 + a2) / a3 * a2 != 97 || (a3 ^ (a1 - a2)) * a2 != -10088 || a3 > 114 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400D5D) ----------------------------------------------------
int func9(char a1, char a2, char a3)
{
  if ( a1 != a2 )
    exit(1);
  if ( a2 < a3 )
    exit(1);
  if ( a3 > 99 || a3 + a1 * (a3 - a2) - a1 != -1443 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400DE2) ----------------------------------------------------
int func10(char a1, char a2, char a3)
{
  if ( a1 < a2 )
    exit(1);
  if ( a2 < a3 )
    exit(1);
  if ( a2 * (a1 + a3 + 1) - a3 != 15514 || a2 <= 90 || a2 > 99 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400E6A) ----------------------------------------------------
int func11(char a1, char a2, char a3)
{
  if ( a2 < a1 )
    exit(1);
  if ( a1 < a3 )
    exit(1);
  if ( a2 <= 100 || a2 > 104 || a1 + (a2 ^ (a2 - a3)) - a3 != 70 || (a2 + a3) / a1 + a1 != 68 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400F13) ----------------------------------------------------
int func12(char a1, char a2, char a3)
{
  if ( a1 < a2 )
    exit(1);
  if ( a2 < a3 )
    exit(1);
  if ( a2 > 59 || a3 > 44 || a1 + (a2 ^ (a3 + a2)) - a3 != 111 || (a2 ^ (a2 - a3)) + a2 != 101 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (0000000000400FB9) ----------------------------------------------------
int func13(char a1, char a2, char a3)
{
  if ( a1 > a2 )
    exit(1);
  if ( a2 > a3 )
    exit(1);
  if ( a1 <= 40 || a2 <= 90 || a3 > 109 || a3 + (a2 ^ (a3 + a1)) - a1 != 269 || (a3 ^ (a2 - a1)) + a2 != 185 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (000000000040106B) ----------------------------------------------------
int func14(char a1, char a2, char a3)
{
  if ( a1 < a3 )
    exit(1);
  if ( a2 < a3 )
    exit(1);
  if ( a2 > 99 || a3 <= 90 || a1 + (a2 ^ (a2 + a1)) - a3 != 185 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (00000000004010F5) ----------------------------------------------------
int func15(char a1, char a2, char a3)
{
  if ( a2 < a3 )
    exit(1);
  if ( a2 < a1 )
    exit(1);
  if ( a3 <= 95 || a2 > 109 || ((a2 - a1) * a2 ^ a3) - a1 != 1214 || ((a3 - a2) * a3 ^ a1) + a2 != -1034 )
    exit(1);
  return puts("HAPPINESS:)");
}

//----- (00000000004011A9) ----------------------------------------------------
int main()
{
  char s[27]; // [rsp+C0h] [rbp-100h]

  //printf("Your flag : ", argv, envp);
  //fgets(s, 27, stdin);
  klee_make_symbolic(s, 27, "s");
  for ( int i = 0; i < 26; ++i ) {
      klee_assume(s[i] > ' ');
      klee_assume(s[i] <= '~');
  }
  klee_assume(s[26] == 0);

  func1(s[0], s[1]);
  func2(s[1], s[2]);
  func3(s[2], s[3]);
  func4(s[3], s[4]);
  func5(s[4], s[5]);
  func6(s[5], s[6], s[7]);
  func7(s[7], s[8], s[9]);
  func8(s[9], s[10], s[11]);
  func9(s[11], s[12], s[13]);
  func10(s[13], s[14], s[15]);
  func11(s[15], s[16], s[17]);
  func12(s[17], s[18], s[19]);
  func13(s[19], s[20], s[21]);
  func14(s[21], s[22], s[23]);
  func15(s[23], s[24], s[25]);
  klee_assert(0);
  //printf("flag : {\" %s \"}\n", s);
  return 0;
}
