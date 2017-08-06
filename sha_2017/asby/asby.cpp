#include <iostream>
using namespace std;

string data[] = "\x76\x4C\x74\x23\x28\x52\x26\x07\x08\x1C\x96\xFD\xCA\xC4\x22\x23\x45\x73\x76\x61\x04\x70\x57\x0F\x4B\xC6\xA6\x9B\xC1\x23\x21\x10\x23\x7D\x35\x50\x72\x4E\x00";

int main()
{
    char key[] = "ABCDEFGHIJKLMNO";
    key[0] = 16;
    key[1] = 32;
    key[2] = 21;
    key[3] = 68;
    key[4] = 83;
    key[5] = 98;
    key[6] = 20;
    key[7] = 51;
    key[8] = 106;
    key[9] = 125;
    key[10] = 247;
    key[11] = 197;
    key[12] = 171;
    key[13] = 167;
    key[14] = 18;

    string input;
    int v26 = 0;
    while ( v26 != 1 ) {
        cout << "What is the flag? ";
        cin >> input;
        for ( int i = 0; i < input.size(); ++i ) {
            input[i] ^= 42;
            cout << "Checking char " << i + 1 << ":";
            if ( input[i] != (data[i] ^ key[i % 15] ^ 42) ) {
                cout << "WRONG!\n";
                break;
            }
            cout << "CORRECT\n";
            if ( i == 37 )
                v26 = 1;
        }
    }
    cout << "\nCongrats, it seems you asby'ed the flag out of the challenge!\n";

    return 0;
}
