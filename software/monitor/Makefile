CC=m68k-linux-gnu-gcc-10
LD=m68k-linux-gnu-ld
OBJCOPY=m68k-linux-gnu-objcopy

MONITOR_SRC = monitor.c xmodem.c
RUNTIME_SRC = boot.s lib.s memset.c memcpy.c

MONITOR_OBJS = monitor.o xmodem.o
RUNTIME_OBJS = boot.o lib.o memset.o memcpy.o 

# boot.o needs to be 1st in the list as it contains the Vector table
ALL_OBJS = $(RUNTIME_OBJS) $(MONITOR_OBJS) 

TARGET_BIN_ELF = monitor.elf
TARGET_BIN = monitor.bin

all: $(TARGET_BIN)	

$(ALL_OBJS): $(MONITOR_SRC) $(RUNTIME_SRC)
	$(CC) -Wall -m68000 -fomit-frame-pointer -nostdlib -nodefaultlibs -c  $(MONITOR_SRC) $(RUNTIME_SRC)

$(TARGET_BIN_ELF): $(ALL_OBJS)	
	$(LD) $(ALL_OBJS) -T monitor.lnk -o $(TARGET_BIN_ELF)

$(TARGET_BIN): $(TARGET_BIN_ELF)	
	$(OBJCOPY) --reverse-bytes=2 --pad-to 0x00020000 --only-section .text* --only-section .rodata* --only-section .data* -v -O binary $(TARGET_BIN_ELF) $(TARGET_BIN)
	# $(OBJCOPY) -v -O binary a.out monitor.bin

#monitor.s: monitor.c
#	$(CC) -Wall -nostdlib -nodefaultlibs -m68000 -fomit-frame-pointer -S monitor.c

clean:
	$(RM) $(TARGET_BIN) $(TARGET_BIN_ELF) $(ALL_OBJS)