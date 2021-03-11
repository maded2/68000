
 
#include "stdint-gcc.h"
#include "stdio.h"
#include "stdlib.h"

#include "sys.h"

#include "sd_spi.h"

int main()
{
	int8_t error;
	printf("\nSDCard demo\r\r\n");

  	if (error = sd_spi_init(0)) {
		printf("Failed to read cid. Error code: %d \r\n", error);
		return 1;
	}
  	printf("Initialized successfully!\r\n");

	// printf("Card type: ");
	// switch (sd_spi_card_type()) {
	// 	case 0 : printf("Undefined\r\n"); break;
	// 	case 1 : printf("SD1\r\n"); break;
	// 	case 2 : printf("SD2\r\n"); break;
	// 	case 3 : printf("SDHC\r\n"); break;
	// 	case 4 : printf("MMC\r\n"); break;
	// }

	// /* Read registers */

	// sd_spi_cid_t cid;
	// if (sd_spi_read_cid_register(&cid)) {
	// 	printf("Failed to read cid. Error code: %d \r\n", error);
	// 	return 1;
	// }

	// printf("Manufacturer ID: %d \r\n", cid.mid);
	// printf("OEM/Application ID: %c%c \r\n", cid.oid[0], cid.oid[1]);
	// printf("Product name: %c%c%c%c%c \r\n", cid.pnm[0], cid.pnm[1], cid.pnm[2], cid.pnm[3], cid.pnm[4]);
	// printf("Product revision number: %d.%d \r\n", cid.prv_n, cid.prv_m);
	// printf("Product serial number: %d \r\n", (uint32_t)cid.psn_high << 24 | 
	// 		(uint32_t) cid.psn_mid_high << 16 |
	// 		(uint32_t) cid.psn_mid_low << 8 |
	// 		(uint32_t) cid.psn_low);
	// printf("Manufacturing Date: Year = 20%s%d, Month = %d \r\n", (cid.mdt_year < 10) ? "0" : "", cid.mdt_year, cid.mdt_month);

	// sd_spi_csd_t csd;
	// if (sd_spi_read_csd_register(&csd)) {
	// 	printf("Failed to read cid. Error code: %d \r\n", error);
	// 	return 1;
	// }

	// printf("\r\nCSD Version: %d \r\n", csd.csd_structure);
	// // printf("Card size: %f MB \r\n", (double) sd_spi_card_size() * 512 / 1000000);
	// printf("Number of blocks: %d \r\n", sd_spi_card_size());
	// printf("Read block partial: %s \r\n", (csd.read_bl_partial) ? "Yes" : "No");
	// printf("Write block partial: %s \r\n", (csd.write_bl_partial) ? "Yes" : "No");
	// printf("Read block misalign: %s \r\n", (csd.read_bl_misalign) ? "Yes" : "No");
	// printf("Write block misalign: %s \r\n", (csd.write_bl_misalign) ? "Yes" : "No");
	// printf("Maximum read block length: %d bytes \r\n", 1 << csd.max_read_bl_len);
	// printf("Erase single block enable: %s \r\n", (csd.erase_bl_en) ? "Yes" : "No");
	// printf("Temporarily write protected: %s \r\n", (csd.tmp_write_protect) ? "Yes" : "No");
	// printf("Permanently write protected: %s \r\n", (csd.perm_write_protect) ? "Yes" : "No");
	// printf("Card contents a copy: %s \r\n", (csd.copy) ? "Yes" : "No");

	// printf("File format: ");
	// if (csd.file_format == 0)
	// 	printf("Hard disk-like file system with partition table");
	// else if (csd.file_format == 1)
	// 	printf("DOS FAT (floppy-like) with boot sector only (no partition table)");
	// else if (csd.file_format == 2)
	// 	printf("Universal File Format");
	// else if (csd.file_format == 3)
	// 	printf("Other/Unknown");
	// printf("\r\n");
}


