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
LIBS:special
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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "19 jan 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P-P IC1
U 1 1 569D74A7
P 4800 4050
F 0 "IC1" H 4050 5300 40  0000 L BNN
F 1 "ATMEGA328P-P" H 5200 2650 40  0000 L BNN
F 2 "DIL28" H 4800 4050 30  0000 C CIN
F 3 "~" H 4800 4050 60  0000 C CNN
	1    4800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2500 3850 2950
Wire Wire Line
	3850 2950 3900 2950
Wire Wire Line
	7250 2500 7250 3000
$Comp
L AVR-ISP-6 CON1
U 1 1 569D7977
P 6750 3100
F 0 "CON1" H 6670 3340 50  0000 C CNN
F 1 "AVR-ISP-6" H 6510 2870 50  0000 L BNN
F 2 "AVR-ISP-6" V 6230 3140 50  0001 C CNN
F 3 "~" H 6750 3100 60  0000 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3000 6900 3000
Wire Wire Line
	6600 3000 6150 3000
Wire Wire Line
	6150 3000 6150 3350
Wire Wire Line
	6150 3350 5800 3350
Wire Wire Line
	6600 3100 6250 3100
Wire Wire Line
	6250 3100 6250 3450
Wire Wire Line
	6250 3450 5800 3450
Wire Wire Line
	6600 3200 6350 3200
Wire Wire Line
	6350 3200 6350 4400
Wire Wire Line
	6350 4400 5800 4400
Wire Wire Line
	5800 3250 6050 3250
Wire Wire Line
	6050 3250 6050 2800
Wire Wire Line
	6050 2800 7350 2800
Wire Wire Line
	7350 2800 7350 3100
Wire Wire Line
	7350 3100 6900 3100
Wire Wire Line
	3900 5250 3800 5250
Wire Wire Line
	6900 3200 7250 3200
Wire Wire Line
	7250 5500 7250 3200
Wire Wire Line
	3500 5500 7250 5500
Wire Wire Line
	3800 5500 3800 5250
Text GLabel 3500 2500 0    60   Input ~ 0
VCC Power Rail
Wire Wire Line
	3500 2500 7250 2500
Connection ~ 3850 2500
Text GLabel 3500 5500 0    60   Input ~ 0
GND Power Rail
Connection ~ 3800 5500
$EndSCHEMATC
