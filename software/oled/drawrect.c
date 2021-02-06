#include "drawrect.h"
#include "sys.h"

void drawRects()
{
    clearDisplay();
    drawRect(10, 10, 100, 100, BLUE);
    millis();

    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, RED);
    millis();

    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, GREEN);
    millis();

    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, WHITE);
    millis();

    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, YELLOW);
    millis();

    // for (int i = 0; i < 100000; i++);   // wait a bit
}