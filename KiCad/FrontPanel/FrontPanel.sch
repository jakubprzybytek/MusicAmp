EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:sparkfun
LIBS:FrontPanel-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Front Panel"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ROTARY-ENCODER ROT?
U 1 1 57FE8D93
P 5850 1900
F 0 "ROT?" H 5760 2150 60  0000 C CNN
F 1 "ROTARY-ENCODER" H 5850 1620 60  0000 C CNN
F 2 "" H 5850 1900 60  0000 C CNN
F 3 "" H 5850 1900 60  0000 C CNN
	1    5850 1900
	1    0    0    -1  
$EndComp
$Comp
L ROTARY-ENCODER ROT?
U 1 1 57FE9D69
P 5850 2650
F 0 "ROT?" H 5760 2900 60  0000 C CNN
F 1 "ROTARY-ENCODER" H 5850 2370 60  0000 C CNN
F 2 "" H 5850 2650 60  0000 C CNN
F 3 "" H 5850 2650 60  0000 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
$Comp
L ATTINY44-S IC?
U 1 1 57FE9E29
P 2850 1900
F 0 "IC?" H 2000 2650 50  0000 C CNN
F 1 "ATTINY44-S" H 3550 1150 50  0000 C CNN
F 2 "SO14" H 2850 1700 50  0000 C CIN
F 3 "" H 2850 1900 50  0000 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEA06D
P 1700 2600
F 0 "#PWR?" H 1700 2350 50  0001 C CNN
F 1 "GND" H 1700 2450 50  0000 C CNN
F 2 "" H 1700 2600 50  0000 C CNN
F 3 "" H 1700 2600 50  0000 C CNN
	1    1700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2600 1700 2500
Wire Wire Line
	1700 2500 1800 2500
$Comp
L +3.3V #PWR?
U 1 1 57FEA0E4
P 1700 1200
F 0 "#PWR?" H 1700 1050 50  0001 C CNN
F 1 "+3.3V" H 1700 1340 50  0000 C CNN
F 2 "" H 1700 1200 50  0000 C CNN
F 3 "" H 1700 1200 50  0000 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1200 1700 1300
Wire Wire Line
	1700 1300 1800 1300
$Comp
L +3.3V #PWR?
U 1 1 57FEA137
P 1000 1450
F 0 "#PWR?" H 1000 1300 50  0001 C CNN
F 1 "+3.3V" H 1000 1590 50  0000 C CNN
F 2 "" H 1000 1450 50  0000 C CNN
F 3 "" H 1000 1450 50  0000 C CNN
	1    1000 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEA14B
P 1000 1950
F 0 "#PWR?" H 1000 1700 50  0001 C CNN
F 1 "GND" H 1000 1800 50  0000 C CNN
F 2 "" H 1000 1950 50  0000 C CNN
F 3 "" H 1000 1950 50  0000 C CNN
	1    1000 1950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57FEA15E
P 1100 1700
F 0 "C?" H 1125 1800 50  0000 L CNN
F 1 "100n" H 1125 1600 50  0000 L CNN
F 2 "" H 1138 1550 50  0000 C CNN
F 3 "" H 1100 1700 50  0000 C CNN
	1    1100 1700
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 57FEA187
P 850 1700
F 0 "C?" H 875 1800 50  0000 L CNN
F 1 "100u" H 875 1600 50  0000 L CNN
F 2 "" H 888 1550 50  0000 C CNN
F 3 "" H 850 1700 50  0000 C CNN
	1    850  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1550 850  1500
Wire Wire Line
	850  1500 1000 1500
Wire Wire Line
	1000 1500 1100 1500
Wire Wire Line
	1100 1500 1100 1550
Wire Wire Line
	1000 1450 1000 1500
Connection ~ 1000 1500
Wire Wire Line
	850  1850 850  1900
Wire Wire Line
	850  1900 1000 1900
Wire Wire Line
	1000 1900 1100 1900
Wire Wire Line
	1100 1900 1100 1850
Wire Wire Line
	1000 1950 1000 1900
Connection ~ 1000 1900
$Comp
L R R?
U 1 1 57FEA37B
P 4000 2750
F 0 "R?" V 4080 2750 50  0000 C CNN
F 1 "R" V 4000 2750 50  0000 C CNN
F 2 "" V 3930 2750 50  0000 C CNN
F 3 "" H 4000 2750 50  0000 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 57FEA3E8
P 4000 2900
F 0 "#PWR?" H 4000 2750 50  0001 C CNN
F 1 "+3.3V" H 4000 3040 50  0000 C CNN
F 2 "" H 4000 2900 50  0000 C CNN
F 3 "" H 4000 2900 50  0000 C CNN
	1    4000 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 2500 4000 2500
Wire Wire Line
	4000 2500 4000 2600
$Comp
L ATXMEGA32E5-A IC?
U 1 1 57FEA68D
P 3500 4950
F 0 "IC?" H 2350 6000 50  0000 L BNN
F 1 "ATXMEGA32E5-A" H 4150 3850 50  0000 L BNN
F 2 "TQFP32" H 3500 4950 50  0000 C CIN
F 3 "" H 3500 4950 50  0000 C CNN
	1    3500 4950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57FEAA7A
P 3050 3550
F 0 "C?" H 3075 3650 50  0000 L CNN
F 1 "100n" H 3075 3450 50  0000 L CNN
F 2 "" H 3088 3400 50  0000 C CNN
F 3 "" H 3050 3550 50  0000 C CNN
	1    3050 3550
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 57FEAA9F
P 2800 3550
F 0 "C?" H 2825 3650 50  0000 L CNN
F 1 "10u" H 2825 3450 50  0000 L CNN
F 2 "" H 2838 3400 50  0000 C CNN
F 3 "" H 2800 3550 50  0000 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
$Comp
L L_Small L?
U 1 1 57FEAAFF
P 2800 3200
F 0 "L?" H 2830 3240 50  0000 L CNN
F 1 "10u" H 2830 3160 50  0000 L CNN
F 2 "" H 2800 3200 50  0000 C CNN
F 3 "" H 2800 3200 50  0000 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEABE5
P 2800 3700
F 0 "#PWR?" H 2800 3450 50  0001 C CNN
F 1 "GND" H 2800 3550 50  0000 C CNN
F 2 "" H 2800 3700 50  0000 C CNN
F 3 "" H 2800 3700 50  0000 C CNN
	1    2800 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEAC1E
P 3050 3700
F 0 "#PWR?" H 3050 3450 50  0001 C CNN
F 1 "GND" H 3050 3550 50  0000 C CNN
F 2 "" H 3050 3700 50  0000 C CNN
F 3 "" H 3050 3700 50  0000 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3800 3250 3350
Wire Wire Line
	2800 3350 3050 3350
Wire Wire Line
	3050 3350 3250 3350
Wire Wire Line
	3250 3350 3400 3350
Wire Wire Line
	2800 3300 2800 3350
Wire Wire Line
	2800 3350 2800 3400
Wire Wire Line
	3050 3400 3050 3350
Connection ~ 3050 3350
$Comp
L +3.3V #PWR?
U 1 1 57FEAD68
P 2800 3100
F 0 "#PWR?" H 2800 2950 50  0001 C CNN
F 1 "+3.3V" H 2800 3240 50  0000 C CNN
F 2 "" H 2800 3100 50  0000 C CNN
F 3 "" H 2800 3100 50  0000 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
Connection ~ 2800 3350
$Comp
L L_Small L?
U 1 1 57FEAEE9
P 3500 3350
F 0 "L?" H 3530 3390 50  0000 L CNN
F 1 "L_Small" H 3530 3310 50  0000 L CNN
F 2 "" H 3500 3350 50  0000 C CNN
F 3 "" H 3500 3350 50  0000 C CNN
	1    3500 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 3800 3750 3350
Wire Wire Line
	3600 3350 3750 3350
Wire Wire Line
	3750 3350 3900 3350
Wire Wire Line
	3900 3350 4150 3350
Connection ~ 3250 3350
$Comp
L C C?
U 1 1 57FEAFBA
P 3900 3550
F 0 "C?" H 3925 3650 50  0000 L CNN
F 1 "100n" H 3925 3450 50  0000 L CNN
F 2 "" H 3938 3400 50  0000 C CNN
F 3 "" H 3900 3550 50  0000 C CNN
	1    3900 3550
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 57FEB000
P 4150 3550
F 0 "C?" H 4175 3650 50  0000 L CNN
F 1 "10u" H 4175 3450 50  0000 L CNN
F 2 "" H 4188 3400 50  0000 C CNN
F 3 "" H 4150 3550 50  0000 C CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEB045
P 3900 3700
F 0 "#PWR?" H 3900 3450 50  0001 C CNN
F 1 "GND" H 3900 3550 50  0000 C CNN
F 2 "" H 3900 3700 50  0000 C CNN
F 3 "" H 3900 3700 50  0000 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEB077
P 4150 3700
F 0 "#PWR?" H 4150 3450 50  0001 C CNN
F 1 "GND" H 4150 3550 50  0000 C CNN
F 2 "" H 4150 3700 50  0000 C CNN
F 3 "" H 4150 3700 50  0000 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3350 4150 3400
Connection ~ 3750 3350
Wire Wire Line
	3900 3350 3900 3400
Connection ~ 3900 3350
$Comp
L GND #PWR?
U 1 1 57FEB32C
P 3450 6100
F 0 "#PWR?" H 3450 5850 50  0001 C CNN
F 1 "GND" H 3450 5950 50  0000 C CNN
F 2 "" H 3450 6100 50  0000 C CNN
F 3 "" H 3450 6100 50  0000 C CNN
	1    3450 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57FEB462
P 3550 6100
F 0 "#PWR?" H 3550 5850 50  0001 C CNN
F 1 "GND" H 3550 5950 50  0000 C CNN
F 2 "" H 3550 6100 50  0000 C CNN
F 3 "" H 3550 6100 50  0000 C CNN
	1    3550 6100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57FEB76C
P 2050 3900
F 0 "R?" V 2130 3900 50  0000 C CNN
F 1 "10k" V 2050 3900 50  0000 C CNN
F 2 "" V 1980 3900 50  0000 C CNN
F 3 "" H 2050 3900 50  0000 C CNN
	1    2050 3900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 57FEB993
P 2050 3750
F 0 "#PWR?" H 2050 3600 50  0001 C CNN
F 1 "+3.3V" H 2050 3890 50  0000 C CNN
F 2 "" H 2050 3750 50  0000 C CNN
F 3 "" H 2050 3750 50  0000 C CNN
	1    2050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4050 2050 4150
Wire Wire Line
	1750 4150 2050 4150
Wire Wire Line
	2050 4150 2150 4150
Text GLabel 1750 4150 0    60   Input ~ 0
PDI_Clk
Text GLabel 1750 4250 0    60   Input ~ 0
PDI_Data
Wire Wire Line
	1750 4250 2150 4250
Connection ~ 2050 4150
$EndSCHEMATC
