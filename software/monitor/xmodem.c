#include "types.h"

#define SOH  0x01
#define EOT  0x04
#define ACK  0x06
#define NAK  0x15
#define CAN  0x18

int getch(int timeout) {
	for (int i=0; i< timeout; i++) {
		int c = inch();
		if ( c < 0) {
			continue;
		}
		return c;
	}
	return -1;
}

void purgeInputs() {
	while (getch(1000000) >= 0);
}

int xmodemReceive(unsigned char *dest)
{
	unsigned char buffer[128]; 
	unsigned char packetno = 1;

	while (1) {
		outch(NAK);
		int c = getch(250000);
		if (c == SOH) {
			break;
		}
	}

	while (1) {
		unsigned char newPacketNo1 = inch2();
		inch2(); // skip 2nd packet no.
		for (int i=0; i< 128; i++) {
			buffer[i] = inch2();
		}
		int checksum = inch2(); // read check sum
		outch(ACK);

		if (newPacketNo1 != packetno) {	
			packetno = newPacketNo1;
			dest += 128;
		}
		memcpy(dest, &buffer, 128);

		// *dest++ = checksum;

		unsigned char nextCmd;
again:	nextCmd = (unsigned char)inch2();
		if (nextCmd == EOT) {
			outch(ACK);
			return 0;
		}
		if (nextCmd == CAN) {
			purgeInputs();
			outch(ACK);
			return -1;
		}
		if (nextCmd != SOH) {
			*dest++ = nextCmd;
			goto again;
		}
	}
	return 0;
}

