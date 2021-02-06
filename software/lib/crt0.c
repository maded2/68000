#include "stdint-gcc.h"
#include "stdio.h"
#include "stdlib.h"
#include "sys.h"

extern int main();

// NOTHING SHOULD GO BEFORE THIS FUNCTION 
// this is the entry point 
void _start() {
    inituart();
    main();
}


static size_t stdio_write(FILE *instance, const char *bp, size_t n) {
	for (int i=0; i< n; i++) {
        putch(*bp);
        bp++;
    }
	return n;
}


static struct File_methods stdio_methods = {
        &stdio_write, NULL
};

static struct File _stdout = {
        &stdio_methods
};

static struct File _stderr = {
        &stdio_methods
};

FILE* const stdout = &_stdout;
FILE* const stderr = &_stderr;

