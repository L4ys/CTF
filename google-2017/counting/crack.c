#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
 
uint64_t collatz(uint64_t n)
{
    uint64_t r = 0;
    while ( n > 1 ) {
        if ( (n & 1) == 0)
            n >>= 1;
        else
            n = (n << 1) + n + 1; //n = 3 * n + 1;
        r++;
    }
    return r;
}

uint64_t sub_0014(uint64_t BEGIN, uint64_t END)
{
    uint64_t sum = 0;
    for ( uint64_t i = BEGIN; i < END; ++i ) {
        if (!(i % 100000000)) 
            printf("%lu\n", i);

        sum += collatz(i+1);
    }
    return sum;
}

int main(int argc, char *argv[])
{
    uint64_t BEGIN = strtoul(argv[1], NULL, 10);
    uint64_t END = strtoul(argv[2], NULL, 10);

    uint64_t sum = sub_0014(BEGIN, END);
    printf("sum(%lu, %lu) = %lu\n", BEGIN, END, sum);

    return 0;
}

// sum(0, 9009131337) = 2037448192360
