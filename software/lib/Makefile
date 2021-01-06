CC=m68k-linux-gnu-gcc-10
AR=m68k-linux-gnu-ar

LIB_SRC = uart.s lib.s memset.c memcpy.c

LIB_OBJS = uart.o lib.o memset.o memcpy.o 

# boot.o needs to be 1st in the list as it contains the Vector table
ALL_OBJS = $(LIB_OBJS) 

TARGET_BIN = libsys.a

all: $(TARGET_BIN)	

$(ALL_OBJS): $(MONITOR_SRC) $(RUNTIME_SRC)
	$(CC) -Wall -m68000 -fomit-frame-pointer -nostdlib -nodefaultlibs -c $(LIB_SRC)

$(TARGET_BIN): $(ALL_OBJS)	
	$(AR)  rcs $(TARGET_BIN) $(ALL_OBJS)

clean:
	$(RM) $(TARGET_BIN) $(ALL_OBJS)