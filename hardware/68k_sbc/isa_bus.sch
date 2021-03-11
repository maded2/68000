EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title "68000 SBC"
Date "2020-11-12"
Rev "1.2"
Comp ""
Comment1 "Backplane"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6900 2500 2    50   Input ~ 0
BUS_AS
Text GLabel 5500 3400 0    50   Input ~ 0
BUS_CPU_CLK
$Comp
L power:GND #PWR08
U 1 1 5FA2E7A9
P 4350 2500
F 0 "#PWR08" H 4350 2250 50  0001 C CNN
F 1 "GND" H 4355 2327 50  0000 C CNN
F 2 "" H 4350 2500 50  0001 C CNN
F 3 "" H 4350 2500 50  0001 C CNN
	1    4350 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FA2F0CC
P 4400 6450
F 0 "#PWR09" H 4400 6200 50  0001 C CNN
F 1 "GND" H 4405 6277 50  0000 C CNN
F 2 "" H 4400 6450 50  0001 C CNN
F 3 "" H 4400 6450 50  0001 C CNN
	1    4400 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1500 4350 1500
Wire Wire Line
	4350 1500 4350 1900
Wire Wire Line
	5500 2400 4350 2400
Connection ~ 4350 2400
Wire Wire Line
	4350 2400 4350 2500
Wire Wire Line
	5500 6400 4400 6400
Wire Wire Line
	4400 6400 4400 6450
Wire Wire Line
	5500 4500 4400 4500
Wire Wire Line
	4400 4500 4400 6400
Connection ~ 4400 6400
$Comp
L power:VCC #PWR010
U 1 1 5FA357CA
P 4450 1250
F 0 "#PWR010" H 4450 1100 50  0001 C CNN
F 1 "VCC" H 4465 1423 50  0000 C CNN
F 2 "" H 4450 1250 50  0001 C CNN
F 3 "" H 4450 1250 50  0001 C CNN
	1    4450 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5FA3668B
P 4500 4150
F 0 "#PWR011" H 4500 4000 50  0001 C CNN
F 1 "VCC" H 4515 4323 50  0000 C CNN
F 2 "" H 4500 4150 50  0001 C CNN
F 3 "" H 4500 4150 50  0001 C CNN
	1    4500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6200 4500 6200
Wire Wire Line
	5500 1700 4450 1700
Wire Wire Line
	4450 1700 4450 1250
Text GLabel 6900 4700 2    50   Input ~ 0
BUS_RW
Text GLabel 6900 5500 2    50   Input ~ 0
BUS_UDS
Text GLabel 6900 5600 2    50   Input ~ 0
BUS_LDS
Text GLabel 5500 1600 0    50   Input ~ 0
RST
Text GLabel 5500 5400 0    50   Output ~ 0
DTACK
Text GLabel 5500 3700 0    50   Input ~ 0
BUS_FC0
Text GLabel 5500 3800 0    50   Input ~ 0
BUS_FC1
Text GLabel 5500 3900 0    50   Input ~ 0
BUS_FC2
Text GLabel 5500 5500 0    50   Output ~ 0
BERR
Text GLabel 5500 5100 0    50   Output ~ 0
IPL0
Text GLabel 5500 5200 0    50   Output ~ 0
IPL1
Text GLabel 5500 5300 0    50   Output ~ 0
IPL2
Wire Wire Line
	5500 2100 4350 2100
Connection ~ 4350 2100
Wire Wire Line
	4350 2100 4350 2400
Wire Wire Line
	5500 1900 4350 1900
Connection ~ 4350 1900
Wire Wire Line
	4350 1900 4350 2100
Text GLabel 5500 4800 0    50   Output ~ 0
VMA
Text GLabel 5500 4900 0    50   Input ~ 0
E
Text GLabel 5500 4000 0    50   Input ~ 0
BGACK
Text GLabel 5500 4100 0    50   Input ~ 0
BUS_BG
Text GLabel 5500 4200 0    50   Output ~ 0
BR
NoConn ~ 5500 2500
NoConn ~ 5500 2200
NoConn ~ 5500 2000
NoConn ~ 6900 2400
NoConn ~ 5500 4700
NoConn ~ 5500 4400
NoConn ~ 5500 3600
NoConn ~ 5500 3500
NoConn ~ 5500 6300
Text GLabel 6900 4400 2    50   Input ~ 0
BUS_A1
Text GLabel 6900 4300 2    50   Input ~ 0
BUS_A2
Text GLabel 6900 4200 2    50   Input ~ 0
BUS_A3
Text GLabel 6900 4100 2    50   Input ~ 0
BUS_A4
Text GLabel 6900 4000 2    50   Input ~ 0
BUS_A5
Text GLabel 6900 3900 2    50   Input ~ 0
BUS_A6
Text GLabel 6900 3800 2    50   Input ~ 0
BUS_A7
Text GLabel 6900 3700 2    50   Input ~ 0
BUS_A8
Text GLabel 6900 5400 2    50   Input ~ 0
BUS_A17
Text GLabel 6900 5300 2    50   Input ~ 0
BUS_A18
Text GLabel 6900 5200 2    50   Input ~ 0
BUS_A19
Text GLabel 6900 5100 2    50   Input ~ 0
BUS_A20
Text GLabel 6900 5000 2    50   Input ~ 0
BUS_A21
Text GLabel 6900 4900 2    50   Input ~ 0
BUS_A22
Text GLabel 6900 4800 2    50   Input ~ 0
BUS_A23
Text GLabel 8800 3600 2    50   BiDi ~ 0
BUS_D8
Text GLabel 8800 3700 2    50   BiDi ~ 0
BUS_D9
Text GLabel 8800 3800 2    50   BiDi ~ 0
BUS_D10
Text GLabel 8800 3900 2    50   BiDi ~ 0
BUS_D11
Text GLabel 8800 4000 2    50   BiDi ~ 0
BUS_D12
Text GLabel 8800 4100 2    50   BiDi ~ 0
BUS_D13
Text GLabel 8800 4200 2    50   BiDi ~ 0
BUS_D14
Text GLabel 8800 4300 2    50   BiDi ~ 0
BUS_D15
Text GLabel 8800 2050 2    50   BiDi ~ 0
BUS_D0
Text GLabel 8800 1950 2    50   BiDi ~ 0
BUS_D1
Text GLabel 8800 1850 2    50   BiDi ~ 0
BUS_D2
Text GLabel 8800 1750 2    50   BiDi ~ 0
BUS_D3
Text GLabel 8800 1650 2    50   BiDi ~ 0
BUS_D4
Text GLabel 8800 1550 2    50   BiDi ~ 0
BUS_D5
Text GLabel 8800 1450 2    50   BiDi ~ 0
BUS_D6
Text GLabel 8800 1350 2    50   BiDi ~ 0
BUS_D7
$Comp
L 68k_dev:Passive_Bus_ISA_16bit J2
U 1 1 60632F6E
P 6200 4000
F 0 "J2" H 6200 6767 50  0000 C CNN
F 1 "Passive_Bus_ISA_16bit" H 6200 6676 50  0000 C CNN
F 2 "Connector_PCBEdge:BUS_AT" H 6200 4050 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 6200 4050 50  0001 C CNN
	1    6200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4150 4500 4300
Wire Wire Line
	5500 4300 4500 4300
Connection ~ 4500 4300
Wire Wire Line
	4500 4300 4500 6200
NoConn ~ 6900 2600
NoConn ~ 6900 2700
NoConn ~ 6900 2800
NoConn ~ 6900 1500
NoConn ~ 6900 4500
NoConn ~ 5500 2600
NoConn ~ 5500 1800
NoConn ~ 5500 2300
NoConn ~ 5500 2700
NoConn ~ 5500 2800
NoConn ~ 5500 2900
NoConn ~ 5500 3000
NoConn ~ 5500 3100
NoConn ~ 5500 3200
NoConn ~ 5500 3300
NoConn ~ 5500 5600
NoConn ~ 5500 5700
NoConn ~ 5500 5800
NoConn ~ 5500 5900
NoConn ~ 5500 6000
NoConn ~ 5500 6100
$Comp
L dk_Logic-Buffers-Drivers-Receivers-Transceivers:SN74LVC245AN U24
U 1 1 602FFFF1
P 8600 3500
F 0 "U24" H 8450 3650 60  0000 C CNN
F 1 "SN74LVC245AN" V 8500 3050 60  0000 C CNN
F 2 "KiCad_Libraries:SOIC127P1032X265-20N" H 8800 3700 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74lvc245a" H 8800 3800 60  0001 L CNN
F 4 "296-8503-5-ND" H 8800 3900 60  0001 L CNN "Digi-Key_PN"
F 5 "SN74LVC245AN" H 8800 4000 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8800 4100 60  0001 L CNN "Category"
F 7 "Logic - Buffers, Drivers, Receivers, Transceivers" H 8800 4200 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74lvc245a" H 8800 4300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/SN74LVC245AN/296-8503-5-ND/377483" H 8800 4400 60  0001 L CNN "DK_Detail_Page"
F 10 "IC TXRX NON-INVERT 3.6V 20DIP" H 8800 4500 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 8800 4600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8800 4700 60  0001 L CNN "Status"
	1    8600 3500
	1    0    0    -1  
$EndComp
$Comp
L dk_Logic-Buffers-Drivers-Receivers-Transceivers:SN74LVC245AN U23
U 1 1 603017D7
P 8600 1250
F 0 "U23" H 8400 1400 60  0000 C CNN
F 1 "SN74LVC245AN" V 8500 750 60  0000 C CNN
F 2 "KiCad_Libraries:SOIC127P1032X265-20N" H 8800 1450 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74lvc245a" H 8800 1550 60  0001 L CNN
F 4 "296-8503-5-ND" H 8800 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "SN74LVC245AN" H 8800 1750 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8800 1850 60  0001 L CNN "Category"
F 7 "Logic - Buffers, Drivers, Receivers, Transceivers" H 8800 1950 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74lvc245a" H 8800 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/SN74LVC245AN/296-8503-5-ND/377483" H 8800 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "IC TXRX NON-INVERT 3.6V 20DIP" H 8800 2250 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 8800 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8800 2450 60  0001 L CNN "Status"
	1    8600 1250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS244 U21
U 1 1 60332E6B
P 1450 6000
F 0 "U21" H 1450 6200 50  0000 C CNN
F 1 "74LS244" H 1450 5700 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 1450 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 1450 6000 50  0001 C CNN
	1    1450 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS244 U22
U 1 1 60332E71
P 3350 3850
F 0 "U22" H 3350 4050 50  0000 C CNN
F 1 "74LS244" H 3350 3550 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 3350 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 3350 3850 50  0001 C CNN
	1    3350 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS244 U20
U 1 1 6033468E
P 3300 6000
F 0 "U20" H 3300 6200 50  0000 C CNN
F 1 "74LS244" H 3300 5700 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 3300 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 3300 6000 50  0001 C CNN
	1    3300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4250 2850 4350
Wire Wire Line
	2850 4350 2850 4650
Wire Wire Line
	2850 4650 3350 4650
Connection ~ 2850 4350
Wire Wire Line
	2800 6400 2800 6500
Wire Wire Line
	2800 6500 2800 6800
Wire Wire Line
	2800 6800 3300 6800
Connection ~ 2800 6500
Wire Wire Line
	950  6400 950  6500
Wire Wire Line
	950  6500 950  6800
Wire Wire Line
	950  6800 1450 6800
Connection ~ 950  6500
$Comp
L power:GND #PWR027
U 1 1 6036204D
P 1450 6800
F 0 "#PWR027" H 1450 6550 50  0001 C CNN
F 1 "GND" H 1455 6627 50  0000 C CNN
F 2 "" H 1450 6800 50  0001 C CNN
F 3 "" H 1450 6800 50  0001 C CNN
	1    1450 6800
	1    0    0    -1  
$EndComp
Connection ~ 1450 6800
$Comp
L power:GND #PWR076
U 1 1 60364164
P 3350 4650
F 0 "#PWR076" H 3350 4400 50  0001 C CNN
F 1 "GND" H 3355 4477 50  0000 C CNN
F 2 "" H 3350 4650 50  0001 C CNN
F 3 "" H 3350 4650 50  0001 C CNN
	1    3350 4650
	1    0    0    -1  
$EndComp
Connection ~ 3350 4650
$Comp
L power:GND #PWR017
U 1 1 60364642
P 3300 6800
F 0 "#PWR017" H 3300 6550 50  0001 C CNN
F 1 "GND" H 3305 6627 50  0000 C CNN
F 2 "" H 3300 6800 50  0001 C CNN
F 3 "" H 3300 6800 50  0001 C CNN
	1    3300 6800
	1    0    0    -1  
$EndComp
Connection ~ 3300 6800
$Comp
L power:VCC #PWR016
U 1 1 603654A5
P 3300 5200
F 0 "#PWR016" H 3300 5050 50  0001 C CNN
F 1 "VCC" H 3315 5373 50  0000 C CNN
F 2 "" H 3300 5200 50  0001 C CNN
F 3 "" H 3300 5200 50  0001 C CNN
	1    3300 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR074
U 1 1 60365A92
P 3350 3050
F 0 "#PWR074" H 3350 2900 50  0001 C CNN
F 1 "VCC" H 3365 3223 50  0000 C CNN
F 2 "" H 3350 3050 50  0001 C CNN
F 3 "" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 60366347
P 1450 5200
F 0 "#PWR018" H 1450 5050 50  0001 C CNN
F 1 "VCC" H 1465 5373 50  0000 C CNN
F 2 "" H 1450 5200 50  0001 C CNN
F 3 "" H 1450 5200 50  0001 C CNN
	1    1450 5200
	1    0    0    -1  
$EndComp
Text GLabel 950  5500 0    50   Input ~ 0
CPU_CLK
Text GLabel 950  5600 0    50   Input ~ 0
FC0
Text GLabel 950  5700 0    50   Input ~ 0
FC1
Text GLabel 950  5800 0    50   Input ~ 0
FC2
Text GLabel 950  6000 0    50   Input ~ 0
BG
Text GLabel 2800 6200 0    50   Input ~ 0
A1
Text GLabel 2800 6100 0    50   Input ~ 0
A2
Text GLabel 2800 6000 0    50   Input ~ 0
A3
Text GLabel 2800 5900 0    50   Input ~ 0
A4
Text GLabel 2800 5800 0    50   Input ~ 0
A5
Text GLabel 2800 5700 0    50   Input ~ 0
A6
Text GLabel 2800 5600 0    50   Input ~ 0
A7
Text GLabel 2800 5500 0    50   Input ~ 0
A8
Text GLabel 2850 4050 0    50   Input ~ 0
A9
Text GLabel 2850 3950 0    50   Input ~ 0
A10
Text GLabel 2850 3850 0    50   Input ~ 0
A11
Text GLabel 2850 3750 0    50   Input ~ 0
A12
Text GLabel 2850 3650 0    50   Input ~ 0
A13
Text GLabel 2850 3550 0    50   Input ~ 0
A14
Text GLabel 2850 3450 0    50   Input ~ 0
A15
Text GLabel 2850 3350 0    50   Input ~ 0
A16
$Comp
L 74xx:74LS244 U15
U 1 1 603E659E
P 1450 3850
F 0 "U15" H 1450 4050 50  0000 C CNN
F 1 "74LS244" H 1450 3550 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 1450 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 1450 3850 50  0001 C CNN
	1    1450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4250 950  4350
Wire Wire Line
	950  4350 950  4650
Wire Wire Line
	950  4650 1450 4650
Connection ~ 950  4350
$Comp
L power:GND #PWR013
U 1 1 603E65A8
P 1450 4650
F 0 "#PWR013" H 1450 4400 50  0001 C CNN
F 1 "GND" H 1455 4477 50  0000 C CNN
F 2 "" H 1450 4650 50  0001 C CNN
F 3 "" H 1450 4650 50  0001 C CNN
	1    1450 4650
	1    0    0    -1  
$EndComp
Connection ~ 1450 4650
$Comp
L power:VCC #PWR012
U 1 1 603E65AF
P 1450 3050
F 0 "#PWR012" H 1450 2900 50  0001 C CNN
F 1 "VCC" H 1465 3223 50  0000 C CNN
F 2 "" H 1450 3050 50  0001 C CNN
F 3 "" H 1450 3050 50  0001 C CNN
	1    1450 3050
	1    0    0    -1  
$EndComp
Text GLabel 950  3350 0    50   Input ~ 0
RW
Text GLabel 950  4050 0    50   Input ~ 0
A17
Text GLabel 950  3950 0    50   Input ~ 0
A18
Text GLabel 950  3850 0    50   Input ~ 0
A19
Text GLabel 950  3750 0    50   Input ~ 0
A20
Text GLabel 950  3650 0    50   Input ~ 0
A21
Text GLabel 950  3550 0    50   Input ~ 0
A22
Text GLabel 950  3450 0    50   Input ~ 0
A23
Text GLabel 950  6100 0    50   Input ~ 0
UDS
Text GLabel 950  6200 0    50   Input ~ 0
LDS
Text Label 1250 1550 0    118  ~ 24
Outgoing
Text Label 9700 1600 0    118  ~ 24
Incoming
Text GLabel 8200 1950 0    50   BiDi ~ 0
D0
Text GLabel 8200 1850 0    50   BiDi ~ 0
D1
Text GLabel 8200 1750 0    50   BiDi ~ 0
D2
Text GLabel 8200 1650 0    50   BiDi ~ 0
D3
Text GLabel 8200 1550 0    50   BiDi ~ 0
D4
Text GLabel 8200 1450 0    50   BiDi ~ 0
D5
Text GLabel 8200 1350 0    50   BiDi ~ 0
D6
Text GLabel 8200 1250 0    50   BiDi ~ 0
D7
Text GLabel 8200 2050 0    50   Input ~ 0
RW
Text GLabel 8200 4300 0    50   Input ~ 0
RW
Text GLabel 6900 2300 2    50   BiDi ~ 0
BUS_D0
Text GLabel 6900 2200 2    50   BiDi ~ 0
BUS_D1
Text GLabel 6900 2100 2    50   BiDi ~ 0
BUS_D2
Text GLabel 6900 2000 2    50   BiDi ~ 0
BUS_D3
Text GLabel 6900 1900 2    50   BiDi ~ 0
BUS_D4
Text GLabel 6900 1800 2    50   BiDi ~ 0
BUS_D5
Text GLabel 6900 1700 2    50   BiDi ~ 0
BUS_D6
Text GLabel 6900 1600 2    50   BiDi ~ 0
BUS_D7
Text GLabel 8200 3500 0    50   BiDi ~ 0
D8
Text GLabel 8200 3600 0    50   BiDi ~ 0
D9
Text GLabel 8200 3700 0    50   BiDi ~ 0
D10
Text GLabel 8200 3800 0    50   BiDi ~ 0
D11
Text GLabel 8200 3900 0    50   BiDi ~ 0
D12
Text GLabel 8200 4000 0    50   BiDi ~ 0
D13
Text GLabel 8200 4100 0    50   BiDi ~ 0
D14
Text GLabel 8200 4200 0    50   BiDi ~ 0
D15
Text GLabel 8200 4400 0    50   Input ~ 0
BUS_DIR_CTRL
Text GLabel 8200 2150 0    50   Input ~ 0
BUS_DIR_CTRL
$Comp
L power:GND #PWR078
U 1 1 603DE97B
P 8600 2450
F 0 "#PWR078" H 8600 2200 50  0001 C CNN
F 1 "GND" H 8605 2277 50  0000 C CNN
F 2 "" H 8600 2450 50  0001 C CNN
F 3 "" H 8600 2450 50  0001 C CNN
	1    8600 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR080
U 1 1 603DEF6B
P 8600 4700
F 0 "#PWR080" H 8600 4450 50  0001 C CNN
F 1 "GND" H 8605 4527 50  0000 C CNN
F 2 "" H 8600 4700 50  0001 C CNN
F 3 "" H 8600 4700 50  0001 C CNN
	1    8600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR079
U 1 1 603DF7B3
P 8600 3200
F 0 "#PWR079" H 8600 3050 50  0001 C CNN
F 1 "VCC" H 8615 3373 50  0000 C CNN
F 2 "" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR077
U 1 1 603DFD91
P 8600 950
F 0 "#PWR077" H 8600 800 50  0001 C CNN
F 1 "VCC" H 8615 1123 50  0000 C CNN
F 2 "" H 8600 950 50  0001 C CNN
F 3 "" H 8600 950 50  0001 C CNN
	1    8600 950 
	1    0    0    -1  
$EndComp
Text GLabel 6900 5700 2    50   BiDi ~ 0
BUS_D8
Text GLabel 6900 5800 2    50   BiDi ~ 0
BUS_D9
Text GLabel 6900 5900 2    50   BiDi ~ 0
BUS_D10
Text GLabel 6900 6000 2    50   BiDi ~ 0
BUS_D11
Text GLabel 6900 6100 2    50   BiDi ~ 0
BUS_D12
Text GLabel 6900 6200 2    50   BiDi ~ 0
BUS_D13
Text GLabel 6900 6300 2    50   BiDi ~ 0
BUS_D14
Text GLabel 6900 6400 2    50   BiDi ~ 0
BUS_D15
$Comp
L power:GND #PWR?
U 1 1 60311E3E
P 10400 5900
AR Path="/5F8E786F/60311E3E" Ref="#PWR?"  Part="1" 
AR Path="/60311E3E" Ref="#PWR?"  Part="1" 
AR Path="/5F8E4AC3/60311E3E" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 10400 5650 50  0001 C CNN
F 1 "GND" H 10405 5727 50  0000 C CNN
F 2 "" H 10400 5900 50  0001 C CNN
F 3 "" H 10400 5900 50  0001 C CNN
	1    10400 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60311E44
P 10400 5600
AR Path="/5F8E786F/60311E44" Ref="#PWR?"  Part="1" 
AR Path="/60311E44" Ref="#PWR?"  Part="1" 
AR Path="/5F8E4AC3/60311E44" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 10400 5450 50  0001 C CNN
F 1 "VCC" H 10415 5773 50  0000 C CNN
F 2 "" H 10400 5600 50  0001 C CNN
F 3 "" H 10400 5600 50  0001 C CNN
	1    10400 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60311E4A
P 7800 5750
AR Path="/5F8E786F/60311E4A" Ref="C?"  Part="1" 
AR Path="/60311E4A" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/60311E4A" Ref="C23"  Part="1" 
F 0 "C23" H 7915 5796 50  0000 L CNN
F 1 "100nF" H 7915 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7838 5600 50  0001 C CNN
F 3 "~" H 7800 5750 50  0001 C CNN
	1    7800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60311E50
P 8250 5750
AR Path="/5F8E786F/60311E50" Ref="C?"  Part="1" 
AR Path="/60311E50" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/60311E50" Ref="C28"  Part="1" 
F 0 "C28" H 8365 5796 50  0000 L CNN
F 1 "100nF" H 8365 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8288 5600 50  0001 C CNN
F 3 "~" H 8250 5750 50  0001 C CNN
	1    8250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5600 10250 5600
Connection ~ 8250 5600
Wire Wire Line
	8250 5600 7800 5600
Wire Wire Line
	7800 5900 8250 5900
Connection ~ 8250 5900
Wire Wire Line
	10400 5900 10250 5900
$Comp
L Device:C C?
U 1 1 60332578
P 8800 5750
AR Path="/5F8E786F/60332578" Ref="C?"  Part="1" 
AR Path="/60332578" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/60332578" Ref="C29"  Part="1" 
F 0 "C29" H 8915 5796 50  0000 L CNN
F 1 "100nF" H 8915 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8838 5600 50  0001 C CNN
F 3 "~" H 8800 5750 50  0001 C CNN
	1    8800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60332A38
P 9300 5750
AR Path="/5F8E786F/60332A38" Ref="C?"  Part="1" 
AR Path="/60332A38" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/60332A38" Ref="C30"  Part="1" 
F 0 "C30" H 9415 5796 50  0000 L CNN
F 1 "100nF" H 9415 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9338 5600 50  0001 C CNN
F 3 "~" H 9300 5750 50  0001 C CNN
	1    9300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60332F6A
P 9700 5750
AR Path="/5F8E786F/60332F6A" Ref="C?"  Part="1" 
AR Path="/60332F6A" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/60332F6A" Ref="C31"  Part="1" 
F 0 "C31" H 9815 5796 50  0000 L CNN
F 1 "100nF" H 9815 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9738 5600 50  0001 C CNN
F 3 "~" H 9700 5750 50  0001 C CNN
	1    9700 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6033344B
P 10250 5750
AR Path="/5F8E786F/6033344B" Ref="C?"  Part="1" 
AR Path="/6033344B" Ref="C?"  Part="1" 
AR Path="/5F8E4AC3/6033344B" Ref="C32"  Part="1" 
F 0 "C32" H 10365 5796 50  0000 L CNN
F 1 "100nF" H 10365 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10288 5600 50  0001 C CNN
F 3 "~" H 10250 5750 50  0001 C CNN
	1    10250 5750
	1    0    0    -1  
$EndComp
Connection ~ 8800 5600
Connection ~ 9300 5600
Wire Wire Line
	9300 5600 8800 5600
Connection ~ 9700 5600
Wire Wire Line
	9700 5600 9300 5600
Connection ~ 10250 5600
Wire Wire Line
	10250 5600 9700 5600
Wire Wire Line
	8250 5600 8800 5600
Connection ~ 8800 5900
Connection ~ 9300 5900
Wire Wire Line
	9300 5900 8800 5900
Connection ~ 9700 5900
Wire Wire Line
	9700 5900 9300 5900
Connection ~ 10250 5900
Wire Wire Line
	10250 5900 9700 5900
Wire Wire Line
	8250 5900 8800 5900
Text GLabel 3850 4050 2    50   Output ~ 0
BUS_A9
Text GLabel 3850 3950 2    50   Output ~ 0
BUS_A10
Text GLabel 3850 3850 2    50   Output ~ 0
BUS_A11
Text GLabel 3850 3750 2    50   Output ~ 0
BUS_A12
Text GLabel 3850 3650 2    50   Output ~ 0
BUS_A13
Text GLabel 3850 3550 2    50   Output ~ 0
BUS_A14
Text GLabel 3850 3450 2    50   Output ~ 0
BUS_A15
Text GLabel 3850 3350 2    50   Output ~ 0
BUS_A16
Text GLabel 6900 3600 2    50   Input ~ 0
BUS_A9
Text GLabel 6900 3500 2    50   Input ~ 0
BUS_A10
Text GLabel 6900 3400 2    50   Input ~ 0
BUS_A11
Text GLabel 6900 3300 2    50   Input ~ 0
BUS_A12
Text GLabel 6900 3200 2    50   Input ~ 0
BUS_A13
Text GLabel 6900 3100 2    50   Input ~ 0
BUS_A14
Text GLabel 6900 3000 2    50   Input ~ 0
BUS_A15
Text GLabel 6900 2900 2    50   Input ~ 0
BUS_A16
Text GLabel 1950 3350 2    50   Output ~ 0
BUS_RW
Text GLabel 1950 4050 2    50   Output ~ 0
BUS_A17
Text GLabel 1950 3950 2    50   Output ~ 0
BUS_A18
Text GLabel 1950 3850 2    50   Output ~ 0
BUS_A19
Text GLabel 1950 3750 2    50   Output ~ 0
BUS_A20
Text GLabel 1950 3650 2    50   Output ~ 0
BUS_A21
Text GLabel 1950 3550 2    50   Output ~ 0
BUS_A22
Text GLabel 1950 3450 2    50   Output ~ 0
BUS_A23
Text GLabel 3800 6200 2    50   Output ~ 0
BUS_A1
Text GLabel 3800 6100 2    50   Output ~ 0
BUS_A2
Text GLabel 3800 6000 2    50   Output ~ 0
BUS_A3
Text GLabel 3800 5900 2    50   Output ~ 0
BUS_A4
Text GLabel 3800 5800 2    50   Output ~ 0
BUS_A5
Text GLabel 3800 5700 2    50   Output ~ 0
BUS_A6
Text GLabel 3800 5600 2    50   Output ~ 0
BUS_A7
Text GLabel 3800 5500 2    50   Output ~ 0
BUS_A8
Text GLabel 1950 5600 2    50   Output ~ 0
BUS_FC0
Text GLabel 1950 5700 2    50   Output ~ 0
BUS_FC1
Text GLabel 1950 5800 2    50   Output ~ 0
BUS_FC2
Text GLabel 1950 6100 2    50   Output ~ 0
BUS_UDS
Text GLabel 1950 6200 2    50   Output ~ 0
BUS_LDS
Text GLabel 1950 5900 2    50   Output ~ 0
BUS_AS
Text GLabel 950  5900 0    50   Input ~ 0
AS
Text GLabel 1950 6000 2    50   Output ~ 0
BUS_BG
Text GLabel 1950 5500 2    50   Output ~ 0
BUS_CPU_CLK
Text GLabel 5500 5000 0    50   Input ~ 0
VPA
$EndSCHEMATC
