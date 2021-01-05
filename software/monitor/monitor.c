
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

char lineBuffer[100];

char *readline() {
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

    return (char *)&lineBuffer;
}

int strlen(const char *line) {
    int l = 0;
    while (*line != 0) {
        line++;
        l++;
    }
    return l;
}

int parseHex(const char *s) {
    int addr = 0;
    while (*s == 32) {
        s++;
    }
    while (*s != 0 && *s != 32) {
        for (int i=0; i < 16; i++) {
            if (*s == int2hex[i]) {
                addr = (addr * 16) + i;
                break;
            }
        }
        s++;
    }
    return addr;
}

void memorydump(const char *line) {
    int address = parseHex(++line);
    for (int y=0; y<8; y++) {
        printlw(address);
        prints(": ");
        char *s = (char *)address;
        for (int i=0; i<16; i++) {
            printb(*s++);
            prints(" ");
        }
        prints("   [");
        s = (char *)address;
        for (int i=0; i<16; i++) {
            if (*s < 32 || *s > 127) {
                outch('.');
            } else {
                outch(*s);
            }
            s++;
        }
        prints("]\r\n");
        address+= 16;
    }

}

void runCode(const char *line) {
    int address = parseHex(++line);
    prints("]\r\n");
    exec((const char *)address);
}

extern int xmodemReceive(unsigned char *dest);

void xtransfer(const char *line) {
    unsigned char *address = (unsigned char *)parseHex(line);

    int rc = xmodemReceive(address);  
    for (int i=0; i< 100000; i++);  // wait a bit
    prints("\r\nreturn code=");
    printi(rc);
    prints("\r\n");
}

void processCmd(const char *line) {
    while (*line == 32) { // skip whitespace
        line++;
    }
    switch (*line) {
    case 'm':
        memorydump(++line);
        break;
    case 'x':
        xtransfer(++line);
        break;
    case 'g':
        runCode(++line);
    }
    prints("\r\n");
}


void main() {
    char *line;
    prints("\r\n68000 Monitor, v0.1\r\n\r\n");

    for (;;) {
        prints(" > ");
        line = readline();
        processCmd(line);
    }
}
