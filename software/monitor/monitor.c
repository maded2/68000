
#include "types.h"

const char int2hex[16] = { '0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

void prints(const char *s) {
     while (*s != 0) {
        outch(*s);
        s++;
    }
}

void printb(int value) {
    unsigned int nibble_one = (value >> 4 & 0x0F);
    unsigned int nibble_two = (value & 0x0F);

    outch(int2hex[nibble_one]);
    outch(int2hex[nibble_two]);
}

void printw(int value) {
    int a = value;
    printb(a >> 8);
    printb(value);
}

void printlw(int value) {
    int a = value;
    int b = value;
    int c = value;
    printb(a >> 24);
    printb(b >> 16);
    printb(c >> 8);
    printb(value);
}

void printi(int value) {
    if (value == 0) {
        outch( '0' );
    }

    if (value < 0 ) {
        outch('-');
        value = -value;
    }
    char scratch[100];
    int index = 0;
    for ( ; value > 0; index++) {
        /* use '0' as base and add digit */
        scratch[index] = '0' + (value % 10);
        /* shift value one decimal position */
        value = value / 10;
    }

    /* write scratch pad to buffer or output */
    for ( ; index > 0; index--) {
        outch( scratch[index - 1] );
    }
}

unsigned char lineBuffer[100];
unsigned char *linePos;
int targetAddress;

void readline() {
    int index = 0;
    for (;;) {
        int cc = inch();
        if (cc < 0) {
            continue;
        }
        char c= (char)cc;
        if (c == 8 && index > 0) {
            index--;
            outch(c);
            outch(' ');
            outch(c);
            continue;
        }
        if (c == 13) {
            prints("\r\n");
            lineBuffer[index] = 0;
            break;
        }
        if (c > 0 && index < 100) {
            lineBuffer[index++] = c;
            outch(c);
        }
    }

    linePos= (unsigned char *)&lineBuffer;
}

int strlen(const char *line) {
    int l = 0;
    while (*line != 0) {
        line++;
        l++;
    }
    return l;
}

int parseHex() {
    int value = 0;
    while (*linePos == 32) {
        linePos++;
    }
    while (*linePos != 0 && *linePos != 32) {
        for (int i=0; i < 16; i++) {
            if (*linePos == int2hex[i]) {
                value = (value * 16) + i;
                break;
            }
        }
        linePos++;
    }
    return value;
}

void memorydump(int option) {
    if (option == 0) {
        targetAddress = parseHex(++linePos);
    }
    for (int y=0; y<8; y++) {
        printlw(targetAddress);
        prints(": ");
        char *s = (char *)targetAddress;
        for (int i=0; i<16; i++) {
            printb(*s++);
            prints(" ");
        }
        prints("   [");
        s = (char *)targetAddress;
        for (int i=0; i<16; i++) {
            if (*s < 32 || *s > 126) {
                outch('.');
            } else {
                outch(*s);
            }
            s++;
        }
        prints("]\r\n");
        targetAddress+= 16;
    }
}

void memorytest(int option) {
    if (option == 0) {
        targetAddress = parseHex(++linePos);
    }
    for (int y=0; y<16; y++) {
        printlw(targetAddress);
        prints(": [");
        unsigned char *s = (unsigned char *)targetAddress;
        for (int x=0; x<64; x++) {
            int fail1 = 0;
            int fail2 = 0;
            for (int i=0; i<1024; i++) {
                *s = 0xAA;
                if (*s != 0xAA) {
                    fail1++;
                }
                *s = 0x88;
                if (*s != 0x88) {
                    fail2++;
                }     
                s++;           
            }
            if (fail1 > 0 && fail2 > 0) {
                prints("%");
            } else if (fail1 > 0) {
                prints("?");
            } else if (fail2 > 0) {
                prints("*");
            } else {
                prints(".");
            }
        }
        prints("]\r\n");
        targetAddress+= 256*256;
    }
}

void testbyte(int option) {
    if (option == 0) {
        targetAddress = parseHex(++linePos);
    }
    printlw(targetAddress);
    prints("\r\n");
    unsigned char *s = (unsigned char *)targetAddress;
    unsigned char v=0;
    for (int y = 0; y<16; y++) {
        prints(" [");
        for (int x=0; x<16; x++) {
            *s = v;
            int v1 = *s;
            if (v == v1) {
                prints(" ..:.."); 
            } else {
                prints(" ");
                printb(v);
                prints(":");
                printb(v1);
            }
            v++;
        }
        prints("]\r\n");
    }
    targetAddress++;
}

void setMemory() {
    targetAddress = parseHex(++linePos);
    int value = parseHex(++linePos);
    *(unsigned char *)targetAddress = (char)value;
}

void runCode() {
    targetAddress = parseHex(++linePos);
    prints("\r\n");
    exec((const char *)targetAddress);
}

extern int xmodemReceive(unsigned char *dest);

void xtransfer() {
    targetAddress = parseHex(++linePos);

    prints("xmodem transfer: ");
    printlw(targetAddress);

    int rc = xmodemReceive((unsigned char *)targetAddress);  
    for (int i=0; i< 100000; i++);  // wait a bit
    prints("\r\nreturn code=");
    printi(rc);
    prints("\r\n");
}

void processCmd() {
    while (*linePos == 32) { // skip whitespace
        linePos++;
    }
    switch (*linePos) {
    case 'm':
        memorydump(0);
        break;
    case 'M':
        memorydump(1);
        break;
    case 't':
        memorytest(0);
        break;
    case 'T':
        memorytest(1);
        break;
    case 'y':
        testbyte(0);
        break;
    case 'Y':
        testbyte(1);
        break;        
    case 'x':
        xtransfer();
        break;
    case 'g':
        runCode();
        break;
    case 's':
        setMemory();   
        break;
    default:
        prints("Unknown command\r\n");
    }
    prints("\r\n");
}


int main() {
    prints("\r\n68000 Monitor, v0.2\r\n\r\n");

    for (;;) {
        prints(" > ");
        readline();
        processCmd();
    }
}
