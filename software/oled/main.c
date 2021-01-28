#include "stdint-gcc.h"
#include "stdio.h"
#include "string.h"

#include "ssd1351.h"
#include "mandelbrot.h"
#include "drawrect.h"
#include "drawbitmap.h"
#include "sys.h"
#include "stdio.h"

int main()
{
	initSSD1351();

	clearDisplay();
	oledsetcursor(0, 0);
	for (int j=0;; j++)
	{
		drawRects();
		drawBitmap();

		char welcome[100];
		for (int k=0;k<20; k++) {
			sprintf(welcome, "Hello %x\r\n", k);
			oledprints(welcome);
			// printf(welcome);
			// for (int i = 0; i < 1000; i++); // wait a bit
			oledprints("   Hello World\r\n");
			// for (int i = 0; i < 1000; i++); // wait a bit
			oledprints("    Hello World\r\n");
			// for (int i = 0; i < 1000; i++); // wait a bit
		}
	}
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
