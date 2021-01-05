
typedef unsigned int size_t;

extern void outch(const char c);
extern int inch();
extern int inch2();
extern void exec(const char* addr);

extern void *memcpy(void *to, const void *from, size_t n);
extern void *memset(void *s, int c, size_t count);
