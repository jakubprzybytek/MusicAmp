EESchema Schematic File Version 4
LIBS:PowerSupply-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Main Power Supply"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP C5
U 1 1 57EC3748
P 3550 3250
F 0 "C5" H 3575 3350 50  0000 L CNN
F 1 "6m8F/63V" H 3575 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D35_L51_P10" H 3588 3100 50  0001 C CNN
F 3 "" H 3550 3250 50  0000 C CNN
	1    3550 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 57EC374F
P 4000 3250
F 0 "C7" H 4025 3350 50  0000 L CNN
F 1 "6m8F/63V" H 4025 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D35_L51_P10" H 4038 3100 50  0001 C CNN
F 3 "" H 4000 3250 50  0000 C CNN
	1    4000 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 57EC3756
P 3550 3850
F 0 "C6" H 3575 3950 50  0000 L CNN
F 1 "6m8F/63V" H 3575 3750 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D35_L51_P10" H 3588 3700 50  0001 C CNN
F 3 "" H 3550 3850 50  0000 C CNN
	1    3550 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 57EC375D
P 4000 3850
F 0 "C8" H 4025 3950 50  0000 L CNN
F 1 "6m8F/63V" H 4025 3750 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D35_L51_P10" H 4038 3700 50  0001 C CNN
F 3 "" H 4000 3850 50  0000 C CNN
	1    4000 3850
	1    0    0    -1  
$EndComp
$Comp
L PowerSupply-rescue:FUSE F1
U 1 1 57EC3764
P 1650 3550
F 0 "F1" H 1750 3600 50  0000 C CNN
F 1 "10A" H 1550 3500 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_inline_Type-I" H 1650 3550 50  0001 C CNN
F 3 "" H 1650 3550 50  0000 C CNN
	1    1650 3550
	1    0    0    -1  
$EndComp
$Comp
L PowerSupply-rescue:FUSE F2
U 1 1 57EC376B
P 1650 3650
F 0 "F2" H 1750 3700 50  0000 C CNN
F 1 "10A" H 1550 3600 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_inline_Type-I" H 1650 3650 50  0001 C CNN
F 3 "" H 1650 3650 50  0000 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
$Comp
L PowerSupply-rescue:CONN_01X04 P1
U 1 1 57EC3772
P 1000 3700
F 0 "P1" H 1000 3950 50  0000 C CNN
F 1 "POWER_IN" V 1100 3700 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-04A_2x02x4.20mm_Straight" H 1000 3700 50  0001 C CNN
F 3 "" H 1000 3700 50  0000 C CNN
	1    1000 3700
	-1   0    0    1   
$EndComp
$Comp
L PowerSupply-rescue:Diode_Bridge-RESCUE-PowerSupply D1
U 1 1 57EC3779
P 2600 3550
F 0 "D1" H 2350 3850 50  0000 C CNN
F 1 "20A" H 2950 3200 50  0000 C CNN
F 2 "JPDiodes:DiodeBridge" H 2600 3550 50  0001 C CNN
F 3 "" H 2600 3550 50  0000 C CNN
	1    2600 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 57EC3780
P 2150 3300
F 0 "C1" H 2175 3400 50  0000 L CNN
F 1 "100n" H 2175 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2188 3150 50  0001 C CNN
F 3 "" H 2150 3300 50  0000 C CNN
	1    2150 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 57EC3787
P 2150 3850
F 0 "C2" H 2175 3950 50  0000 L CNN
F 1 "100n" H 2175 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2188 3700 50  0001 C CNN
F 3 "" H 2150 3850 50  0000 C CNN
	1    2150 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 57EC378E
P 3050 3850
F 0 "C4" H 3075 3950 50  0000 L CNN
F 1 "100n" H 3075 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3088 3700 50  0001 C CNN
F 3 "" H 3050 3850 50  0000 C CNN
	1    3050 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 57EC3795
P 3050 3250
F 0 "C3" H 3075 3350 50  0000 L CNN
F 1 "100n" H 3075 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3088 3100 50  0001 C CNN
F 3 "" H 3050 3250 50  0000 C CNN
	1    3050 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 57EC379C
P 1300 3800
F 0 "#PWR01" H 1300 3550 50  0001 C CNN
F 1 "GND" H 1300 3650 50  0000 C CNN
F 2 "" H 1300 3800 50  0000 C CNN
F 3 "" H 1300 3800 50  0000 C CNN
	1    1300 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 57EC37A2
P 3500 3550
F 0 "#PWR02" H 3500 3300 50  0001 C CNN
F 1 "GND" H 3500 3400 50  0000 C CNN
F 2 "" H 3500 3550 50  0000 C CNN
F 3 "" H 3500 3550 50  0000 C CNN
	1    3500 3550
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 57EC37A8
P 1100 2900
F 0 "#FLG03" H 1100 2995 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 3080 50  0000 C CNN
F 2 "" H 1100 2900 50  0000 C CNN
F 3 "" H 1100 2900 50  0000 C CNN
	1    1100 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 57EC37AE
P 1100 3000
F 0 "#PWR04" H 1100 2750 50  0001 C CNN
F 1 "GND" H 1100 2850 50  0000 C CNN
F 2 "" H 1100 3000 50  0000 C CNN
F 3 "" H 1100 3000 50  0000 C CNN
	1    1100 3000
	1    0    0    -1  
$EndComp
$Comp
L PowerSupply-rescue:CONN_01X04 P2
U 1 1 57EC37B4
P 5700 3100
F 0 "P2" H 5700 3350 50  0000 C CNN
F 1 "OUT" V 5800 3100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-04A_2x02x4.20mm_Straight" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0000 C CNN
	1    5700 3100
	1    0    0    1   
$EndComp
$Comp
L PowerSupply-rescue:CONN_01X04 P3
U 1 1 57EC37BB
P 5700 3650
F 0 "P3" H 5700 3900 50  0000 C CNN
F 1 "OUT" V 5800 3650 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-04A_2x02x4.20mm_Straight" H 5700 3650 50  0001 C CNN
F 3 "" H 5700 3650 50  0000 C CNN
	1    5700 3650
	1    0    0    1   
$EndComp
$Comp
L PowerSupply-rescue:CONN_01X04 P4
U 1 1 57EC37C2
P 5700 4200
F 0 "P4" H 5700 4450 50  0000 C CNN
F 1 "OUT" V 5800 4200 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MiniFit-JR-5556-04A_2x02x4.20mm_Straight" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0000 C CNN
	1    5700 4200
	1    0    0    1   
$EndComp
Wire Wire Line
	3550 3050 3550 3100
Wire Wire Line
	4000 3050 4000 3100
Wire Wire Line
	3550 3400 3550 3550
Connection ~ 3550 3550
Wire Wire Line
	4000 3400 4000 3550
Connection ~ 4000 3550
Wire Wire Line
	3550 4050 3550 4000
Wire Wire Line
	4000 4050 4000 4000
Connection ~ 4000 3050
Connection ~ 4000 4050
Wire Wire Line
	2150 3150 2150 3050
Wire Wire Line
	2600 3050 2600 3150
Wire Wire Line
	3050 3050 3050 3100
Connection ~ 2600 3050
Connection ~ 3550 3050
Connection ~ 3050 3050
Wire Wire Line
	3050 4050 3050 4000
Connection ~ 3550 4050
Wire Wire Line
	2150 4050 2150 4000
Connection ~ 3050 4050
Wire Wire Line
	2600 3950 2600 4050
Connection ~ 2600 4050
Wire Wire Line
	1200 3550 1400 3550
Wire Wire Line
	2150 3450 2150 3550
Connection ~ 2150 3550
Wire Wire Line
	3000 3550 3050 3550
Wire Wire Line
	3050 3400 3050 3550
Connection ~ 3050 3550
Wire Wire Line
	1100 2900 1100 3000
Wire Wire Line
	1200 3750 1250 3750
Wire Wire Line
	1250 3750 1250 3800
Wire Wire Line
	1250 3850 1200 3850
Wire Wire Line
	1300 3800 1250 3800
Connection ~ 1250 3800
Wire Wire Line
	1200 3650 1400 3650
Wire Wire Line
	1900 3550 2150 3550
Wire Wire Line
	3250 3550 3250 4150
Wire Wire Line
	5400 3150 5400 3250
Wire Wire Line
	5400 3150 5500 3150
Wire Wire Line
	5500 3250 5400 3250
Connection ~ 5400 3250
Wire Wire Line
	5400 4350 5500 4350
Wire Wire Line
	5500 4250 5400 4250
Connection ~ 5400 4250
Wire Wire Line
	5500 3700 5400 3700
Connection ~ 5400 3700
Wire Wire Line
	5500 3800 5400 3800
Connection ~ 5400 3800
Wire Wire Line
	2150 4050 2600 4050
Wire Wire Line
	5050 3050 5050 3600
Wire Wire Line
	5050 3600 5500 3600
Connection ~ 5050 3050
Wire Wire Line
	5050 4150 5500 4150
Connection ~ 5050 3600
Wire Wire Line
	5200 2950 5200 3500
Wire Wire Line
	5200 2950 5500 2950
Connection ~ 5200 4050
Wire Wire Line
	5500 3500 5200 3500
Connection ~ 5200 3500
Wire Wire Line
	3500 3550 3550 3550
$Comp
L power:GND #PWR05
U 1 1 57EC3809
P 5400 4400
F 0 "#PWR05" H 5400 4150 50  0001 C CNN
F 1 "GND" H 5400 4250 50  0000 C CNN
F 2 "" H 5400 4400 50  0000 C CNN
F 3 "" H 5400 4400 50  0000 C CNN
	1    5400 4400
	1    0    0    -1  
$EndComp
Connection ~ 5400 4350
$Comp
L Device:R R1
U 1 1 57ED72CA
P 4400 3050
F 0 "R1" V 4480 3050 50  0000 C CNN
F 1 "0R1" V 4400 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 4330 3050 50  0001 C CNN
F 3 "" H 4400 3050 50  0000 C CNN
	1    4400 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 3050 2600 3050
Wire Wire Line
	4550 3050 4600 3050
Wire Wire Line
	4800 2050 4150 2050
Wire Wire Line
	4150 2050 4150 2750
Connection ~ 4150 3050
Wire Wire Line
	4800 2150 4600 2150
Wire Wire Line
	4600 2150 4600 2300
Connection ~ 4600 3050
$Comp
L PowerSupply-rescue:CONN_01X04 P5
U 1 1 57EF8DDD
P 7750 2300
F 0 "P5" H 7750 2550 50  0000 C CNN
F 1 "I2C" V 7850 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7750 2300 50  0001 C CNN
F 3 "" H 7750 2300 50  0000 C CNN
	1    7750 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	5450 2100 5600 2100
$Comp
L Device:R R2
U 1 1 57EF99EF
P 5600 2350
F 0 "R2" V 5680 2350 50  0000 C CNN
F 1 "10k?" V 5600 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5530 2350 50  0001 C CNN
F 3 "" H 5600 2350 50  0000 C CNN
	1    5600 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 2200 5600 2100
Connection ~ 5600 2100
Wire Wire Line
	6750 1350 6750 1400
$Comp
L Device:CP C12
U 1 1 57EFA23B
P 7200 1600
F 0 "C12" H 7225 1700 50  0000 L CNN
F 1 "47u" H 7225 1500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 7238 1450 50  0001 C CNN
F 3 "" H 7200 1600 50  0000 C CNN
	1    7200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 57EFA6E3
P 6950 1600
F 0 "C11" H 6975 1700 50  0000 L CNN
F 1 "100n" H 6975 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6988 1450 50  0001 C CNN
F 3 "" H 6950 1600 50  0000 C CNN
	1    6950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1400 6950 1400
Wire Wire Line
	7200 1400 7200 1450
Connection ~ 6750 1400
Wire Wire Line
	6950 1450 6950 1400
Connection ~ 6950 1400
Wire Wire Line
	5150 1700 5150 1850
$Comp
L Device:C C9
U 1 1 57EFAB25
P 2400 1250
F 0 "C9" H 2425 1350 50  0000 L CNN
F 1 "1u" H 2425 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2438 1100 50  0001 C CNN
F 3 "" H 2400 1250 50  0000 C CNN
	1    2400 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 57EFAEC5
P 5850 2350
F 0 "C10" H 5875 2450 50  0000 L CNN
F 1 "4u7" H 5875 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5888 2200 50  0001 C CNN
F 3 "" H 5850 2350 50  0000 C CNN
	1    5850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2200 5850 2100
Connection ~ 5850 2100
Wire Wire Line
	5600 2500 5600 2550
Wire Wire Line
	5850 2500 5850 2550
$Comp
L Device:R R4
U 1 1 57EFC916
P 4400 2900
F 0 "R4" V 4480 2900 50  0000 C CNN
F 1 "0R1" V 4400 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 4330 2900 50  0001 C CNN
F 3 "" H 4400 2900 50  0000 C CNN
	1    4400 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 57EFC973
P 4400 2750
F 0 "R3" V 4480 2750 50  0000 C CNN
F 1 "0R1" V 4400 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 4330 2750 50  0001 C CNN
F 3 "" H 4400 2750 50  0000 C CNN
	1    4400 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2750 4250 2750
Connection ~ 4150 2750
Wire Wire Line
	4150 2900 4250 2900
Connection ~ 4150 2900
Wire Wire Line
	4550 2900 4600 2900
Connection ~ 4600 2900
Connection ~ 4600 2750
$Comp
L power:+3.3V #PWR06
U 1 1 57F2C799
P 7450 2050
F 0 "#PWR06" H 7450 1900 50  0001 C CNN
F 1 "+3.3V" H 7450 2190 50  0000 C CNN
F 2 "" H 7450 2050 50  0000 C CNN
F 3 "" H 7450 2050 50  0000 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 57F2C8AB
P 6750 1350
F 0 "#PWR07" H 6750 1200 50  0001 C CNN
F 1 "+3.3V" H 6750 1490 50  0000 C CNN
F 2 "" H 6750 1350 50  0000 C CNN
F 3 "" H 6750 1350 50  0000 C CNN
	1    6750 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 57F2C907
P 5150 1700
F 0 "#PWR08" H 5150 1550 50  0001 C CNN
F 1 "+3.3V" H 5150 1840 50  0000 C CNN
F 2 "" H 5150 1700 50  0000 C CNN
F 3 "" H 5150 1700 50  0000 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
$Comp
L myLib:INA169 U1
U 1 1 57F7E13A
P 5100 2100
F 0 "U1" H 4950 2300 40  0000 C CNN
F 1 "INA169" H 5000 1900 40  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5100 2100 60  0001 C CNN
F 3 "" H 5100 2100 60  0000 C CNN
	1    5100 2100
	1    0    0    -1  
$EndComp
$Comp
L myLib:MCP3426 U2
U 1 1 57F7FDC5
P 6750 2300
F 0 "U2" H 6550 2600 40  0000 C CNN
F 1 "MCP3426" H 6900 2000 40  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6750 2300 60  0001 C CNN
F 3 "" H 6750 2300 60  0000 C CNN
	1    6750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2200 7350 2200
Wire Wire Line
	7100 2400 7350 2400
Wire Wire Line
	6400 2400 6100 2400
Wire Wire Line
	6100 2400 6100 2750
$Comp
L Device:R R5
U 1 1 57F818C7
P 5200 2750
F 0 "R5" V 5280 2750 50  0000 C CNN
F 1 "30k" V 5200 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5130 2750 50  0001 C CNN
F 3 "" H 5200 2750 50  0000 C CNN
	1    5200 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 57F819A3
P 6100 2950
F 0 "R6" V 6180 2950 50  0000 C CNN
F 1 "2k" V 6100 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6030 2950 50  0001 C CNN
F 3 "" H 6100 2950 50  0000 C CNN
	1    6100 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 2750 4600 2750
Wire Wire Line
	6100 2750 5350 2750
Connection ~ 6100 2750
Wire Wire Line
	7450 2550 7450 2450
Wire Wire Line
	7450 2450 7550 2450
Wire Wire Line
	7450 2050 7450 2150
Wire Wire Line
	7450 2150 7550 2150
Wire Wire Line
	7350 2200 7350 2250
Wire Wire Line
	7350 2250 7550 2250
Wire Wire Line
	7350 2400 7350 2350
Wire Wire Line
	7350 2350 7550 2350
$Comp
L Device:C C13
U 1 1 57F85581
P 3600 1250
F 0 "C13" H 3625 1350 50  0000 L CNN
F 1 "1u" H 3625 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3638 1100 50  0001 C CNN
F 3 "" H 3600 1250 50  0000 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 57F86D54
P 4600 1250
F 0 "C14" H 4625 1350 50  0000 L CNN
F 1 "100n" H 4625 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4638 1100 50  0001 C CNN
F 3 "" H 4600 1250 50  0000 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 57F86E55
P 4600 800
F 0 "#PWR09" H 4600 650 50  0001 C CNN
F 1 "+3.3V" H 4600 940 50  0000 C CNN
F 2 "" H 4600 800 50  0000 C CNN
F 3 "" H 4600 800 50  0000 C CNN
	1    4600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2300 4600 2300
Connection ~ 4600 2300
$Comp
L power:GND #PWR010
U 1 1 57FDD41E
P 6100 3100
F 0 "#PWR010" H 6100 2850 50  0001 C CNN
F 1 "GND" H 6100 2950 50  0000 C CNN
F 2 "" H 6100 3100 50  0000 C CNN
F 3 "" H 6100 3100 50  0000 C CNN
	1    6100 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 57FDD5E3
P 6750 2650
F 0 "#PWR011" H 6750 2400 50  0001 C CNN
F 1 "GND" H 6750 2500 50  0000 C CNN
F 2 "" H 6750 2650 50  0000 C CNN
F 3 "" H 6750 2650 50  0000 C CNN
	1    6750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 57FDD654
P 7450 2550
F 0 "#PWR012" H 7450 2300 50  0001 C CNN
F 1 "GND" H 7450 2400 50  0000 C CNN
F 2 "" H 7450 2550 50  0000 C CNN
F 3 "" H 7450 2550 50  0000 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 57FDD6C5
P 5600 2550
F 0 "#PWR013" H 5600 2300 50  0001 C CNN
F 1 "GND" H 5600 2400 50  0000 C CNN
F 2 "" H 5600 2550 50  0000 C CNN
F 3 "" H 5600 2550 50  0000 C CNN
	1    5600 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 57FDD736
P 5850 2550
F 0 "#PWR014" H 5850 2300 50  0001 C CNN
F 1 "GND" H 5850 2400 50  0000 C CNN
F 2 "" H 5850 2550 50  0000 C CNN
F 3 "" H 5850 2550 50  0000 C CNN
	1    5850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 57FDDA4F
P 5150 2350
F 0 "#PWR015" H 5150 2100 50  0001 C CNN
F 1 "GND" H 5150 2200 50  0000 C CNN
F 2 "" H 5150 2350 50  0000 C CNN
F 3 "" H 5150 2350 50  0000 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 57FDDC36
P 7200 1750
F 0 "#PWR016" H 7200 1500 50  0001 C CNN
F 1 "GND" H 7200 1600 50  0000 C CNN
F 2 "" H 7200 1750 50  0000 C CNN
F 3 "" H 7200 1750 50  0000 C CNN
	1    7200 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 57FDDCA7
P 6950 1750
F 0 "#PWR017" H 6950 1500 50  0001 C CNN
F 1 "GND" H 6950 1600 50  0000 C CNN
F 2 "" H 6950 1750 50  0000 C CNN
F 3 "" H 6950 1750 50  0000 C CNN
	1    6950 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 57FDDF16
P 4600 1400
F 0 "#PWR018" H 4600 1150 50  0001 C CNN
F 1 "GND" H 4600 1250 50  0000 C CNN
F 2 "" H 4600 1400 50  0000 C CNN
F 3 "" H 4600 1400 50  0000 C CNN
	1    4600 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 57FDDFF8
P 3600 1400
F 0 "#PWR019" H 3600 1150 50  0001 C CNN
F 1 "GND" H 3600 1250 50  0000 C CNN
F 2 "" H 3600 1400 50  0000 C CNN
F 3 "" H 3600 1400 50  0000 C CNN
	1    3600 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 57FDE08E
P 2400 1400
F 0 "#PWR020" H 2400 1150 50  0001 C CNN
F 1 "GND" H 2400 1250 50  0000 C CNN
F 2 "" H 2400 1400 50  0000 C CNN
F 3 "" H 2400 1400 50  0000 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 57FDE95E
P 6400 2200
F 0 "#PWR021" H 6400 1950 50  0001 C CNN
F 1 "GND" H 6400 2050 50  0000 C CNN
F 2 "" H 6400 2200 50  0000 C CNN
F 3 "" H 6400 2200 50  0000 C CNN
	1    6400 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 57FDE9CF
P 6400 2500
F 0 "#PWR022" H 6400 2250 50  0001 C CNN
F 1 "GND" H 6400 2350 50  0000 C CNN
F 2 "" H 6400 2500 50  0000 C CNN
F 3 "" H 6400 2500 50  0000 C CNN
	1    6400 2500
	0    1    1    0   
$EndComp
$Comp
L PowerSupply-rescue:LED-RESCUE-PowerSupply D5
U 1 1 5817F17A
P 4600 3600
F 0 "D5" H 4600 3700 50  0000 C CNN
F 1 "LED" H 4600 3500 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 4600 3600 50  0001 C CNN
F 3 "" H 4600 3600 50  0000 C CNN
	1    4600 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 58180076
P 4600 3250
F 0 "R7" V 4680 3250 50  0000 C CNN
F 1 "10k" V 4600 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4530 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0000 C CNN
	1    4600 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 58180130
P 4600 3800
F 0 "#PWR023" H 4600 3550 50  0001 C CNN
F 1 "GND" H 4600 3650 50  0000 C CNN
F 2 "" H 4600 3800 50  0000 C CNN
F 3 "" H 4600 3800 50  0000 C CNN
	1    4600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 58180592
P 4850 3850
F 0 "R8" V 4930 3850 50  0000 C CNN
F 1 "10k" V 4850 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4780 3850 50  0001 C CNN
F 3 "" H 4850 3850 50  0000 C CNN
	1    4850 3850
	-1   0    0    1   
$EndComp
$Comp
L PowerSupply-rescue:LED-RESCUE-PowerSupply D6
U 1 1 58180756
P 4850 3500
F 0 "D6" H 4850 3600 50  0000 C CNN
F 1 "LED" H 4850 3400 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 4850 3500 50  0001 C CNN
F 3 "" H 4850 3500 50  0000 C CNN
	1    4850 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 581807F2
P 4850 3300
F 0 "#PWR024" H 4850 3050 50  0001 C CNN
F 1 "GND" H 4850 3150 50  0000 C CNN
F 2 "" H 4850 3300 50  0000 C CNN
F 3 "" H 4850 3300 50  0000 C CNN
	1    4850 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 4000 4850 4050
Connection ~ 4850 4050
$Comp
L PowerSupply-rescue:MC78L05ACH U4
U 1 1 58EE22B8
P 2900 1050
F 0 "U4" H 2700 1250 50  0000 C CNN
F 1 "MC78L18" H 2900 1250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 2900 1150 50  0001 C CIN
F 3 "" H 2900 1050 50  0001 C CNN
	1    2900 1050
	1    0    0    -1  
$EndComp
$Comp
L PowerSupply-rescue:MC78L18ACP U5
U 1 1 58EE222F
P 4100 1050
F 0 "U5" H 3900 1250 50  0000 C CNN
F 1 "MC78L05" H 4100 1250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 4100 1150 50  0001 C CIN
F 3 "" H 4100 1050 50  0001 C CNN
	1    4100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2300 2250 1000
Wire Wire Line
	2250 1000 2400 1000
Wire Wire Line
	2400 1100 2400 1000
Connection ~ 2400 1000
Wire Wire Line
	3300 1000 3400 1000
Wire Wire Line
	3600 1000 3600 1100
Connection ~ 3600 1000
Wire Wire Line
	4600 800  4600 1000
Wire Wire Line
	4500 1000 4600 1000
Connection ~ 4600 1000
$Comp
L power:GND #PWR025
U 1 1 58EFED91
P 4100 1300
F 0 "#PWR025" H 4100 1050 50  0001 C CNN
F 1 "GND" H 4100 1150 50  0000 C CNN
F 2 "" H 4100 1300 50  0000 C CNN
F 3 "" H 4100 1300 50  0000 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 58EFEE08
P 2900 1300
F 0 "#PWR026" H 2900 1050 50  0001 C CNN
F 1 "GND" H 2900 1150 50  0000 C CNN
F 2 "" H 2900 1300 50  0000 C CNN
F 3 "" H 2900 1300 50  0000 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 58EFF7EE
P 3400 1250
F 0 "C15" H 3425 1350 50  0000 L CNN
F 1 "100n" H 3425 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3438 1100 50  0001 C CNN
F 3 "" H 3400 1250 50  0000 C CNN
	1    3400 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 58EFF87D
P 3400 1400
F 0 "#PWR027" H 3400 1150 50  0001 C CNN
F 1 "GND" H 3400 1250 50  0000 C CNN
F 2 "" H 3400 1400 50  0000 C CNN
F 3 "" H 3400 1400 50  0000 C CNN
	1    3400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1100 3400 1000
Connection ~ 3400 1000
Wire Wire Line
	1900 3650 2000 3650
Wire Wire Line
	2000 3650 2000 4150
Wire Wire Line
	2000 4150 3250 4150
Wire Wire Line
	3550 3550 3550 3700
Wire Wire Line
	3550 3550 4000 3550
Wire Wire Line
	4000 3550 4000 3700
Wire Wire Line
	4000 3050 4150 3050
Wire Wire Line
	4000 4050 4850 4050
Wire Wire Line
	2600 3050 3050 3050
Wire Wire Line
	3550 3050 4000 3050
Wire Wire Line
	3050 3050 3550 3050
Wire Wire Line
	3550 4050 4000 4050
Wire Wire Line
	3050 4050 3550 4050
Wire Wire Line
	2600 4050 3050 4050
Wire Wire Line
	2150 3550 2150 3700
Wire Wire Line
	2150 3550 2200 3550
Wire Wire Line
	3050 3550 3250 3550
Wire Wire Line
	3050 3550 3050 3700
Wire Wire Line
	1250 3800 1250 3850
Wire Wire Line
	5400 3250 5400 3700
Wire Wire Line
	5400 4250 5400 4350
Wire Wire Line
	5400 3700 5400 3800
Wire Wire Line
	5400 3800 5400 4250
Wire Wire Line
	5050 3050 5500 3050
Wire Wire Line
	5050 3600 5050 4150
Wire Wire Line
	5200 4050 5500 4050
Wire Wire Line
	5200 3500 5200 4050
Wire Wire Line
	5400 4350 5400 4400
Wire Wire Line
	4150 3050 4250 3050
Wire Wire Line
	4600 3050 5050 3050
Wire Wire Line
	4600 3050 4600 3100
Wire Wire Line
	5600 2100 5850 2100
Wire Wire Line
	6750 1400 6750 1950
Wire Wire Line
	6950 1400 7200 1400
Wire Wire Line
	5850 2100 6400 2100
Wire Wire Line
	4150 2750 4150 2900
Wire Wire Line
	4150 2900 4150 3050
Wire Wire Line
	4600 2900 4600 3050
Wire Wire Line
	4600 2750 4600 2900
Wire Wire Line
	4600 2750 5050 2750
Wire Wire Line
	6100 2750 6100 2800
Wire Wire Line
	4600 2300 4600 2750
Wire Wire Line
	4850 4050 5200 4050
Wire Wire Line
	2400 1000 2500 1000
Wire Wire Line
	3600 1000 3700 1000
Wire Wire Line
	4600 1000 4600 1100
Wire Wire Line
	3400 1000 3600 1000
$EndSCHEMATC
