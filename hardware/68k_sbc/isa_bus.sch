EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "68000 SBC"
Date "2020-11-12"
Rev "1.2"
Comp ""
Comment1 "Backplane"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5000 2500 2    50   Input ~ 0
AS
Text GLabel 3600 3400 0    50   Input ~ 0
CPU_CLK
$Comp
L power:GND #PWR08
U 1 1 5FA2E7A9
P 2450 2500
F 0 "#PWR08" H 2450 2250 50  0001 C CNN
F 1 "GND" H 2455 2327 50  0000 C CNN
F 2 "" H 2450 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FA2F0CC
P 2500 6450
F 0 "#PWR09" H 2500 6200 50  0001 C CNN
F 1 "GND" H 2505 6277 50  0000 C CNN
F 2 "" H 2500 6450 50  0001 C CNN
F 3 "" H 2500 6450 50  0001 C CNN
	1    2500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1500 2450 1500
Wire Wire Line
	2450 1500 2450 1900
Wire Wire Line
	3600 2400 2450 2400
Connection ~ 2450 2400
Wire Wire Line
	2450 2400 2450 2500
Wire Wire Line
	3600 6400 2500 6400
Wire Wire Line
	2500 6400 2500 6450
Wire Wire Line
	3600 4500 2500 4500
Wire Wire Line
	2500 4500 2500 6400
Connection ~ 2500 6400
$Comp
L power:VCC #PWR010
U 1 1 5FA357CA
P 2550 1250
F 0 "#PWR010" H 2550 1100 50  0001 C CNN
F 1 "VCC" H 2565 1423 50  0000 C CNN
F 2 "" H 2550 1250 50  0001 C CNN
F 3 "" H 2550 1250 50  0001 C CNN
	1    2550 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5FA3668B
P 2600 4150
F 0 "#PWR011" H 2600 4000 50  0001 C CNN
F 1 "VCC" H 2615 4323 50  0000 C CNN
F 2 "" H 2600 4150 50  0001 C CNN
F 3 "" H 2600 4150 50  0001 C CNN
	1    2600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6200 2600 6200
Wire Wire Line
	3600 1700 2550 1700
Wire Wire Line
	2550 1700 2550 1250
$Comp
L power:+3.3V #PWR012
U 1 1 5FA3C99B
P 2750 1250
F 0 "#PWR012" H 2750 1100 50  0001 C CNN
F 1 "+3.3V" H 2765 1423 50  0000 C CNN
F 2 "" H 2750 1250 50  0001 C CNN
F 3 "" H 2750 1250 50  0001 C CNN
	1    2750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2300 2750 2300
Wire Wire Line
	2750 2300 2750 1250
Text GLabel 5000 4700 2    50   Input ~ 0
RW
Text GLabel 5000 5500 2    50   Input ~ 0
UDS
Text GLabel 5000 5600 2    50   Input ~ 0
LDS
Text GLabel 3600 1600 0    50   Input ~ 0
RST
Text GLabel 3600 5400 0    50   Output ~ 0
DTACK
Text GLabel 3600 3700 0    50   Input ~ 0
FC0
Text GLabel 3600 3800 0    50   Input ~ 0
FC1
Text GLabel 3600 3900 0    50   Input ~ 0
FC2
Text GLabel 3600 5500 0    50   Output ~ 0
BERR
Text GLabel 3600 5100 0    50   Output ~ 0
IPL0
Text GLabel 3600 5200 0    50   Output ~ 0
IPL1
Text GLabel 3600 5300 0    50   Output ~ 0
IPL2
Wire Wire Line
	3600 2100 2450 2100
Connection ~ 2450 2100
Wire Wire Line
	2450 2100 2450 2400
Wire Wire Line
	3600 1900 2450 1900
Connection ~ 2450 1900
Wire Wire Line
	2450 1900 2450 2100
Text GLabel 3600 3300 0    50   Output ~ 0
ROM_SEL
Text GLabel 3600 3000 0    50   Output ~ 0
RAM2_SEL
Text GLabel 3600 2900 0    50   Output ~ 0
RAM1_SEL
Text GLabel 3600 2700 0    50   Output ~ 0
IO_SEL1
Text GLabel 3600 3200 0    50   Output ~ 0
RAM4_SEL
Text GLabel 3600 3100 0    50   Output ~ 0
RAM3_SEL
Text GLabel 3600 2800 0    50   Output ~ 0
IO_SEL2
Text GLabel 3600 1800 0    50   Input ~ 0
RST_H
Text GLabel 3600 5900 0    50   Output ~ 0
WRU
Text GLabel 3600 5600 0    50   Output ~ 0
RDL
Text GLabel 3600 5800 0    50   Output ~ 0
WRL
Text GLabel 3600 5700 0    50   Output ~ 0
RDU
Text GLabel 3600 4800 0    50   Input ~ 0
VMA
Text GLabel 3600 4900 0    50   Output ~ 0
E
Text GLabel 3600 5000 0    50   Input ~ 0
VPA
Text GLabel 3600 6000 0    50   Input ~ 0
IRQ1
Text GLabel 3600 6100 0    50   Input ~ 0
IRQ2
Text GLabel 3600 4000 0    50   Input ~ 0
BGACK
Text GLabel 3600 4100 0    50   Output ~ 0
BG
Text GLabel 3600 4200 0    50   Input ~ 0
BR
NoConn ~ 3600 2500
NoConn ~ 3600 2200
NoConn ~ 3600 2000
NoConn ~ 5000 2400
NoConn ~ 3600 4700
NoConn ~ 3600 4400
NoConn ~ 3600 3600
NoConn ~ 3600 3500
NoConn ~ 3600 6300
Text GLabel 5000 4400 2    50   Input ~ 0
A1
Text GLabel 5000 4300 2    50   Input ~ 0
A2
Text GLabel 5000 4200 2    50   Input ~ 0
A3
Text GLabel 5000 4100 2    50   Input ~ 0
A4
Text GLabel 5000 4000 2    50   Input ~ 0
A5
Text GLabel 5000 3900 2    50   Input ~ 0
A6
Text GLabel 5000 3800 2    50   Input ~ 0
A7
Text GLabel 5000 3700 2    50   Input ~ 0
A8
Text GLabel 5000 3600 2    50   Input ~ 0
A9
Text GLabel 5000 3500 2    50   Input ~ 0
A10
Text GLabel 5000 3400 2    50   Input ~ 0
A11
Text GLabel 5000 3300 2    50   Input ~ 0
A12
Text GLabel 5000 3200 2    50   Input ~ 0
A13
Text GLabel 5000 3100 2    50   Input ~ 0
A14
Text GLabel 5000 3000 2    50   Input ~ 0
A15
Text GLabel 5000 2900 2    50   Input ~ 0
A16
Text GLabel 5000 5400 2    50   Input ~ 0
A17
Text GLabel 5000 5300 2    50   Input ~ 0
A18
Text GLabel 5000 5200 2    50   Input ~ 0
A19
Text GLabel 5000 5100 2    50   Input ~ 0
A20
Text GLabel 5000 5000 2    50   Input ~ 0
A21
Text GLabel 5000 4900 2    50   Input ~ 0
A22
Text GLabel 5000 4800 2    50   Input ~ 0
A23
Text GLabel 5000 5700 2    50   BiDi ~ 0
D8
Text GLabel 5000 5800 2    50   BiDi ~ 0
D9
Text GLabel 5000 5900 2    50   BiDi ~ 0
D10
Text GLabel 5000 6000 2    50   BiDi ~ 0
D11
Text GLabel 5000 6100 2    50   BiDi ~ 0
D12
Text GLabel 5000 6200 2    50   BiDi ~ 0
D13
Text GLabel 5000 6300 2    50   BiDi ~ 0
D14
Text GLabel 5000 6400 2    50   BiDi ~ 0
D15
Text GLabel 5000 2300 2    50   BiDi ~ 0
D0
Text GLabel 5000 2200 2    50   BiDi ~ 0
D1
Text GLabel 5000 2100 2    50   BiDi ~ 0
D2
Text GLabel 5000 2000 2    50   BiDi ~ 0
D3
Text GLabel 5000 1900 2    50   BiDi ~ 0
D4
Text GLabel 5000 1800 2    50   BiDi ~ 0
D5
Text GLabel 5000 1700 2    50   BiDi ~ 0
D6
Text GLabel 5000 1600 2    50   BiDi ~ 0
D7
$Comp
L 68k_dev:Passive_Bus_ISA_16bit J2
U 1 1 60632F6E
P 4300 4000
F 0 "J2" H 4300 6767 50  0000 C CNN
F 1 "Passive_Bus_ISA_16bit" H 4300 6676 50  0000 C CNN
F 2 "Connector_PCBEdge:BUS_AT" H 4300 4050 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 4300 4050 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4150 2600 4300
Wire Wire Line
	3600 4300 2600 4300
Connection ~ 2600 4300
Wire Wire Line
	2600 4300 2600 6200
NoConn ~ 5000 2600
NoConn ~ 5000 2700
NoConn ~ 5000 2800
NoConn ~ 5000 1500
NoConn ~ 5000 4500
NoConn ~ 3600 2600
NoConn ~ 7650 6000
$Comp
L power:+3.3V #PWR077
U 1 1 5FD0BD27
P 9400 1800
F 0 "#PWR077" H 9400 1650 50  0001 C CNN
F 1 "+3.3V" H 9415 1973 50  0000 C CNN
F 2 "" H 9400 1800 50  0001 C CNN
F 3 "" H 9400 1800 50  0001 C CNN
	1    9400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2100 9100 1800
Wire Wire Line
	9100 1800 9400 1800
$Comp
L power:VCC #PWR078
U 1 1 5FD0CF03
P 9600 1800
F 0 "#PWR078" H 9600 1650 50  0001 C CNN
F 1 "VCC" H 9615 1973 50  0000 C CNN
F 2 "" H 9600 1800 50  0001 C CNN
F 3 "" H 9600 1800 50  0001 C CNN
	1    9600 1800
	1    0    0    -1  
$EndComp
Connection ~ 9400 1800
$Comp
L Logic_LevelTranslator:TXS0108EPW U15
U 1 1 5FD0AC48
P 9500 2500
F 0 "U15" H 9500 2500 50  0000 C CNN
F 1 "TXS0108EPW" H 9500 1550 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9500 1750 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/txs0108e.pdf" H 9500 2400 50  0001 C CNN
	1    9500 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5FB1357E
P 7250 3100
F 0 "J3" H 7300 4217 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 7300 4126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Horizontal" H 7250 3100 50  0001 C CNN
F 3 "~" H 7250 3100 50  0001 C CNN
	1    7250 3100
	-1   0    0    -1  
$EndComp
NoConn ~ 7450 3000
NoConn ~ 7450 3100
NoConn ~ 7450 3200
NoConn ~ 7450 3300
NoConn ~ 7450 3400
NoConn ~ 7450 3500
NoConn ~ 7450 3600
NoConn ~ 6950 4100
NoConn ~ 6950 4000
NoConn ~ 6950 3900
NoConn ~ 6950 3800
NoConn ~ 6950 3700
NoConn ~ 6950 3600
NoConn ~ 6950 3500
NoConn ~ 6950 3400
NoConn ~ 6950 3300
NoConn ~ 6950 3200
NoConn ~ 6950 3100
NoConn ~ 6950 3000
NoConn ~ 6950 2900
NoConn ~ 6950 2800
$Comp
L power:GND #PWR015
U 1 1 6078BD78
P 8050 3100
F 0 "#PWR015" H 8050 2850 50  0001 C CNN
F 1 "GND" H 8055 2927 50  0000 C CNN
F 2 "" H 8050 3100 50  0001 C CNN
F 3 "" H 8050 3100 50  0001 C CNN
	1    8050 3100
	-1   0    0    -1  
$EndComp
Text GLabel 9900 2500 2    50   Input ~ 0
MISO
Text GLabel 9900 2600 2    50   Output ~ 0
MOSI
Text GLabel 9900 2400 2    50   Input ~ 0
SCLK
Wire Wire Line
	8400 3900 8400 3700
Wire Wire Line
	8250 3900 8400 3900
$Comp
L power:VCC #PWR013
U 1 1 607542B6
P 8400 3700
F 0 "#PWR013" H 8400 3550 50  0001 C CNN
F 1 "VCC" H 8415 3873 50  0000 C CNN
F 2 "" H 8400 3700 50  0001 C CNN
F 3 "" H 8400 3700 50  0001 C CNN
	1    8400 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 4100 7650 4100
$Comp
L power:GND #PWR016
U 1 1 6074C971
P 7650 4250
F 0 "#PWR016" H 7650 4000 50  0001 C CNN
F 1 "GND" H 7655 4077 50  0000 C CNN
F 2 "" H 7650 4250 50  0001 C CNN
F 3 "" H 7650 4250 50  0001 C CNN
	1    7650 4250
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 6074A81E
P 7950 3900
AR Path="/6074A81E" Ref="JP?"  Part="1" 
AR Path="/5F9C489E/6074A81E" Ref="JP?"  Part="1" 
AR Path="/5F8E4AC3/6074A81E" Ref="JP1"  Part="1" 
F 0 "JP1" H 7950 4164 50  0000 C CNN
F 1 "Jumper" H 7950 4073 50  0000 C CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" H 7950 3900 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
	1    7950 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7650 3900 7450 3900
Text GLabel 7450 4000 2    50   Input ~ 0
CTS
Text GLabel 9900 2300 2    50   Input ~ 0
SS2
Text GLabel 9900 2200 2    50   Input ~ 0
SS1
Text GLabel 7450 3800 2    50   Output ~ 0
RX
Text GLabel 7450 3700 2    50   Input ~ 0
TX
Text GLabel 9900 2700 2    50   Input ~ 0
DC
$Comp
L power:+3.3V #PWR0101
U 1 1 5FD1428B
P 8050 2000
F 0 "#PWR0101" H 8050 1850 50  0001 C CNN
F 1 "+3.3V" H 8065 2173 50  0000 C CNN
F 2 "" H 8050 2000 50  0001 C CNN
F 3 "" H 8050 2000 50  0001 C CNN
	1    8050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2200 9100 2200
Wire Wire Line
	7450 2300 9100 2300
Wire Wire Line
	7450 2400 9100 2400
Wire Wire Line
	7450 2500 9100 2500
Wire Wire Line
	9100 2600 7450 2600
Wire Wire Line
	9100 2700 7450 2700
NoConn ~ 9900 2800
NoConn ~ 9900 2900
NoConn ~ 9100 2800
NoConn ~ 9100 2900
NoConn ~ 6950 2700
NoConn ~ 6950 2600
NoConn ~ 6950 2500
NoConn ~ 6950 2400
NoConn ~ 6950 2300
NoConn ~ 6950 2200
Wire Wire Line
	7450 2800 8050 2800
Wire Wire Line
	8050 2800 8050 2000
Wire Wire Line
	7450 2900 8050 2900
Wire Wire Line
	8050 2900 8050 3100
Wire Wire Line
	7650 4250 7650 4300
Wire Wire Line
	7650 4250 7650 4100
Connection ~ 7650 4250
$Comp
L power:GND #PWR0102
U 1 1 5FD4A482
P 9500 3200
F 0 "#PWR0102" H 9500 2950 50  0001 C CNN
F 1 "GND" H 9505 3027 50  0000 C CNN
F 2 "" H 9500 3200 50  0001 C CNN
F 3 "" H 9500 3200 50  0001 C CNN
	1    9500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD33337
P 10450 5050
AR Path="/5F8E786F/5FD33337" Ref="#PWR?"  Part="1" 
AR Path="/5FD33337" Ref="#PWR?"  Part="1" 
AR Path="/606CB633/5FD33337" Ref="#PWR?"  Part="1" 
AR Path="/5F8E4AC3/5FD33337" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 10450 4800 50  0001 C CNN
F 1 "GND" H 10455 4877 50  0000 C CNN
F 2 "" H 10450 5050 50  0001 C CNN
F 3 "" H 10450 5050 50  0001 C CNN
	1    10450 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD33343
P 10000 4850
AR Path="/5F8E786F/5FD33343" Ref="C?"  Part="1" 
AR Path="/5FD33343" Ref="C?"  Part="1" 
AR Path="/606CB633/5FD33343" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/5FD33343" Ref="C23"  Part="1" 
F 0 "C23" H 10115 4896 50  0000 L CNN
F 1 "100nF" H 10115 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10038 4700 50  0001 C CNN
F 3 "~" H 10000 4850 50  0001 C CNN
	1    10000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 4600 10450 4700
Wire Wire Line
	10450 4700 10000 4700
Wire Wire Line
	10450 5000 10450 5050
Wire Wire Line
	10000 5000 10450 5000
$Comp
L power:GND #PWR?
U 1 1 5FD33C2A
P 9300 5050
AR Path="/5F8E786F/5FD33C2A" Ref="#PWR?"  Part="1" 
AR Path="/5FD33C2A" Ref="#PWR?"  Part="1" 
AR Path="/606CB633/5FD33C2A" Ref="#PWR?"  Part="1" 
AR Path="/5F8E4AC3/5FD33C2A" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 9300 4800 50  0001 C CNN
F 1 "GND" H 9305 4877 50  0000 C CNN
F 2 "" H 9300 5050 50  0001 C CNN
F 3 "" H 9300 5050 50  0001 C CNN
	1    9300 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FD33C30
P 9300 4600
AR Path="/5F8E786F/5FD33C30" Ref="#PWR?"  Part="1" 
AR Path="/5FD33C30" Ref="#PWR?"  Part="1" 
AR Path="/606CB633/5FD33C30" Ref="#PWR?"  Part="1" 
AR Path="/5F8E4AC3/5FD33C30" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 9300 4450 50  0001 C CNN
F 1 "VCC" H 9315 4773 50  0000 C CNN
F 2 "" H 9300 4600 50  0001 C CNN
F 3 "" H 9300 4600 50  0001 C CNN
	1    9300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD33C36
P 8850 4850
AR Path="/5F8E786F/5FD33C36" Ref="C?"  Part="1" 
AR Path="/5FD33C36" Ref="C?"  Part="1" 
AR Path="/606CB633/5FD33C36" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/5FD33C36" Ref="C11"  Part="1" 
F 0 "C11" H 8965 4896 50  0000 L CNN
F 1 "100nF" H 8965 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8888 4700 50  0001 C CNN
F 3 "~" H 8850 4850 50  0001 C CNN
	1    8850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4600 9300 4700
Wire Wire Line
	9300 4700 8850 4700
Wire Wire Line
	9300 5000 9300 5050
Wire Wire Line
	8850 5000 9300 5000
$Comp
L power:+3.3V #PWR0106
U 1 1 5FD3539C
P 10450 4600
F 0 "#PWR0106" H 10450 4450 50  0001 C CNN
F 1 "+3.3V" H 10465 4773 50  0000 C CNN
F 2 "" H 10450 4600 50  0001 C CNN
F 3 "" H 10450 4600 50  0001 C CNN
	1    10450 4600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
