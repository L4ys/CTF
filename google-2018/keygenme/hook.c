#include <stdio.h>

int umask(int u)
{
    return 0xffffffff;
}

int strcmp(char* a, char* b)
{
    //printf("%s\n", a);
    printf("%s\n", b);
    fflush(stdout);
    _exit(0);
}