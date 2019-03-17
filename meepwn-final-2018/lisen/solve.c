
void sub66a(unsigned int arg1, unsigned int* arg2, unsigned int* arg3) 
{
    unsigned int var4 = 0 ;
    unsigned int var8 = 0 ;
    unsigned int varc = 0 ;
    unsigned int var10 = 0;
    unsigned int var14 = 0;
    unsigned int var24 = 0;
    void* var30 = 0;
    void* var38 = 0;
    unsigned int eax = 0;
    unsigned int ebx = 0;
    unsigned int ecx = 0;
    unsigned int edx = 0;

    var24 = arg1;
    var30 = arg2; 
    var38 = arg3;

    eax = var30;;
    eax = *(unsigned int*)(eax);
    var10  =  eax;
    eax = (var30);
    eax = *(unsigned int*)(eax + 0x4);
    varc  =  eax;
    var8  =  0x0;
    var4  =  0x7468616e;
    var14  =  0x0;

    for ( int i = 0; i < 8; ++i){
    eax = varc;
    eax <<= 0x4;
    edx = eax;
    eax = (varc);
    eax = eax >> 0x5;;
    edx ^= eax;
    eax = (varc);
    ecx = edx + eax;;
    eax = (var8);
    eax &= 0x3;
    edx = 0x4 * eax;;
    eax = (var38);
    eax += edx;
    edx = *(unsigned int*)(eax);
    eax = (var8);
    eax += edx;
    eax ^= ecx;
    var10+=  eax;
    eax = (var4);
    var8+=  eax;
    eax = (var10);
    eax <<= 0x4;
    edx = eax;
    eax = (var10);
    eax = eax >> 0x5;;
    edx ^= eax;
    eax = (var10);
    ecx = edx + eax;;
    eax = (var8);
    eax = eax >> 0xb;;
    eax &= 0x3;
    edx = 0x4 * eax;;
    eax = (var38);
    eax += edx;
    edx = *(unsigned int*)(eax);
    eax = (var8);
    eax += edx;
    eax ^= ecx;
    varc+=  eax;
    }
char* a = &var10;
printf("%c", a[0]);
printf("%c", a[1]);
printf("%c", a[2]);
printf("%c", a[3]);
a = &varc;
printf("%c", a[0]);
printf("%c", a[1]);
printf("%c", a[2]);
printf("%c", a[3]);
//0x00000720 eax = (var14);
//0x00000723 eax == (var24);
//0x00000726 rip = 0x6a3;
//0x0000072c eax = (var30);
//0x00000730 edx = (var10);
//0x00000733 eax  =  edx;
//0x00000735 eax = (var30);
//0x00000739 edx = eax + 0x4;;
//0x0000073d eax = (varc);
//0x00000740 edx  =  eax;
//0x00000743 rbp = (rsp);
//0x00000744 rip = (rsp);


};

int main(int argc, char *argv[])
{
    unsigned int var70[8] = {0x63,0x6f,0x74,0x68,0x61,0x6e};
    unsigned int var74 = 0x8;

    unsigned int var50[] = {0x949121c8,0x34b866a ,0x82efd0f4,0xa82cc803,0x6969152f,0xe1a96af2,0xe1807156,0x841a643e,0xbc98ca8f,0xe0c75d1b,0x7596276b,0x690acb35,0xea64a1c9,0x63b3554b,0x41a42c83,0xff58f96a,0xb288f3bf,0xbcf9b6ec};

    unsigned int var78 = 0x0;

    for ( var78 = 0 ; var78 <= 8; ++var78 ) {
        sub66a(var74, var50 + 2 * var78 , var70);
    }
    return 0;
}
