
typedef unsigned int size_t;

extern void puts(const char *s);

extern void inituart();
extern void putch(const char c);
extern int getch();
extern int getch2();

extern void *memcpy(void *to, const void *from, size_t n);
extern void *memset(void *s, int c, size_t count);
