// From shik
#include <bits/stdc++.h>
#include <openssl/sha.h> // man 3 sha1

// g++ -std=c++11 pow.cpp -o pow -Ofast -lcrypto
// ./pow bedca4b89c129c89

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s prefix\n", argv[0]);
        exit(0);
    }
    const int len = 32;
    unsigned char *s = (unsigned char*)malloc(len);
    int len_prefix = strlen(argv[1]);
    memcpy(s, argv[1], len_prefix);
    memset(s + len_prefix, 33, len - len_prefix);
	while (true) {
        for (int i = len_prefix; ++s[i] == 126; i++) s[i] = 33;
        auto h = SHA256(s, len, NULL);
        if (h[0] == 0xFF && h[1] == 0xFF && h[2] == 0xFF && h[3] > 0xEF) break;
    }
    for (int i = 0; i < len; i++) putchar(s[i]);
    return 0;
}
