EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title "68000 SBC"
Date "2020-11-12"
Rev "1.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3900 3600 0    50   Input ~ 0
IO_SEL1
$Comp
L power:VCC #PWR072
U 1 1 606CF32F
P 4900 1300
F 0 "#PWR072" H 4900 1150 50  0001 C CNN
F 1 "VCC" H 4915 1473 50  0000 C CNN
F 2 "" H 4900 1300 50  0001 C CNN
F 3 "" H 4900 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1400 4900 1300
Wire Wire Line
	4900 1900 4900 1400
Connection ~ 4900 1400
$Comp
L power:GND #PWR071
U 1 1 606E5EC0
P 3500 5550
F 0 "#PWR071" H 3500 5300 50  0001 C CNN
F 1 "GND" H 3505 5377 50  0000 C CNN
F 2 "" H 3500 5550 50  0001 C CNN
F 3 "" H 3500 5550 50  0001 C CNN
	1    3500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5600 3500 5550
Wire Wire Line
	3500 5300 4900 5300
Connection ~ 3500 5550
Wire Wire Line
	3500 5550 3500 5300
Wire Wire Line
	3900 4500 3500 4500
Wire Wire Line
	3500 4500 3500 4600
Connection ~ 3500 5300
Wire Wire Line
	3900 4800 3500 4800
Connection ~ 3500 4800
Wire Wire Line
	3500 4800 3500 5300
Wire Wire Line
	3900 4600 3500 4600
Connection ~ 3500 4600
Wire Wire Line
	3500 4600 3500 4800
Wire Wire Line
	5900 4800 5900 5000
NoConn ~ 5900 4200
NoConn ~ 5900 4300
NoConn ~ 5900 4400
NoConn ~ 3900 4100
Text GLabel 3900 3800 0    50   Input ~ 0
CPU_CLK
Text GLabel 3400 4700 0    50   Input ~ 0
RDU
Text GLabel 3900 4400 0    50   Input ~ 0
WRU
Wire Wire Line
	3400 4700 3900 4700
Text GLabel 3400 5000 0    50   Input ~ 0
RST_H
Wire Wire Line
	3900 5000 3400 5000
Text GLabel 5900 3800 2    50   Input ~ 0
TX
Text GLabel 5900 3900 2    50   Output ~ 0
RX
Text GLabel 5900 3200 2    50   Input ~ 0
CTS
Wire Wire Line
	6100 2500 5900 2500
Wire Wire Line
	5900 2600 6100 2600
Wire Wire Line
	6100 2600 6100 2500
$Comp
L Device:R_Pack04 RN?
U 1 1 606F6775
P 7300 3950
AR Path="/606F6775" Ref="RN?"  Part="1" 
AR Path="/606CB633/606F6775" Ref="RN4"  Part="1" 
F 0 "RN4" H 7488 3996 50  0000 L CNN
F 1 "470" H 7488 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 7575 3950 50  0001 C CNN
F 3 "~" H 7300 3950 50  0001 C CNN
	1    7300 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 606F8693
P 6650 3300
F 0 "D2" H 6643 3517 50  0000 C CNN
F 1 "LED" H 6643 3426 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6650 3300 50  0001 C CNN
F 3 "~" H 6650 3300 50  0001 C CNN
	1    6650 3300
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 606FC2AD
P 6650 3000
F 0 "D1" H 6643 3217 50  0000 C CNN
F 1 "LED" H 6643 3126 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6650 3000 50  0001 C CNN
F 3 "~" H 6650 3000 50  0001 C CNN
	1    6650 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 606FC72B
P 7600 4250
F 0 "#PWR073" H 7600 4000 50  0001 C CNN
F 1 "GND" H 7605 4077 50  0000 C CNN
F 2 "" H 7600 4250 50  0001 C CNN
F 3 "" H 7600 4250 50  0001 C CNN
	1    7600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4150 7200 4150
Wire Wire Line
	7600 4150 7600 4250
Connection ~ 7200 4150
Wire Wire Line
	7200 4150 7300 4150
Connection ~ 7300 4150
Wire Wire Line
	7300 4150 7400 4150
Connection ~ 7400 4150
Wire Wire Line
	7400 4150 7600 4150
Wire Wire Line
	5900 3300 6500 3300
Wire Wire Line
	5900 3000 6500 3000
NoConn ~ 7300 3750
Text GLabel 3900 3100 0    50   Input ~ 0
A1
Text GLabel 3900 3200 0    50   Input ~ 0
A2
Text GLabel 3900 3300 0    50   Input ~ 0
A3
$Comp
L Interface_UART:16550 U14
U 1 1 606CC1FC
P 4900 3600
F 0 "U14" H 4900 5481 50  0000 C CNN
F 1 "16550" H 4900 5390 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4900 3600 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/pc16550d.pdf" H 4900 3600 50  0001 C CNN
	1    4900 3600
	1    0    0    -1  
$EndComp
Text GLabel 3900 2200 0    50   BiDi ~ 0
D8
Text GLabel 3900 2300 0    50   BiDi ~ 0
D9
Text GLabel 3900 2400 0    50   BiDi ~ 0
D10
Text GLabel 3900 2500 0    50   BiDi ~ 0
D11
Text GLabel 3900 2600 0    50   BiDi ~ 0
D12
Text GLabel 3900 2700 0    50   BiDi ~ 0
D13
Text GLabel 3900 2800 0    50   BiDi ~ 0
D14
Text GLabel 3900 2900 0    50   BiDi ~ 0
D15
Wire Wire Line
	3400 3400 3400 1800
Wire Wire Line
	3400 3400 3900 3400
Wire Wire Line
	3300 3500 3300 1800
Wire Wire Line
	3300 3500 3900 3500
NoConn ~ 3200 1800
Connection ~ 3400 1400
Wire Wire Line
	3300 1400 3400 1400
Wire Wire Line
	3200 1400 3300 1400
Connection ~ 3300 1400
$Comp
L Device:R_Pack04 RN?
U 1 1 606D8495
P 3300 1600
AR Path="/606D8495" Ref="RN?"  Part="1" 
AR Path="/606CB633/606D8495" Ref="RN3"  Part="1" 
F 0 "RN3" H 3488 1646 50  0000 L CNN
F 1 "10K" H 3488 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 3575 1600 50  0001 C CNN
F 3 "~" H 3300 1600 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2700 6100 2700
Wire Wire Line
	6100 2700 6100 2600
Connection ~ 6100 2600
Wire Wire Line
	5900 2400 6100 2400
Wire Wire Line
	6100 2400 6100 2500
Connection ~ 6100 2500
Wire Wire Line
	3400 1400 4900 1400
NoConn ~ 3100 1800
Wire Wire Line
	3100 1400 3200 1400
Connection ~ 3200 1400
NoConn ~ 5900 3100
$Comp
L Device:LED D7
U 1 1 601B5358
P 7400 3350
F 0 "D7" H 7393 3567 50  0000 C CNN
F 1 "LED" H 7393 3476 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 601B5A23
P 7400 2850
F 0 "#PWR0107" H 7400 2700 50  0001 C CNN
F 1 "VCC" H 7415 3023 50  0000 C CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2850 7400 3200
Wire Wire Line
	7400 3500 7400 3750
NoConn ~ 3900 4900
$Comp
L Device:C C?
U 1 1 6071447C
P 2750 6700
AR Path="/5F8E786F/6071447C" Ref="C?"  Part="1" 
AR Path="/6071447C" Ref="C?"  Part="1" 
AR Path="/606CB633/6071447C" Ref="C22"  Part="1" 
F 0 "C22" H 2865 6746 50  0000 L CNN
F 1 "100nF" H 2865 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 6550 50  0001 C CNN
F 3 "~" H 2750 6700 50  0001 C CNN
	1    2750 6700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60714470
P 2750 6400
AR Path="/5F8E786F/60714470" Ref="#PWR?"  Part="1" 
AR Path="/60714470" Ref="#PWR?"  Part="1" 
AR Path="/606CB633/60714470" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 2750 6250 50  0001 C CNN
F 1 "VCC" H 2765 6573 50  0000 C CNN
F 2 "" H 2750 6400 50  0001 C CNN
F 3 "" H 2750 6400 50  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6071446A
P 2750 6950
AR Path="/5F8E786F/6071446A" Ref="#PWR?"  Part="1" 
AR Path="/6071446A" Ref="#PWR?"  Part="1" 
AR Path="/606CB633/6071446A" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 2750 6700 50  0001 C CNN
F 1 "GND" H 2755 6777 50  0000 C CNN
F 2 "" H 2750 6950 50  0001 C CNN
F 3 "" H 2750 6950 50  0001 C CNN
	1    2750 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6850 2750 6950
Wire Wire Line
	2750 6400 2750 6550
Wire Wire Line
	7200 3300 7200 3750
Wire Wire Line
	6800 3300 7200 3300
Wire Wire Line
	6800 3000 7100 3000
Wire Wire Line
	7100 3000 7100 3750
$EndSCHEMATC
