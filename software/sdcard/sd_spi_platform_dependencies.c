#include "sd_spi_platform_dependencies.h"

uint8_t *spiStatus = (uint8_t *)0xB00001;
uint8_t *spiOut = (uint8_t *)0xB00003;
uint8_t *spiIn = (uint8_t *)0xB00005;

#define MOSI_BUSY 1
#define MISO_DATA 2

#define SPI_SS1_DISABLE 8
#define SPI_SS2_DISABLE 16
#define SPI_SS1_ENABLE 0
#define SPI_SS2_ENABLE 0
#define SPI_CMD 0
#define SPI_DATA 4

void sendAndWait(uint8_t value)
{
    while ((*spiStatus & MOSI_BUSY) == 0);
    *spiOut = value;
    printf(" %x", value);
}

void
sd_spi_pin_mode(
	uint8_t pin,
	uint8_t mode
)
{

}

void
sd_spi_digital_write(
	uint8_t pin,
	uint8_t state
)
{
	if (state == HIGH) {
		printf("\r\nSS2 CS=High\r\n");
	     *spiStatus = (SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Cmd
	} else {
		printf("\r\nSS2 CS=Low\r\n");
	     *spiStatus = (SPI_SS1_DISABLE | SPI_SS2_ENABLE | SPI_DATA); // SS1 & Cmd
	}
}

uint32_t
sd_spi_millis(
	void
)
{
	return 0;
}

void
sd_spi_begin(
	void
)
{
}

void
sd_spi_begin_transaction(
	uint32_t transfer_speed_hz
)
{
		// printf("SS2 CS=Low\r\n");
	    //  *spiStatus = (SPI_SS1_DISABLE | SPI_SS2_ENABLE | SPI_DATA); // SS1 & Cmd

}

void
sd_spi_end_transaction(
	void
)
{
		// printf("SS2 CS=High\r\n");
	    //  *spiStatus = (SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Cmd
}

void
sd_spi_send_byte(
	uint8_t b
)
{
	sendAndWait(b);
}

uint8_t
sd_spi_receive_byte(
	void
)
{
	while ((*spiStatus & MISO_DATA) == 0);
	uint8_t v = *spiIn;
	printf("  Read Byte %x\r\n", v);
	return v;
	
}