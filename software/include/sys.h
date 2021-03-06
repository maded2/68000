#include "stdint-gcc.h"
#include "stddef.h"

extern uint8_t* font_8x8;
extern uint8_t* font_5x7;

extern void prints(char *s);
extern void printb(uint8_t value);
extern void printw(uint16_t value);
extern void printlw(uint32_t value);
extern void printi(int value);

extern void inituart();
extern void putch(uint8_t c);
extern int getch();
extern int getch2();
extern void millis();

extern void *memcpy(void *to, const void *from, size_t n);
extern void *memset(void *s, int c, size_t count);
