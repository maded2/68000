
 
#include "stdint-gcc.h"
#include "stdio.h"
#include "stdlib.h"

#include "ssd1351.h"
#include "sys.h"

#include "sd_spi.h"

int main()
{
	int8_t error;
	printf("SDCard demo\r\n");

  if (error = sd_spi_init(CHIP_SELECT_PIN)) {
		printf("Failed to read cid. Error code: %d \n", error);
		return;
	}
  printf("\n\n\nInitialized successfully!\r\n");

	printf("Card type: ");
	switch (sd_spi_card_type()) {
		case 0 : printf(F("Undefined\n")); break;
		case 1 : printf(F("SD1\n")); break;
		case 2 : printf(F("SD2\n")); break;
		case 3 : printf(F("SDHC\n")); break;
		case 4 : printf(F("MMC\n")); break;
	}

	/*******************************/
	/* Read registers
	/*******************************/

	sd_spi_cid_t cid;
	if (sd_spi_read_cid_register(&cid)) {
		printf("Failed to read cid. Error code: %d \n", error);
		return;
	}

	printf(F("\nManufacturer ID: "));
	printf("%d", cid.mid);
	printf("\nOEM/Application ID: %c%c \n", cid.oid[0], cid.oid[1]);
	printf("\nProduct name: %c%c%c%c \n", cid.pnm[0], cid.pnm[1], cid.pnm[2], cid.pnm[3], cid.pnm[4]);
	printf("Product revision number: %d.%d \n", cid.prv_n, cid.prv_m);
	printf("Product serial number: %d \n", (uint32_t)cid.psn_high << 24 | 
			(uint32_t) cid.psn_mid_high << 16 |
			(uint32_t) cid.psn_mid_low << 8 |
			(uint32_t) cid.psn_low);
	printf("Manufacturing Date: Year = 20%s%d, Month = %d \n", (cid.mdt_year < 10) ? "0" : "", cid.mdt_year, cid.mdt_month);

	char *yes = "Yes";
	char *no = "No";

	sd_spi_csd_t csd;
	if (sd_spi_read_csd_register(&csd)) {
		printf("Failed to read cid. Error code: %d \n", error);
		return;
	}

	printf("\nCSD Version: %d \n", csd.csd_structure);
	printf("Card size: %f MB \n", (double) sd_spi_card_size() * 512 / 1000000, 0);
	printf("Number of blocks: %d \n", sd_spi_card_size());
	printf("Read block partial: %s \n", (csd.read_bl_partial) ? "Yes" : "No");
	printf("Write block partial: %s \n", (csd.write_bl_partial) ? "Yes" : "No");
	printf("Read block misalign: %s \n", (csd.read_bl_misalign) ? "Yes" : "No");
	printf("Write block misalign: %s \n", (csd.write_bl_misalign) ? "Yes" : "No");
	printf("Maximum read block length: %d bytes \n", 1 << csd.max_read_bl_len);
	printf("Erase single block enable: %s \n", (csd.erase_bl_en) ? "Yes" : "No");
	printf("Temporarily write protected: %s \n", (csd.tmp_write_protect) ? "Yes" : "No");
	printf("Permanently write protected: %s \n", (csd.perm_write_protect) ? "Yes" : "No");
	printf("Card contents a copy: %s \n", (csd.copy) ? "Yes" : "No");

	printf("File format: ");
	if (csd.file_format == 0)
		printf("Hard disk-like file system with partition table");
	else if (csd.file_format == 1)
		printf("DOS FAT (floppy-like) with boot sector only (no partition table)");
	else if (csd.file_format == 2)
		printf("Universal File Format");
	else if (csd.file_format == 3)
		printf("Other/Unknown");
	printf("\n");
}


