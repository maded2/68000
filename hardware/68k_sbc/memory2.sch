EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 68k_dev:CY7C1049D U?
U 1 1 60224EB4
P 6600 1600
AR Path="/5FAB96B1/60224EB4" Ref="U?"  Part="1" 
AR Path="/6021FC6C/60224EB4" Ref="U17"  Part="1" 
F 0 "U17" H 6575 1915 50  0000 C CNN
F 1 "CY7C1049D" H 6575 1824 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 6350 1850 50  0001 C CNN
F 3 "" H 6350 1850 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
Text GLabel 6200 2750 0    50   Input ~ 0
WRU
Text GLabel 6950 2050 2    50   Input ~ 0
RDU
Text GLabel 6200 2050 0    50   Input ~ 0
RAM6_SEL
$Comp
L power:VCC #PWR?
U 1 1 60224EBD
P 5650 2300
AR Path="/5FAB96B1/60224EBD" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224EBD" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 5650 2150 50  0001 C CNN
F 1 "VCC" H 5665 2473 50  0000 C CNN
F 2 "" H 5650 2300 50  0001 C CNN
F 3 "" H 5650 2300 50  0001 C CNN
	1    5650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224EC3
P 5650 2450
AR Path="/5FAB96B1/60224EC3" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224EC3" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 5650 2200 50  0001 C CNN
F 1 "GND" H 5655 2277 50  0000 C CNN
F 2 "" H 5650 2450 50  0001 C CNN
F 3 "" H 5650 2450 50  0001 C CNN
	1    5650 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60224EC9
P 7350 2300
AR Path="/5FAB96B1/60224EC9" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224EC9" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7350 2150 50  0001 C CNN
F 1 "VCC" H 7365 2473 50  0000 C CNN
F 2 "" H 7350 2300 50  0001 C CNN
F 3 "" H 7350 2300 50  0001 C CNN
	1    7350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224ECF
P 7450 2350
AR Path="/5FAB96B1/60224ECF" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224ECF" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 7450 2100 50  0001 C CNN
F 1 "GND" H 7455 2177 50  0000 C CNN
F 2 "" H 7450 2350 50  0001 C CNN
F 3 "" H 7450 2350 50  0001 C CNN
	1    7450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2350 6200 2350
Text GLabel 6200 1550 0    50   Input ~ 0
A1
Text GLabel 6200 1650 0    50   Input ~ 0
A2
Text GLabel 6200 1750 0    50   Input ~ 0
A3
Text GLabel 6200 1850 0    50   Input ~ 0
A4
Text GLabel 6200 1950 0    50   Input ~ 0
A5
Text GLabel 6200 2850 0    50   Input ~ 0
A6
Text GLabel 6200 2950 0    50   Input ~ 0
A7
Text GLabel 6200 3050 0    50   Input ~ 0
A8
Text GLabel 6200 3150 0    50   Input ~ 0
A9
Text GLabel 6200 3250 0    50   Input ~ 0
A10
Text GLabel 6950 3150 2    50   Input ~ 0
A11
Text GLabel 6950 3050 2    50   Input ~ 0
A12
Text GLabel 6950 2950 2    50   Input ~ 0
A13
Text GLabel 6950 2850 2    50   Input ~ 0
A14
Text GLabel 6950 2750 2    50   Input ~ 0
A15
Text GLabel 6950 1950 2    50   Input ~ 0
A16
Text GLabel 6950 1850 2    50   Input ~ 0
A17
Text GLabel 6950 1750 2    50   Input ~ 0
A18
Text GLabel 6950 1650 2    50   Input ~ 0
A19
Text GLabel 6200 2150 0    50   BiDi ~ 0
D8
Text GLabel 6200 2550 0    50   BiDi ~ 0
D10
Text GLabel 6200 2650 0    50   BiDi ~ 0
D11
Text GLabel 6950 2650 2    50   BiDi ~ 0
D12
Text GLabel 6950 2550 2    50   BiDi ~ 0
D13
Text GLabel 6950 2250 2    50   BiDi ~ 0
D14
Text GLabel 6950 2150 2    50   BiDi ~ 0
D15
Wire Wire Line
	5650 2300 5650 2350
Wire Wire Line
	5650 2450 6200 2450
Wire Wire Line
	6950 2350 7450 2350
Wire Wire Line
	6950 2450 7350 2450
Wire Wire Line
	7350 2450 7350 2300
Text GLabel 6200 2250 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U?
U 1 1 60224EF6
P 6600 3900
AR Path="/5FAB96B1/60224EF6" Ref="U?"  Part="1" 
AR Path="/6021FC6C/60224EF6" Ref="U18"  Part="1" 
F 0 "U18" H 6575 4215 50  0000 C CNN
F 1 "CY7C1049D" H 6575 4124 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 6350 4150 50  0001 C CNN
F 3 "" H 6350 4150 50  0001 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
Text GLabel 6200 5050 0    50   Input ~ 0
WRL
Text GLabel 6950 4350 2    50   Input ~ 0
RDL
Text GLabel 6200 4350 0    50   Input ~ 0
RAM6_SEL
$Comp
L power:VCC #PWR?
U 1 1 60224EFF
P 5650 4600
AR Path="/5FAB96B1/60224EFF" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224EFF" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5650 4450 50  0001 C CNN
F 1 "VCC" H 5665 4773 50  0000 C CNN
F 2 "" H 5650 4600 50  0001 C CNN
F 3 "" H 5650 4600 50  0001 C CNN
	1    5650 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224F05
P 5650 4750
AR Path="/5FAB96B1/60224F05" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F05" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5650 4500 50  0001 C CNN
F 1 "GND" H 5655 4577 50  0000 C CNN
F 2 "" H 5650 4750 50  0001 C CNN
F 3 "" H 5650 4750 50  0001 C CNN
	1    5650 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60224F0B
P 7350 4600
AR Path="/5FAB96B1/60224F0B" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F0B" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 7350 4450 50  0001 C CNN
F 1 "VCC" H 7365 4773 50  0000 C CNN
F 2 "" H 7350 4600 50  0001 C CNN
F 3 "" H 7350 4600 50  0001 C CNN
	1    7350 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224F11
P 7450 4650
AR Path="/5FAB96B1/60224F11" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F11" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 7450 4400 50  0001 C CNN
F 1 "GND" H 7455 4477 50  0000 C CNN
F 2 "" H 7450 4650 50  0001 C CNN
F 3 "" H 7450 4650 50  0001 C CNN
	1    7450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4650 6200 4650
Text GLabel 6200 3850 0    50   Input ~ 0
A1
Text GLabel 6200 3950 0    50   Input ~ 0
A2
Text GLabel 6200 4050 0    50   Input ~ 0
A3
Text GLabel 6200 4150 0    50   Input ~ 0
A4
Text GLabel 6200 4250 0    50   Input ~ 0
A5
Text GLabel 6200 5150 0    50   Input ~ 0
A6
Text GLabel 6200 5250 0    50   Input ~ 0
A7
Text GLabel 6200 5350 0    50   Input ~ 0
A8
Text GLabel 6200 5450 0    50   Input ~ 0
A9
Text GLabel 6200 5550 0    50   Input ~ 0
A10
Text GLabel 6950 5450 2    50   Input ~ 0
A11
Text GLabel 6950 5350 2    50   Input ~ 0
A12
Text GLabel 6950 5250 2    50   Input ~ 0
A13
Text GLabel 6950 5150 2    50   Input ~ 0
A14
Text GLabel 6950 5050 2    50   Input ~ 0
A15
Text GLabel 6950 4250 2    50   Input ~ 0
A16
Text GLabel 6950 4150 2    50   Input ~ 0
A17
Text GLabel 6950 4050 2    50   Input ~ 0
A18
Text GLabel 6950 3950 2    50   Input ~ 0
A19
Text GLabel 6200 4450 0    50   BiDi ~ 0
D0
Text GLabel 6200 4850 0    50   BiDi ~ 0
D2
Text GLabel 6200 4950 0    50   BiDi ~ 0
D3
Text GLabel 6950 4950 2    50   BiDi ~ 0
D4
Text GLabel 6950 4850 2    50   BiDi ~ 0
D5
Text GLabel 6950 4550 2    50   BiDi ~ 0
D6
Text GLabel 6950 4450 2    50   BiDi ~ 0
D7
Wire Wire Line
	5650 4600 5650 4650
Wire Wire Line
	5650 4750 6200 4750
Wire Wire Line
	6950 4650 7450 4650
Wire Wire Line
	6950 4750 7350 4750
Wire Wire Line
	7350 4750 7350 4600
Text GLabel 6200 4550 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U?
U 1 1 60224F38
P 4500 1600
AR Path="/5FAB96B1/60224F38" Ref="U?"  Part="1" 
AR Path="/6021FC6C/60224F38" Ref="U4"  Part="1" 
F 0 "U4" H 4475 1915 50  0000 C CNN
F 1 "CY7C1049D" H 4475 1824 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 4250 1850 50  0001 C CNN
F 3 "" H 4250 1850 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
Text GLabel 4100 2750 0    50   Input ~ 0
WRU
Text GLabel 4850 2050 2    50   Input ~ 0
RDU
Text GLabel 4100 2050 0    50   Input ~ 0
RAM5_SEL
$Comp
L power:VCC #PWR?
U 1 1 60224F41
P 3550 2300
AR Path="/5FAB96B1/60224F41" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F41" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3550 2150 50  0001 C CNN
F 1 "VCC" H 3565 2473 50  0000 C CNN
F 2 "" H 3550 2300 50  0001 C CNN
F 3 "" H 3550 2300 50  0001 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224F47
P 3550 2450
AR Path="/5FAB96B1/60224F47" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F47" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 3550 2200 50  0001 C CNN
F 1 "GND" H 3555 2277 50  0000 C CNN
F 2 "" H 3550 2450 50  0001 C CNN
F 3 "" H 3550 2450 50  0001 C CNN
	1    3550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60224F4D
P 5250 2300
AR Path="/5FAB96B1/60224F4D" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F4D" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5250 2150 50  0001 C CNN
F 1 "VCC" H 5265 2473 50  0000 C CNN
F 2 "" H 5250 2300 50  0001 C CNN
F 3 "" H 5250 2300 50  0001 C CNN
	1    5250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224F53
P 5350 2350
AR Path="/5FAB96B1/60224F53" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F53" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 5350 2100 50  0001 C CNN
F 1 "GND" H 5355 2177 50  0000 C CNN
F 2 "" H 5350 2350 50  0001 C CNN
F 3 "" H 5350 2350 50  0001 C CNN
	1    5350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2350 4100 2350
Text GLabel 4100 1550 0    50   Input ~ 0
A1
Text GLabel 4100 1650 0    50   Input ~ 0
A2
Text GLabel 4100 1750 0    50   Input ~ 0
A3
Text GLabel 4100 1850 0    50   Input ~ 0
A4
Text GLabel 4100 1950 0    50   Input ~ 0
A5
Text GLabel 4100 2850 0    50   Input ~ 0
A6
Text GLabel 4100 2950 0    50   Input ~ 0
A7
Text GLabel 4100 3050 0    50   Input ~ 0
A8
Text GLabel 4100 3150 0    50   Input ~ 0
A9
Text GLabel 4100 3250 0    50   Input ~ 0
A10
Text GLabel 4850 3150 2    50   Input ~ 0
A11
Text GLabel 4850 3050 2    50   Input ~ 0
A12
Text GLabel 4850 2950 2    50   Input ~ 0
A13
Text GLabel 4850 2850 2    50   Input ~ 0
A14
Text GLabel 4850 2750 2    50   Input ~ 0
A15
Text GLabel 4850 1950 2    50   Input ~ 0
A16
Text GLabel 4850 1850 2    50   Input ~ 0
A17
Text GLabel 4850 1750 2    50   Input ~ 0
A18
Text GLabel 4850 1650 2    50   Input ~ 0
A19
Text GLabel 4100 2150 0    50   BiDi ~ 0
D8
Text GLabel 4100 2550 0    50   BiDi ~ 0
D10
Text GLabel 4100 2650 0    50   BiDi ~ 0
D11
Text GLabel 4850 2650 2    50   BiDi ~ 0
D12
Text GLabel 4850 2550 2    50   BiDi ~ 0
D13
Text GLabel 4850 2250 2    50   BiDi ~ 0
D14
Text GLabel 4850 2150 2    50   BiDi ~ 0
D15
Wire Wire Line
	3550 2300 3550 2350
Wire Wire Line
	3550 2450 4100 2450
Wire Wire Line
	4850 2350 5350 2350
Wire Wire Line
	4850 2450 5250 2450
Wire Wire Line
	5250 2450 5250 2300
Text GLabel 4100 2250 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U?
U 1 1 60224F7A
P 4500 3900
AR Path="/5FAB96B1/60224F7A" Ref="U?"  Part="1" 
AR Path="/6021FC6C/60224F7A" Ref="U16"  Part="1" 
F 0 "U16" H 4475 4215 50  0000 C CNN
F 1 "CY7C1049D" H 4475 4124 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 4250 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
Text GLabel 4100 5050 0    50   Input ~ 0
WRL
Text GLabel 4850 4350 2    50   Input ~ 0
RDL
Text GLabel 4100 4350 0    50   Input ~ 0
RAM5_SEL
$Comp
L power:VCC #PWR?
U 1 1 60224F83
P 3550 4600
AR Path="/5FAB96B1/60224F83" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F83" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 3550 4450 50  0001 C CNN
F 1 "VCC" H 3565 4773 50  0000 C CNN
F 2 "" H 3550 4600 50  0001 C CNN
F 3 "" H 3550 4600 50  0001 C CNN
	1    3550 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224F89
P 3550 4750
AR Path="/5FAB96B1/60224F89" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F89" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 3550 4500 50  0001 C CNN
F 1 "GND" H 3555 4577 50  0000 C CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60224F8F
P 5250 4600
AR Path="/5FAB96B1/60224F8F" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F8F" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 5250 4450 50  0001 C CNN
F 1 "VCC" H 5265 4773 50  0000 C CNN
F 2 "" H 5250 4600 50  0001 C CNN
F 3 "" H 5250 4600 50  0001 C CNN
	1    5250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60224F95
P 5350 4650
AR Path="/5FAB96B1/60224F95" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/60224F95" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 5350 4400 50  0001 C CNN
F 1 "GND" H 5355 4477 50  0000 C CNN
F 2 "" H 5350 4650 50  0001 C CNN
F 3 "" H 5350 4650 50  0001 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4650 4100 4650
Text GLabel 4100 3850 0    50   Input ~ 0
A1
Text GLabel 4100 3950 0    50   Input ~ 0
A2
Text GLabel 4100 4050 0    50   Input ~ 0
A3
Text GLabel 4100 4150 0    50   Input ~ 0
A4
Text GLabel 4100 4250 0    50   Input ~ 0
A5
Text GLabel 4100 5150 0    50   Input ~ 0
A6
Text GLabel 4100 5250 0    50   Input ~ 0
A7
Text GLabel 4100 5350 0    50   Input ~ 0
A8
Text GLabel 4100 5450 0    50   Input ~ 0
A9
Text GLabel 4100 5550 0    50   Input ~ 0
A10
Text GLabel 4850 5450 2    50   Input ~ 0
A11
Text GLabel 4850 5350 2    50   Input ~ 0
A12
Text GLabel 4850 5250 2    50   Input ~ 0
A13
Text GLabel 4850 5150 2    50   Input ~ 0
A14
Text GLabel 4850 5050 2    50   Input ~ 0
A15
Text GLabel 4850 4250 2    50   Input ~ 0
A16
Text GLabel 4850 4150 2    50   Input ~ 0
A17
Text GLabel 4850 4050 2    50   Input ~ 0
A18
Text GLabel 4850 3950 2    50   Input ~ 0
A19
Text GLabel 4100 4450 0    50   BiDi ~ 0
D0
Text GLabel 4100 4850 0    50   BiDi ~ 0
D2
Text GLabel 4100 4950 0    50   BiDi ~ 0
D3
Text GLabel 4850 4950 2    50   BiDi ~ 0
D4
Text GLabel 4850 4850 2    50   BiDi ~ 0
D5
Text GLabel 4850 4550 2    50   BiDi ~ 0
D6
Text GLabel 4850 4450 2    50   BiDi ~ 0
D7
Wire Wire Line
	3550 4600 3550 4650
Wire Wire Line
	3550 4750 4100 4750
Wire Wire Line
	4850 4650 5350 4650
Wire Wire Line
	4850 4750 5250 4750
Wire Wire Line
	5250 4750 5250 4600
Text GLabel 4100 4550 0    50   BiDi ~ 0
D1
$Comp
L power:GND #PWR?
U 1 1 602524E0
P 5450 6950
AR Path="/5F8E786F/602524E0" Ref="#PWR?"  Part="1" 
AR Path="/5FAB96B1/602524E0" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/602524E0" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 5450 6700 50  0001 C CNN
F 1 "GND" H 5455 6777 50  0000 C CNN
F 2 "" H 5450 6950 50  0001 C CNN
F 3 "" H 5450 6950 50  0001 C CNN
	1    5450 6950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 602524E6
P 5450 6500
AR Path="/5F8E786F/602524E6" Ref="#PWR?"  Part="1" 
AR Path="/5FAB96B1/602524E6" Ref="#PWR?"  Part="1" 
AR Path="/6021FC6C/602524E6" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 5450 6350 50  0001 C CNN
F 1 "VCC" H 5465 6673 50  0000 C CNN
F 2 "" H 5450 6500 50  0001 C CNN
F 3 "" H 5450 6500 50  0001 C CNN
	1    5450 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602524EC
P 3600 6750
AR Path="/5F8E786F/602524EC" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/602524EC" Ref="C?"  Part="1" 
AR Path="/6021FC6C/602524EC" Ref="C24"  Part="1" 
F 0 "C24" H 3715 6796 50  0000 L CNN
F 1 "100nF" H 3715 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3638 6600 50  0001 C CNN
F 3 "~" H 3600 6750 50  0001 C CNN
	1    3600 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602524F2
P 4100 6750
AR Path="/5F8E786F/602524F2" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/602524F2" Ref="C?"  Part="1" 
AR Path="/6021FC6C/602524F2" Ref="C25"  Part="1" 
F 0 "C25" H 4215 6796 50  0000 L CNN
F 1 "100nF" H 4215 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4138 6600 50  0001 C CNN
F 3 "~" H 4100 6750 50  0001 C CNN
	1    4100 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602524F8
P 4550 6750
AR Path="/5F8E786F/602524F8" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/602524F8" Ref="C?"  Part="1" 
AR Path="/6021FC6C/602524F8" Ref="C26"  Part="1" 
F 0 "C26" H 4665 6796 50  0000 L CNN
F 1 "100nF" H 4665 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 6600 50  0001 C CNN
F 3 "~" H 4550 6750 50  0001 C CNN
	1    4550 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 602524FE
P 5000 6750
AR Path="/5F8E786F/602524FE" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/602524FE" Ref="C?"  Part="1" 
AR Path="/6021FC6C/602524FE" Ref="C27"  Part="1" 
F 0 "C27" H 5115 6796 50  0000 L CNN
F 1 "100nF" H 5115 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 6600 50  0001 C CNN
F 3 "~" H 5000 6750 50  0001 C CNN
	1    5000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6500 5450 6600
Wire Wire Line
	5450 6600 5000 6600
Connection ~ 4100 6600
Connection ~ 4550 6600
Wire Wire Line
	4550 6600 4100 6600
Connection ~ 5000 6600
Wire Wire Line
	5000 6600 4550 6600
Wire Wire Line
	5450 6900 5450 6950
Connection ~ 4100 6900
Wire Wire Line
	4100 6900 4550 6900
Connection ~ 4550 6900
Wire Wire Line
	4550 6900 5000 6900
Connection ~ 5000 6900
Wire Wire Line
	5000 6900 5450 6900
Wire Wire Line
	3600 6900 4100 6900
Wire Wire Line
	4100 6600 3600 6600
$EndSCHEMATC
