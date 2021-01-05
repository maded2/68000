
basic68k.srec: basic68k.asm
	vasmm68k_mot -esc -m68000 -o basic68k.srec -Fsrec -nowarn=2028 -L basic68k.lst basic68k.asm

basic68k.bin: basic68k.srec
	srec_cat $< -o $@ -binary 

all: basic68k.bin

clean:
	$(RM) basic68k.bin basic68k.srec basic68k.lst 
