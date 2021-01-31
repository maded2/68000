CC=m68k-linux-gnu-gcc-10
AR=m68k-linux-gnu-ar

LIB_SRC = crt0.c io.c fpgnulib.c uart.s libgcc.s lb1sf68.S fonts.s spiutils.s ssd1351.c muldi3.c
LIB_OBJS = crt0.o io.o fpgnulib.o uart.o libgcc.o lb1sf68.o fonts.o spiutils.o ssd1351.o muldi3.o
TARGET_BIN = libsys.a

CFLAGS = -Wall -m68000 -fpack-struct=2 -msoft-float -fomit-frame-pointer -nostdlib -nodefaultlibs -mstrict-align -I ../include
# Soft-floating point flags, only include the functions needed
CFLAGS += -D L_float -D L_floatex -D L_umodsi3 -D L_mulsi3 -D L_ltsf2 -D L_gtsf2

all: $(TARGET_BIN)	

$(LIB_OBJS): $(LIB_SRC)
	$(CC) $(CFLAGS)  -c $(LIB_SRC)

$(TARGET_BIN): $(LIB_OBJS)	
	$(AR) rcs $(TARGET_BIN) $(LIB_OBJS)

clean:
	$(RM) $(TARGET_BIN) $(LIB_OBJS)