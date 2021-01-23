#include "sys.h"

const char int2hex[16] = { '0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

void prints(char *s) {
     while (*s != 0) {
        putch(*s);
        s++;
    }
}

void printb(uint8_t value) {
    unsigned int nibble_one = (value >> 4 & 0x0F);
    unsigned int nibble_two = (value & 0x0F);

    putch(int2hex[nibble_one]);
    putch(int2hex[nibble_two]);
}

void printw(uint16_t value) {
    printb(value >> 8);
    printb(value);
}

void printlw(uint32_t value) {
    uint8_t a = value;
    uint8_t b = value;
    uint8_t c = value;
    printb(a >> 24);
    printb(b >> 16);
    printb(c >> 8);
    printb(value);
}

void printi(int value) {
    if (value == 0) {
        putch( '0' );
    }

    if (value < 0 ) {
        putch('-');
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
        putch( scratch[index - 1] );
    }
}