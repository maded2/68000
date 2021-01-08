#include "sys.h"

void puts(const char *s) {
     while (*s != 0) {
        putch(*s);
        s++;
    }
}