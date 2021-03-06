#include <iostream>

using namespace std;

uint32_t table1[] = { 0xFA730603, 0xF8084C29, 0xF4290A55, 0xF17A02CD, 0xF1E59BC4, 0xF41ABBF1, 0xFDF84718, 0xF0083FD1, 0xF1BAED2B, 0xFA2AEAC7, 0xF652CC03, 0xF178B08D, 0xF1198EB5, 0xF0672595, 0xF1753690, 0xF2E67825, 0xF2B0197A, 0xF84C8755, 0xFB72A68F, 0xF656D307, 0xFC005E80, 0xF350372A, 0xF27B843E, 0xF1AE2E9B, 0xF2ECB793, 0xF2CF233D, 0xFDAB487F, 0xFB7989EE, 0xF585E8A7, 0xFB155234, 0xF8615835, 0xFE982EE1, 0xF6C42E3E, 0xF96E377C, 0xF102A7E0, 0xFE2391E8, 0xFA7500A5, 0xF640F391, 0xF1E1670F, 0xF9D0235F, 0xF7C12D7D, 0xF863762C, 0xFBED5B8A, 0xFDB8DEC7, 0xF186136E, 0xF2DFACF3, 0xFE5D1AC8, 0xF25E770D, 0xFB56D6DD, 0xF33EB123, 0xF4B7FADA, 0xF6242889, 0xF59F048F, 0xFC86FA29, 0xFCD04769, 0xF14B8063, 0xFAA6F222, 0xF0D23990, 0xF6846A8C, 0xF3CD8234, 0xFA440DE1, 0xF5DE4EE7, 0xF40C2BCA, 0xF0590358, 0xF4A968CB, 0xF65A2DFF};
uint32_t table2[] = { 0x2FA2377, 0x6D1C33E, 0x1B22D44, 0x171F345, 0x183FF47, 0x2879609, 0x36EB9D7, 0x811BB, 0xC12DB0, 0x1B7DB20, 0x54F2EC9, 0x11A893B, 0x48DB44, 0x1F61D0, 0x8B7372, 0x1A717EF, 0x167692A, 0x55ACE9B, 0x47D0923, 0x9E4F8E, 0x2036162, 0x2F9AC19, 0x1E0DBF7, 0x1852D9B, 0x26D4EBA, 0x20E3486, 0xBB0F702, 0x3E40DF6, 0x24284B, 0x447418E, 0x7BB11A6, 0x6A330BC, 0xC5815A, 0x2EFAA0D, 0xC1E170, 0x628F151, 0x1C629CF, 0x2E04C82, 0x15445D, 0x1BDE2A7, 0x46ABA70, 0x11A1341, 0xB733982, 0x6E87A60, 0xF7715D, 0x24F3682, 0x181C131, 0x23AA7F6, 0xA44B51, 0x29E1B4F, 0x2686A1, 0x1956047, 0x214B4AC, 0xF3BF0, 0x9701B3, 0x1C3E00, 0x6B4AAF, 0x773A9A, 0x2BCB4D1, 0x1690AF8, 0x4139BD8, 0xE04630, 0x17E5300, 0x473799, 0x401B105, 0x373A611 };
uint8_t table3[] = {0x97, 0x15, 0x43, 0x98, 0x11, 0x2F, 0x3E, 0x06, 0x6D, 0x12, 0x45, 0x33, 0x58, 0x0F, 0x6A, 0x8E, 0x84, 0x23, 0x3E, 0xAD, 0x4D, 0x79, 0x21, 0x1D, 0x7B, 0x40, 0x1C, 0xC8, 0x8F, 0x11, 0x6A, 0x18, 0x37, 0x97, 0x2E, 0x82, 0x2D, 0x2E, 0x28, 0x7C, 0x3C, 0x8B, 0x0C, 0x68, 0x14, 0x7D, 0x49, 0x35, 0x37, 0x63, 0x54, 0x13, 0x73, 0xCC, 0x9C, 0x54, 0x7C, 0x1F, 0x19, 0x59, 0x40, 0x30, 0x13, 0x20, 0xCE, 0x64};
uint8_t table4[] = {0x4E, 0xE4, 0x4C, 0x7A, 0xFE, 0xC9, 0xB7, 0x4E, 0xFE, 0xF1, 0x1E, 0x3B, 0xBE, 0x41, 0xB3, 0x5A, 0xD6, 0xBB, 0x52, 0x37, 0x62, 0xEE, 0x67, 0x32, 0xF6, 0x03, 0x55, 0x0B, 0x56, 0xB4, 0x12, 0x59, 0x13, 0xA6, 0x8E, 0x56, 0x04, 0x74, 0x6A, 0x12, 0xE5, 0xC3, 0x3F, 0x97, 0xF4, 0x82, 0x47, 0xA6, 0xCB, 0x46, 0x97, 0xBD, 0x65, 0x13, 0x07, 0xF0, 0x2E, 0xDE, 0x36, 0x4C, 0x44, 0x26, 0x02, 0xFB, 0xA3, 0x42};

// https://leetcode.com/problems/k-th-smallest-in-lexicographical-order/discuss/92255/C%2B%2B-0ms-solution-digit-by-digit

int numbersBeginWith(uint32_t n, long long prefix) 
{
    long long fac = 1;
    int count = 0;
    for(int digit = 1; digit <= 9; digit++) {
        long long min = prefix*fac;
        long long max = prefix*fac+fac-1;
        if(n < min)
            break;
        else if(min <= n && n <= max) {
            count += (n-min+1);
            break;
        }
        else
            count += fac;
        fac *= 10;
    }
    return count;
}

uint32_t findKthNumber(uint32_t n, uint32_t k, uint32_t start = 0) {
    if(k > 0) {
        for(int i = (start==0)?1:0; i <= 9; i++) { // append 0-9 to the prefix
            int count = numbersBeginWith(n, 10*start+i);
            if(k <= count) // if k <= count, the answer is begin with the prefix
                return findKthNumber(n, k-1, 10*start+i);
            k -= count; // if the answer does not begin with the prefix, remove all the numbers begin with this prefix
        }
    }
    return start;
}

int main(int argc, char *argv[])
{
    for (int i = 0; i < 66; ++i) {
        uint8_t k = findKthNumber(table1[i], table2[i]) & 0xff;
        k ^= table4[i];
        if ((table4[i] & 3) <= 1)
            k += table3[i];
        else
            k -= table3[i];
        printf("%c", k);
    }

    return 0;
}
