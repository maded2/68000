#include "mandelbrot.h"

#define xmin -2.0
#define ymax 2.0
#define ymin -2.0
#define xmax 2.0
#define dx (xmax - xmin) / (float)128
#define dy (ymax - ymin) / (float)128

void drawMandelbrot()
{
    setAddrWindow(0, 0, 127, 127);
    setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data

    float Ci = ymin;
    for (int Y = 0; Y < 128; ++Y)
    {
        float Cr = xmin;
        for (int X = 0; X < 128; ++X)
        {
            float Zr = Cr;
            float Zi = Ci;
            int iter = 15;
            while (iter > 0)
            {
                float Zrr = (Zr * Zr);
                float Zii = (Zi * Zi);
                float Zri = 2.0 * (Zr * Zi);
                Zr = Zrr - Zii + Cr;
                Zi = Zri + Ci;
                if (Zrr + Zii > 4.0)
                {
                    break;
                }
                --iter;
            }
            sendAndWait(iter << 19);
            sendAndWait(iter << 2);

            Cr += dx;
        }
        Ci += dy;
    }

    setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}
