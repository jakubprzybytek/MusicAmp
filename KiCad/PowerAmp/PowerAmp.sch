EESchema Schematic File Version 4
LIBS:PowerAmp-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L PowerAmp-rescue:TDA7294V U1
U 1 1 57DE80D7
P 7300 1800
F 0 "U1" H 7750 1650 50  0000 C CNN
F 1 "TDA7294V" H 7750 1600 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:Multiwatt_15_Vertical" H 6950 1800 50  0000 C CIN
F 3 "" H 7300 1800 50  0000 C CNN
	1    7300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR01
U 1 1 57DEE8B4
P 7400 1350
F 0 "#PWR01" H 7400 1200 50  0001 C CNN
F 1 "VDD" H 7400 1500 50  0000 C CNN
F 2 "" H 7400 1350 50  0000 C CNN
F 3 "" H 7400 1350 50  0000 C CNN
	1    7400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR02
U 1 1 57DEE8F8
P 7400 2250
F 0 "#PWR02" H 7400 2100 50  0001 C CNN
F 1 "VSS" H 7400 2400 50  0000 C CNN
F 2 "" H 7400 2250 50  0000 C CNN
F 3 "" H 7400 2250 50  0000 C CNN
	1    7400 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 57DEE99B
P 2050 1850
F 0 "C7" H 2075 1950 50  0000 L CNN
F 1 "220n" H 2075 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2088 1700 50  0001 C CNN
F 3 "" H 2050 1850 50  0000 C CNN
	1    2050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 57DEEA6A
P 2350 1850
F 0 "C8" H 2375 1950 50  0000 L CNN
F 1 "2200u" H 2375 1750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 2388 1700 50  0001 C CNN
F 3 "" H 2350 1850 50  0000 C CNN
	1    2350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 57DEEB63
P 3100 1850
F 0 "C9" H 3125 1950 50  0000 L CNN
F 1 "2200u" H 3125 1750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 3138 1700 50  0001 C CNN
F 3 "" H 3100 1850 50  0000 C CNN
	1    3100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 57DEEB85
P 3150 1600
F 0 "#PWR03" H 3150 1350 50  0001 C CNN
F 1 "GND" H 3150 1450 50  0000 C CNN
F 2 "" H 3150 1600 50  0000 C CNN
F 3 "" H 3150 1600 50  0000 C CNN
	1    3150 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 57DEEF6C
P 2050 1350
F 0 "C1" H 2075 1450 50  0000 L CNN
F 1 "220n" H 2075 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2088 1200 50  0001 C CNN
F 3 "" H 2050 1350 50  0000 C CNN
	1    2050 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 57DEEF72
P 2350 1350
F 0 "C2" H 2375 1450 50  0000 L CNN
F 1 "2200u" H 2375 1250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 2388 1200 50  0001 C CNN
F 3 "" H 2350 1350 50  0000 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 57DEEF78
P 3100 1350
F 0 "C3" H 3125 1450 50  0000 L CNN
F 1 "2200u" H 3125 1250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 3138 1200 50  0001 C CNN
F 3 "" H 3100 1350 50  0000 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 57DEEF7E
P 2000 1600
F 0 "#PWR04" H 2000 1350 50  0001 C CNN
F 1 "GND" H 2000 1450 50  0000 C CNN
F 2 "" H 2000 1600 50  0000 C CNN
F 3 "" H 2000 1600 50  0000 C CNN
	1    2000 1600
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 57DEEF8E
P 2350 1100
F 0 "#PWR05" H 2350 950 50  0001 C CNN
F 1 "VDD" H 2350 1250 50  0000 C CNN
F 2 "" H 2350 1100 50  0000 C CNN
F 3 "" H 2350 1100 50  0000 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR06
U 1 1 57DEF043
P 2350 2100
F 0 "#PWR06" H 2350 1950 50  0001 C CNN
F 1 "VSS" H 2350 2250 50  0000 C CNN
F 2 "" H 2350 2100 50  0000 C CNN
F 3 "" H 2350 2100 50  0000 C CNN
	1    2350 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 57DEF117
P 6350 2000
F 0 "C6" H 6375 2100 50  0000 L CNN
F 1 "1u" H 6375 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 6388 1850 50  0001 C CNN
F 3 "" H 6350 2000 50  0000 C CNN
	1    6350 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 57DEF1F6
P 6600 2400
F 0 "R3" V 6680 2400 50  0000 C CNN
F 1 "22k" V 6600 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 2400 50  0001 C CNN
F 3 "" H 6600 2400 50  0000 C CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
$Comp
L PowerAmp-rescue:CONN_01X02 P2
U 1 1 57DEF296
P 5800 2250
F 0 "P2" H 5800 2400 50  0000 C CNN
F 1 "IN-L" V 5900 2250 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Latch_53253-0270_1x02_P2.00mm_Vertical" H 5800 2250 50  0001 C CNN
F 3 "" H 5800 2250 50  0000 C CNN
	1    5800 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 57DEF530
P 6600 1300
F 0 "R1" V 6680 1300 50  0000 C CNN
F 1 "22k" V 6600 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 1300 50  0001 C CNN
F 3 "" H 6600 1300 50  0000 C CNN
	1    6600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 57DEF597
P 6400 1600
F 0 "R2" V 6480 1600 50  0000 C CNN
F 1 "680" V 6400 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 1600 50  0001 C CNN
F 3 "" H 6400 1600 50  0000 C CNN
	1    6400 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C5
U 1 1 57DEF650
P 6050 1600
F 0 "C5" H 6075 1700 50  0000 L CNN
F 1 "22u/25V" H 6075 1500 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-28_Kemet-C" H 6088 1450 50  0001 C CNN
F 3 "" H 6050 1600 50  0000 C CNN
	1    6050 1600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C4
U 1 1 57DEFA26
P 7800 1400
F 0 "C4" H 7825 1500 50  0000 L CNN
F 1 "22u/63V" H 7825 1300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7838 1250 50  0001 C CNN
F 3 "" H 7800 1400 50  0000 C CNN
	1    7800 1400
	0    -1   -1   0   
$EndComp
$Comp
L PowerAmp-rescue:CONN_01X02 P1
U 1 1 57DEFB30
P 8850 1850
F 0 "P1" H 8850 2000 50  0000 C CNN
F 1 "OUT-L" V 8950 1850 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-02A_2x01_P4.20mm_Vertical" H 8850 1850 50  0001 C CNN
F 3 "" H 8850 1850 50  0000 C CNN
	1    8850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 57DEFBA3
P 8100 2050
F 0 "#PWR010" H 8100 1800 50  0001 C CNN
F 1 "GND" H 8100 1900 50  0000 C CNN
F 2 "" H 8100 2050 50  0000 C CNN
F 3 "" H 8100 2050 50  0000 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
$Comp
L PowerAmp-rescue:CONN_01X04 P3
U 1 1 57DF0BE5
P 1200 1950
F 0 "P3" H 1200 2200 50  0000 C CNN
F 1 "POWER" V 1300 1950 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 1200 1950 50  0001 C CNN
F 3 "" H 1200 1950 50  0000 C CNN
	1    1200 1950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 57DF0C68
P 1500 2200
F 0 "#PWR012" H 1500 1950 50  0001 C CNN
F 1 "GND" H 1500 2050 50  0000 C CNN
F 2 "" H 1500 2200 50  0000 C CNN
F 3 "" H 1500 2200 50  0000 C CNN
	1    1500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR013
U 1 1 57DF0D3F
P 1600 1900
F 0 "#PWR013" H 1600 1750 50  0001 C CNN
F 1 "VDD" H 1600 2050 50  0000 C CNN
F 2 "" H 1600 1900 50  0000 C CNN
F 3 "" H 1600 1900 50  0000 C CNN
	1    1600 1900
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR014
U 1 1 57DF0D7A
P 1500 1700
F 0 "#PWR014" H 1500 1550 50  0001 C CNN
F 1 "VSS" H 1500 1850 50  0000 C CNN
F 2 "" H 1500 1700 50  0000 C CNN
F 3 "" H 1500 1700 50  0000 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
Text Label 8000 1800 0    60   ~ 0
OutL
Wire Wire Line
	7300 1450 7300 1400
Wire Wire Line
	7300 1400 7400 1400
Wire Wire Line
	7450 1400 7450 1500
Wire Wire Line
	7400 1350 7400 1400
Connection ~ 7400 1400
Wire Wire Line
	7300 2150 7300 2200
Wire Wire Line
	7300 2200 7400 2200
Wire Wire Line
	7450 2200 7450 2100
Wire Wire Line
	7400 2250 7400 2200
Connection ~ 7400 2200
Wire Wire Line
	2050 2000 2050 2050
Wire Wire Line
	2050 2050 2350 2050
Wire Wire Line
	2350 2000 2350 2050
Connection ~ 2350 2050
Wire Wire Line
	2050 1200 2050 1150
Wire Wire Line
	2050 1150 2350 1150
Wire Wire Line
	2350 1100 2350 1150
Connection ~ 2350 1150
Wire Wire Line
	6500 2000 6600 2000
Wire Wire Line
	6600 2000 6600 2200
Connection ~ 6600 2000
Wire Wire Line
	6600 2550 6600 2650
Wire Wire Line
	6000 2300 6100 2300
Wire Wire Line
	6100 2300 6100 2450
Wire Wire Line
	6550 1600 6600 1600
Wire Wire Line
	6600 1450 6600 1600
Connection ~ 6600 1600
Wire Wire Line
	6600 1150 6600 1100
Wire Wire Line
	6600 1100 8000 1100
Wire Wire Line
	8000 1100 8000 1400
Wire Wire Line
	7950 1800 8000 1800
Wire Wire Line
	7650 1400 7600 1400
Wire Wire Line
	7600 1400 7600 1550
Wire Wire Line
	7950 1400 8000 1400
Connection ~ 8000 1400
Wire Wire Line
	8100 2050 8100 1900
Wire Wire Line
	8100 1900 8650 1900
Connection ~ 8000 1800
Wire Wire Line
	7000 2250 7000 2300
Wire Wire Line
	7000 2300 7100 2300
Wire Wire Line
	7150 2300 7150 2200
Wire Wire Line
	7100 2350 7100 2300
Connection ~ 7100 2300
Wire Wire Line
	1400 2000 1500 2000
Wire Wire Line
	1500 2000 1500 2100
Wire Wire Line
	1400 2100 1500 2100
Connection ~ 1500 2100
Text Label 6000 2200 0    60   ~ 0
InL
$Comp
L PowerAmp-rescue:TDA7294V U2
U 1 1 57EAE9B7
P 7300 3850
F 0 "U2" H 7750 3700 50  0000 C CNN
F 1 "TDA7294V" H 7750 3650 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:Multiwatt_15_Vertical" H 6950 3850 50  0000 C CIN
F 3 "" H 7300 3850 50  0000 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR015
U 1 1 57EAE9BD
P 7400 3400
F 0 "#PWR015" H 7400 3250 50  0001 C CNN
F 1 "VDD" H 7400 3550 50  0000 C CNN
F 2 "" H 7400 3400 50  0000 C CNN
F 3 "" H 7400 3400 50  0000 C CNN
	1    7400 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR016
U 1 1 57EAE9C3
P 7400 4300
F 0 "#PWR016" H 7400 4150 50  0001 C CNN
F 1 "VSS" H 7400 4450 50  0000 C CNN
F 2 "" H 7400 4300 50  0000 C CNN
F 3 "" H 7400 4300 50  0000 C CNN
	1    7400 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 57EAE9C9
P 6350 4050
F 0 "C16" H 6375 4150 50  0000 L CNN
F 1 "1u" H 6375 3950 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 6388 3900 50  0001 C CNN
F 3 "" H 6350 4050 50  0000 C CNN
	1    6350 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 57EAE9D5
P 6600 4450
F 0 "R10" V 6680 4450 50  0000 C CNN
F 1 "22k" V 6600 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 4450 50  0001 C CNN
F 3 "" H 6600 4450 50  0000 C CNN
	1    6600 4450
	1    0    0    -1  
$EndComp
$Comp
L PowerAmp-rescue:CONN_01X02 P6
U 1 1 57EAE9DB
P 5800 4300
F 0 "P6" H 5800 4450 50  0000 C CNN
F 1 "IN-R" V 5900 4300 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Latch_53253-0270_1x02_P2.00mm_Vertical" H 5800 4300 50  0001 C CNN
F 3 "" H 5800 4300 50  0000 C CNN
	1    5800 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 57EAE9E7
P 6600 3350
F 0 "R8" V 6680 3350 50  0000 C CNN
F 1 "22k" V 6600 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 3350 50  0001 C CNN
F 3 "" H 6600 3350 50  0000 C CNN
	1    6600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 57EAE9ED
P 6400 3650
F 0 "R9" V 6480 3650 50  0000 C CNN
F 1 "680" V 6400 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 3650 50  0001 C CNN
F 3 "" H 6400 3650 50  0000 C CNN
	1    6400 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C15
U 1 1 57EAE9F3
P 6050 3650
F 0 "C15" H 6075 3750 50  0000 L CNN
F 1 "22u/25V" H 6075 3550 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-28_Kemet-C" H 6088 3500 50  0001 C CNN
F 3 "" H 6050 3650 50  0000 C CNN
	1    6050 3650
	0    1    1    0   
$EndComp
$Comp
L Device:CP C14
U 1 1 57EAE9FF
P 7800 3450
F 0 "C14" H 7825 3550 50  0000 L CNN
F 1 "22u/63V" H 7825 3350 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7838 3300 50  0001 C CNN
F 3 "" H 7800 3450 50  0000 C CNN
	1    7800 3450
	0    -1   -1   0   
$EndComp
$Comp
L PowerAmp-rescue:CONN_01X02 P5
U 1 1 57EAEA05
P 8850 3900
F 0 "P5" H 8850 4050 50  0000 C CNN
F 1 "OUT-R" V 8950 3900 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-02A_2x01_P4.20mm_Vertical" H 8850 3900 50  0001 C CNN
F 3 "" H 8850 3900 50  0000 C CNN
	1    8850 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 57EAEA0B
P 8100 4100
F 0 "#PWR020" H 8100 3850 50  0001 C CNN
F 1 "GND" H 8100 3950 50  0000 C CNN
F 2 "" H 8100 4100 50  0000 C CNN
F 3 "" H 8100 4100 50  0000 C CNN
	1    8100 4100
	1    0    0    -1  
$EndComp
Text Label 8000 3850 0    60   ~ 0
OutR
Wire Wire Line
	7300 3500 7300 3450
Wire Wire Line
	7300 3450 7400 3450
Wire Wire Line
	7450 3450 7450 3550
Wire Wire Line
	7400 3400 7400 3450
Connection ~ 7400 3450
Wire Wire Line
	7300 4200 7300 4250
Wire Wire Line
	7300 4250 7400 4250
Wire Wire Line
	7450 4250 7450 4150
Wire Wire Line
	7400 4300 7400 4250
Connection ~ 7400 4250
Wire Wire Line
	6500 4050 6600 4050
Wire Wire Line
	6600 4050 6600 4250
Connection ~ 6600 4050
Wire Wire Line
	6600 4600 6600 4700
Wire Wire Line
	6550 3650 6600 3650
Wire Wire Line
	6600 3500 6600 3650
Connection ~ 6600 3650
Wire Wire Line
	6600 3200 6600 3150
Wire Wire Line
	6600 3150 8000 3150
Wire Wire Line
	8000 3150 8000 3450
Wire Wire Line
	7950 3850 8000 3850
Wire Wire Line
	7650 3450 7600 3450
Wire Wire Line
	7600 3450 7600 3600
Wire Wire Line
	7950 3450 8000 3450
Connection ~ 8000 3450
Wire Wire Line
	8100 4100 8100 3950
Wire Wire Line
	8100 3950 8650 3950
Wire Wire Line
	7000 4300 7000 4350
Wire Wire Line
	7000 4350 7100 4350
Wire Wire Line
	7150 4350 7150 4250
Wire Wire Line
	7100 4400 7100 4350
Connection ~ 7100 4350
Text Label 6000 4250 0    60   ~ 0
InR
Text GLabel 7000 3300 1    60   Input ~ 0
xMute
Text GLabel 7150 3300 1    60   Input ~ 0
xStby
Wire Wire Line
	7000 3300 7000 3400
Wire Wire Line
	7150 3300 7150 3450
Text GLabel 7000 1250 1    60   Input ~ 0
xMute
Text GLabel 7150 1250 1    60   Input ~ 0
xStby
Wire Wire Line
	7000 1250 7000 1350
Wire Wire Line
	7150 1250 7150 1400
Text Notes 700  800  0    60   ~ 0
Vdd=36V\nVss=-36V
Wire Wire Line
	5850 1600 5900 1600
Wire Wire Line
	6200 1600 6250 1600
Wire Wire Line
	5850 3650 5900 3650
Wire Wire Line
	6200 3650 6250 3650
$Comp
L PowerAmp-rescue:CONN_01X02 P4
U 1 1 59A2BDAB
P 1150 4500
F 0 "P4" H 1150 4650 50  0000 C CNN
F 1 "MUTE" V 1250 4500 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Latch_53253-0270_1x02_P2.00mm_Vertical" H 1150 4500 50  0001 C CNN
F 3 "" H 1150 4500 50  0000 C CNN
	1    1150 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C10
U 1 1 59A2BDB1
P 4050 4350
F 0 "C10" H 4075 4450 50  0000 L CNN
F 1 "10u" H 4075 4250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4088 4200 50  0001 C CNN
F 3 "" H 4050 4350 50  0000 C CNN
	1    4050 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 59A2BDB7
P 4250 4350
F 0 "C11" H 4275 4450 50  0000 L CNN
F 1 "10u" H 4275 4250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4288 4200 50  0001 C CNN
F 3 "" H 4250 4350 50  0000 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4800 4150 4800
Wire Wire Line
	4250 4800 4250 4500
Wire Wire Line
	4150 4900 4150 4800
Connection ~ 4150 4800
$Comp
L Device:R R15
U 1 1 59A2BDC8
P 3550 4100
F 0 "R15" V 3630 4100 50  0000 C CNN
F 1 "22k" V 3550 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 4100 50  0001 C CNN
F 3 "" H 3550 4100 50  0000 C CNN
	1    3550 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 59A2BDCE
P 3550 3900
F 0 "R14" V 3630 3900 50  0000 C CNN
F 1 "10k" V 3550 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 3900 50  0001 C CNN
F 3 "" H 3550 3900 50  0000 C CNN
	1    3550 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4100 3400 4100
Wire Wire Line
	1350 4550 1400 4550
Wire Wire Line
	1400 4550 1400 4600
Wire Wire Line
	4050 4800 4050 4500
$Comp
L Device:D D1
U 1 1 59A2BDDF
P 3550 4300
F 0 "D1" H 3550 4400 50  0000 C CNN
F 1 "1N4148" H 3550 4200 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 3550 4300 50  0001 C CNN
F 3 "" H 3550 4300 50  0000 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4300 3300 4300
Wire Wire Line
	3800 4300 3700 4300
Wire Wire Line
	3700 4100 3800 4100
Wire Wire Line
	3800 4100 3800 4300
Wire Wire Line
	4050 3750 4050 4100
Connection ~ 3800 4100
Wire Wire Line
	3700 3900 4250 3900
Wire Wire Line
	4250 3750 4250 3900
Text GLabel 4250 3750 1    60   Input ~ 0
xStby
Text GLabel 4050 3750 1    60   Input ~ 0
xMute
Connection ~ 4050 4100
Connection ~ 4250 3900
$Comp
L Device:R R6
U 1 1 59A2BDF5
P 2100 3950
F 0 "R6" V 2180 3950 50  0000 C CNN
F 1 "100k" V 2100 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0000 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR024
U 1 1 59A2BE00
P 2100 3700
F 0 "#PWR024" H 2100 3550 50  0001 C CNN
F 1 "VDD" H 2100 3850 50  0000 C CNN
F 2 "" H 2100 3700 50  0000 C CNN
F 3 "" H 2100 3700 50  0000 C CNN
	1    2100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3700 2100 3800
$Comp
L power:VDD #PWR026
U 1 1 59A2BE13
P 1700 4050
F 0 "#PWR026" H 1700 3900 50  0001 C CNN
F 1 "VDD" H 1700 4200 50  0000 C CNN
F 2 "" H 1700 4050 50  0000 C CNN
F 3 "" H 1700 4050 50  0000 C CNN
	1    1700 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 59A2BE19
P 1700 4200
F 0 "R4" V 1780 4200 50  0000 C CNN
F 1 "47k" V 1700 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1630 4200 50  0001 C CNN
F 3 "" H 1700 4200 50  0000 C CNN
	1    1700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4350 1700 4450
Wire Wire Line
	1350 4450 1700 4450
$Comp
L Device:R R5
U 1 1 59A2BE23
P 1700 4750
F 0 "R5" V 1780 4750 50  0000 C CNN
F 1 "47k" V 1700 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1630 4750 50  0001 C CNN
F 3 "" H 1700 4750 50  0000 C CNN
	1    1700 4750
	1    0    0    -1  
$EndComp
Connection ~ 1700 4450
Wire Wire Line
	2100 4900 2100 4650
Text Notes 750  3250 0    60   ~ 0
Is=36V/47k=0.8mA
Wire Wire Line
	2100 4100 2100 4150
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 59A2E1D8
P 2000 4450
F 0 "Q1" H 2200 4500 50  0000 L CNN
F 1 "BC846" H 2200 4400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2200 4550 50  0001 C CNN
F 3 "" H 2000 4450 50  0001 C CNN
	1    2000 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 59A2E65A
P 2400 4150
F 0 "Q2" H 2600 4200 50  0000 L CNN
F 1 "BC846" H 2600 4100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2600 4250 50  0001 C CNN
F 3 "" H 2400 4150 50  0001 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4150 2100 4150
Connection ~ 2100 4150
$Comp
L Device:R R11
U 1 1 59A2E8F6
P 2500 3800
F 0 "R11" V 2580 3800 50  0000 C CNN
F 1 "68k" V 2500 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2430 3800 50  0001 C CNN
F 3 "" H 2500 3800 50  0000 C CNN
	1    2500 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 59A2E9AB
P 2500 3400
F 0 "R7" V 2580 3400 50  0000 C CNN
F 1 "30k" V 2500 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2430 3400 50  0001 C CNN
F 3 "" H 2500 3400 50  0000 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR029
U 1 1 59A2EA57
P 2500 3250
F 0 "#PWR029" H 2500 3100 50  0001 C CNN
F 1 "VDD" H 2500 3400 50  0000 C CNN
F 2 "" H 2500 3250 50  0000 C CNN
F 3 "" H 2500 3250 50  0000 C CNN
	1    2500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3550 2500 3600
Wire Wire Line
	2500 4900 2500 4350
$Comp
L Device:Q_PNP_BEC Q3
U 1 1 59A2F73B
P 2800 3600
F 0 "Q3" H 3000 3650 50  0000 L CNN
F 1 "BC856" H 3000 3550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3000 3700 50  0001 C CNN
F 3 "" H 2800 3600 50  0001 C CNN
	1    2800 3600
	1    0    0    1   
$EndComp
$Comp
L power:VDD #PWR030
U 1 1 59A2F815
P 2900 3250
F 0 "#PWR030" H 2900 3100 50  0001 C CNN
F 1 "VDD" H 2900 3400 50  0000 C CNN
F 2 "" H 2900 3250 50  0000 C CNN
F 3 "" H 2900 3250 50  0000 C CNN
	1    2900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3400 2900 3250
Wire Wire Line
	2600 3600 2500 3600
Connection ~ 2500 3600
$Comp
L Device:R R12
U 1 1 59A308B9
P 3100 3900
F 0 "R12" V 3180 3900 50  0000 C CNN
F 1 "20k" V 3100 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 3900 50  0001 C CNN
F 3 "" H 3100 3900 50  0000 C CNN
	1    3100 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3900 3300 4100
Connection ~ 3300 4100
Connection ~ 3300 3900
$Comp
L Device:Q_NPN_BEC Q4
U 1 1 59A31BB9
P 2800 4700
F 0 "Q4" H 3000 4750 50  0000 L CNN
F 1 "BC846" H 3000 4650 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3000 4800 50  0001 C CNN
F 3 "" H 2800 4700 50  0001 C CNN
	1    2800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4700 1850 4700
Wire Wire Line
	1850 4700 1850 4550
Wire Wire Line
	1850 4550 1700 4550
Connection ~ 1700 4550
Wire Wire Line
	2900 3800 2900 3900
Connection ~ 3300 4300
Wire Wire Line
	2900 4500 2900 4300
$Comp
L Device:R R13
U 1 1 59A34112
P 3300 4750
F 0 "R13" V 3380 4750 50  0000 C CNN
F 1 "*" V 3300 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 4750 50  0001 C CNN
F 3 "" H 3300 4750 50  0000 C CNN
	1    3300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1800 1500 1800
Wire Wire Line
	1500 1800 1500 1700
Wire Wire Line
	1400 1900 1600 1900
Wire Wire Line
	2900 3900 2950 3900
Wire Wire Line
	3250 3900 3300 3900
$Comp
L power:PWR_FLAG #FLG033
U 1 1 59A3A029
P 1200 1100
F 0 "#FLG033" H 1200 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1250 50  0000 C CNN
F 2 "" H 1200 1100 50  0001 C CNN
F 3 "" H 1200 1100 50  0001 C CNN
	1    1200 1100
	-1   0    0    1   
$EndComp
$Comp
L power:VSS #PWR034
U 1 1 59A3A172
P 1200 1100
F 0 "#PWR034" H 1200 950 50  0001 C CNN
F 1 "VSS" H 1200 1250 50  0000 C CNN
F 2 "" H 1200 1100 50  0000 C CNN
F 3 "" H 1200 1100 50  0000 C CNN
	1    1200 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR035
U 1 1 59A3A1FB
P 1550 1100
F 0 "#PWR035" H 1550 950 50  0001 C CNN
F 1 "VDD" H 1550 1250 50  0000 C CNN
F 2 "" H 1550 1100 50  0000 C CNN
F 3 "" H 1550 1100 50  0000 C CNN
	1    1550 1100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG036
U 1 1 59A3A3E0
P 1550 1100
F 0 "#FLG036" H 1550 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 1250 50  0000 C CNN
F 2 "" H 1550 1100 50  0001 C CNN
F 3 "" H 1550 1100 50  0001 C CNN
	1    1550 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 1400 7450 1400
Wire Wire Line
	7400 2200 7450 2200
Wire Wire Line
	2350 2050 2350 2100
Wire Wire Line
	2350 1150 2350 1200
Wire Wire Line
	6600 2000 6650 2000
Wire Wire Line
	6600 1600 6650 1600
Wire Wire Line
	8000 1400 8000 1800
Wire Wire Line
	8000 1800 8250 1800
Wire Wire Line
	7100 2300 7150 2300
Wire Wire Line
	1500 2100 1500 2200
Wire Wire Line
	7400 3450 7450 3450
Wire Wire Line
	7400 4250 7450 4250
Wire Wire Line
	6600 4050 6650 4050
Wire Wire Line
	6600 3650 6650 3650
Wire Wire Line
	8000 3450 8000 3850
Wire Wire Line
	7100 4350 7150 4350
Wire Wire Line
	4150 4800 4250 4800
Wire Wire Line
	3800 4100 4050 4100
Wire Wire Line
	4050 4100 4050 4200
Wire Wire Line
	4250 3900 4250 4200
Wire Wire Line
	1700 4450 1700 4550
Wire Wire Line
	1700 4450 1800 4450
Wire Wire Line
	2100 4150 2100 4250
Wire Wire Line
	2500 3600 2500 3650
Wire Wire Line
	3300 4100 3300 4300
Wire Wire Line
	3300 3900 3400 3900
Wire Wire Line
	1700 4550 1700 4600
Wire Wire Line
	3300 4300 3400 4300
Wire Wire Line
	3300 4300 3300 4600
$Comp
L Device:C C12
U 1 1 5D386F4B
P 2800 1350
F 0 "C12" H 2825 1450 50  0000 L CNN
F 1 "220n" H 2825 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2838 1200 50  0001 C CNN
F 3 "" H 2800 1350 50  0000 C CNN
	1    2800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5D386FC5
P 2800 1850
F 0 "C13" H 2825 1950 50  0000 L CNN
F 1 "220n" H 2825 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2838 1700 50  0001 C CNN
F 3 "" H 2800 1850 50  0000 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1500 2050 1600
Wire Wire Line
	2350 1500 2350 1600
Wire Wire Line
	2000 1600 2050 1600
Connection ~ 2050 1600
Wire Wire Line
	2050 1600 2050 1700
Wire Wire Line
	2050 1600 2350 1600
Connection ~ 2350 1600
Wire Wire Line
	2350 1600 2350 1700
$Comp
L power:VDD #PWR0101
U 1 1 5D3B8BB8
P 2800 1100
F 0 "#PWR0101" H 2800 950 50  0001 C CNN
F 1 "VDD" H 2800 1250 50  0000 C CNN
F 2 "" H 2800 1100 50  0000 C CNN
F 3 "" H 2800 1100 50  0000 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0102
U 1 1 5D3B8C1B
P 2800 2100
F 0 "#PWR0102" H 2800 1950 50  0001 C CNN
F 1 "VSS" H 2800 2250 50  0000 C CNN
F 2 "" H 2800 2100 50  0000 C CNN
F 3 "" H 2800 2100 50  0000 C CNN
	1    2800 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2100 2800 2050
Wire Wire Line
	2800 2050 3100 2050
Wire Wire Line
	3100 2050 3100 2000
Connection ~ 2800 2050
Wire Wire Line
	2800 2050 2800 2000
Wire Wire Line
	2800 1100 2800 1150
Wire Wire Line
	2800 1150 3100 1150
Wire Wire Line
	3100 1150 3100 1200
Connection ~ 2800 1150
Wire Wire Line
	2800 1150 2800 1200
Wire Wire Line
	2800 1500 2800 1600
Wire Wire Line
	3100 1500 3100 1600
Wire Wire Line
	3150 1600 3100 1600
Connection ~ 3100 1600
Wire Wire Line
	3100 1600 3100 1700
Wire Wire Line
	2800 1600 3100 1600
Connection ~ 2800 1600
Wire Wire Line
	2800 1600 2800 1700
$Comp
L Device:L L1
U 1 1 5D3F1514
P 8400 1800
F 0 "L1" V 8590 1800 50  0000 C CNN
F 1 "L" V 8499 1800 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P12.70mm_Horizontal_Fastron_SMCC" H 8400 1800 50  0001 C CNN
F 3 "~" H 8400 1800 50  0001 C CNN
	1    8400 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 5D3F17A0
P 6100 2450
F 0 "#PWR0103" H 6100 2200 50  0001 C CNN
F 1 "GNDA" H 6105 2277 50  0000 C CNN
F 2 "" H 6100 2450 50  0001 C CNN
F 3 "" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0104
U 1 1 5D3F1A34
P 6600 2650
F 0 "#PWR0104" H 6600 2400 50  0001 C CNN
F 1 "GNDA" H 6605 2477 50  0000 C CNN
F 2 "" H 6600 2650 50  0001 C CNN
F 3 "" H 6600 2650 50  0001 C CNN
	1    6600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5D3F1BA7
P 6350 2200
F 0 "C17" H 6375 2300 50  0000 L CNN
F 1 "1u" H 6375 2100 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 6388 2050 50  0001 C CNN
F 3 "" H 6350 2200 50  0000 C CNN
	1    6350 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 2200 6600 2200
Connection ~ 6600 2200
Wire Wire Line
	6600 2200 6600 2250
Wire Wire Line
	6200 2200 6150 2200
Wire Wire Line
	6150 2200 6150 2000
Wire Wire Line
	6150 2000 6200 2000
Wire Wire Line
	8650 1800 8550 1800
Wire Wire Line
	6000 2200 6150 2200
Connection ~ 6150 2200
$Comp
L power:GNDA #PWR0105
U 1 1 5D45A836
P 5850 1600
F 0 "#PWR0105" H 5850 1350 50  0001 C CNN
F 1 "GNDA" V 5855 1473 50  0000 R CNN
F 2 "" H 5850 1600 50  0001 C CNN
F 3 "" H 5850 1600 50  0001 C CNN
	1    5850 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C18
U 1 1 5D46BBCD
P 6350 4250
F 0 "C18" H 6375 4350 50  0000 L CNN
F 1 "1u" H 6375 4150 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 6388 4100 50  0001 C CNN
F 3 "" H 6350 4250 50  0000 C CNN
	1    6350 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4050 6150 4050
Wire Wire Line
	6150 4050 6150 4250
Wire Wire Line
	6150 4250 6200 4250
Wire Wire Line
	6150 4250 6000 4250
Connection ~ 6150 4250
Wire Wire Line
	6000 4350 6100 4350
Wire Wire Line
	6100 4350 6100 4550
Wire Wire Line
	6500 4250 6600 4250
Connection ~ 6600 4250
Wire Wire Line
	6600 4250 6600 4300
$Comp
L power:GNDA #PWR0106
U 1 1 5D4AD85C
P 5850 3650
F 0 "#PWR0106" H 5850 3400 50  0001 C CNN
F 1 "GNDA" V 5855 3523 50  0000 R CNN
F 2 "" H 5850 3650 50  0001 C CNN
F 3 "" H 5850 3650 50  0001 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0107
U 1 1 5D4AD8C5
P 6100 4550
F 0 "#PWR0107" H 6100 4300 50  0001 C CNN
F 1 "GNDA" H 6105 4377 50  0000 C CNN
F 2 "" H 6100 4550 50  0001 C CNN
F 3 "" H 6100 4550 50  0001 C CNN
	1    6100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0108
U 1 1 5D4AD92E
P 6600 4700
F 0 "#PWR0108" H 6600 4450 50  0001 C CNN
F 1 "GNDA" H 6605 4527 50  0000 C CNN
F 2 "" H 6600 4700 50  0001 C CNN
F 3 "" H 6600 4700 50  0001 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0109
U 1 1 5D4AE086
P 7100 4400
F 0 "#PWR0109" H 7100 4150 50  0001 C CNN
F 1 "GNDA" H 7105 4227 50  0000 C CNN
F 2 "" H 7100 4400 50  0001 C CNN
F 3 "" H 7100 4400 50  0001 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0110
U 1 1 5D4AE0EF
P 7100 2350
F 0 "#PWR0110" H 7100 2100 50  0001 C CNN
F 1 "GNDA" H 7105 2177 50  0000 C CNN
F 2 "" H 7100 2350 50  0001 C CNN
F 3 "" H 7100 2350 50  0001 C CNN
	1    7100 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0111
U 1 1 5D4AE539
P 4150 4900
F 0 "#PWR0111" H 4150 4650 50  0001 C CNN
F 1 "GNDA" H 4155 4727 50  0000 C CNN
F 2 "" H 4150 4900 50  0001 C CNN
F 3 "" H 4150 4900 50  0001 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0112
U 1 1 5D4AE5A2
P 3300 4900
F 0 "#PWR0112" H 3300 4650 50  0001 C CNN
F 1 "GNDA" H 3305 4727 50  0000 C CNN
F 2 "" H 3300 4900 50  0001 C CNN
F 3 "" H 3300 4900 50  0001 C CNN
	1    3300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0113
U 1 1 5D4AE60B
P 2900 4900
F 0 "#PWR0113" H 2900 4650 50  0001 C CNN
F 1 "GNDA" H 2905 4727 50  0000 C CNN
F 2 "" H 2900 4900 50  0001 C CNN
F 3 "" H 2900 4900 50  0001 C CNN
	1    2900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0114
U 1 1 5D4AE674
P 2500 4900
F 0 "#PWR0114" H 2500 4650 50  0001 C CNN
F 1 "GNDA" H 2505 4727 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0115
U 1 1 5D4AE6DD
P 2100 4900
F 0 "#PWR0115" H 2100 4650 50  0001 C CNN
F 1 "GNDA" H 2105 4727 50  0000 C CNN
F 2 "" H 2100 4900 50  0001 C CNN
F 3 "" H 2100 4900 50  0001 C CNN
	1    2100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0116
U 1 1 5D4AE746
P 1700 4900
F 0 "#PWR0116" H 1700 4650 50  0001 C CNN
F 1 "GNDA" H 1705 4727 50  0000 C CNN
F 2 "" H 1700 4900 50  0001 C CNN
F 3 "" H 1700 4900 50  0001 C CNN
	1    1700 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5D4B749D
P 4350 2300
F 0 "#PWR0117" H 4350 2050 50  0001 C CNN
F 1 "GND" H 4350 2150 50  0000 C CNN
F 2 "" H 4350 2300 50  0000 C CNN
F 3 "" H 4350 2300 50  0000 C CNN
	1    4350 2300
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0118
U 1 1 5D4B7506
P 4750 2300
F 0 "#PWR0118" H 4750 2050 50  0001 C CNN
F 1 "GNDA" V 4755 2172 50  0000 R CNN
F 2 "" H 4750 2300 50  0001 C CNN
F 3 "" H 4750 2300 50  0001 C CNN
	1    4750 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5D4B7689
P 4550 2300
F 0 "R16" V 4630 2300 50  0000 C CNN
F 1 "47" V 4550 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4480 2300 50  0001 C CNN
F 3 "" H 4550 2300 50  0000 C CNN
	1    4550 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2300 4400 2300
Wire Wire Line
	4700 2300 4750 2300
$Comp
L Device:L L2
U 1 1 5D4D1CAF
P 8400 3850
F 0 "L2" V 8590 3850 50  0000 C CNN
F 1 "L" V 8499 3850 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P12.70mm_Horizontal_Fastron_SMCC" H 8400 3850 50  0001 C CNN
F 3 "~" H 8400 3850 50  0001 C CNN
	1    8400 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 3850 8000 3850
Connection ~ 8000 3850
Wire Wire Line
	8550 3850 8650 3850
$Comp
L power:GNDA #PWR0119
U 1 1 5D4E434E
P 1400 4600
F 0 "#PWR0119" H 1400 4350 50  0001 C CNN
F 1 "GNDA" H 1405 4427 50  0000 C CNN
F 2 "" H 1400 4600 50  0001 C CNN
F 3 "" H 1400 4600 50  0001 C CNN
	1    1400 4600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
