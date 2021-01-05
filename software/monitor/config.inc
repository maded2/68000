        include "macros.inc"


ROMSIZE         equ     $020000 ;128KB
RAMSIZE         equ     $100000 ;1MB
RAMEND          equ     RAM+RAMSIZE
INITIAL_SP      equ     $C10000
USER_SP         equ     $C20000
;-------------------------------------------------------------------------------
; Base addresses
ROM             equ     $000000
RAM             equ     $E00000

ROM_START       equ     $000400


; TL16C550 UART base address
UART            equ $A00000

; register offsets
RHR             equ 0   ; receive holding register (read)
THR             equ 0   ; transmit holding register (write)
IER             equ 2   ; interrupt enable register
ISR             equ 4   ; interrupt status register (read)
FCR             equ 4   ; FIFO control register (write)
LCR             equ 6   ; line control register
MCR             equ 8   ; modem control register
LSR             equ 10  ; line status register
MSR             equ 12  ; modem status register
SPR             equ 14  ; scratchpad register (reserved for system use)
DLL             equ 0   ; divisor latch LSB
DLM             equ 2   ; divisor latch MSB
; aliases for register names (used by different manufacturers)
RBR             equ RHR ; receive buffer register
IIR             equ ISR ; interrupt identification register
SCR             equ SPR ; scratch register