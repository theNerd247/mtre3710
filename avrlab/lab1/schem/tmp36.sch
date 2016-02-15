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
LIBS:tmp36
EELAYER 25 0
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
L ATMEGA328-P IC1
U 1 1 56B6883C
P 5250 3800
F 0 "IC1" H 4500 5050 50  0000 L BNN
F 1 "ATMEGA328-P" H 5650 2400 50  0000 L BNN
F 2 "DIL28" H 5250 3800 50  0000 C CIN
F 3 "" H 5250 3800 50  0000 C CNN
	1    5250 3800
	1    0    0    -1  
$EndComp
Text GLabel 3650 2000 0    60   Input ~ 0
VCC_RAIL
Text GLabel 3750 5500 0    60   Input ~ 0
GND_RAIL
$Comp
L R R2
U 1 1 56B6941A
P 4100 3600
F 0 "R2" V 4180 3600 50  0000 C CNN
F 1 "R" V 4100 3600 50  0000 C CNN
F 2 "" V 4030 3600 50  0000 C CNN
F 3 "" H 4100 3600 50  0000 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56B694E3
P 4100 3050
F 0 "R1" V 4180 3050 50  0000 C CNN
F 1 "R" V 4100 3050 50  0000 C CNN
F 2 "" V 4030 3050 50  0000 C CNN
F 3 "" H 4100 3050 50  0000 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L TMP36 U1
U 1 1 56C0FFF2
P 7650 3100
F 0 "U1" H 7650 3550 60  0000 C CNN
F 1 "TMP36" H 7650 3000 60  0000 C CNN
F 2 "" H 7650 3000 60  0000 C CNN
F 3 "" H 7650 3000 60  0000 C CNN
	1    7650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3550 6900 3550
Wire Wire Line
	6900 3550 6900 2900
Wire Wire Line
	6900 2900 7600 2900
Wire Wire Line
	7000 3000 7600 3000
Wire Wire Line
	7000 3000 7000 2000
Wire Wire Line
	7000 2000 3650 2000
Wire Wire Line
	4100 2900 4100 2000
Connection ~ 4100 2000
Wire Wire Line
	4100 3200 4100 3450
Wire Wire Line
	3750 5500 4100 5500
Wire Wire Line
	4000 5500 7300 5500
Wire Wire Line
	7300 5500 7300 2800
Wire Wire Line
	4100 5500 4100 3750
Connection ~ 4100 5500
Wire Wire Line
	4350 3300 4100 3300
Connection ~ 4100 3300
Wire Wire Line
	7300 2800 7600 2800
$EndSCHEMATC
