EESchema Schematic File Version 4
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
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5C41DB19
P 2700 3050
F 0 "U?" H 2700 1464 50  0000 C CNN
F 1 "ATmega328P-AU" H 2700 1373 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2700 3050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
Text GLabel 2600 1250 0    50   Input ~ 0
+5V
Text GLabel 2300 4650 0    50   Input ~ 0
GND
Wire Wire Line
	2300 4650 2700 4650
Wire Wire Line
	2700 4650 2700 4550
Wire Wire Line
	2700 1550 2700 1450
Wire Wire Line
	2700 1450 2750 1450
Wire Wire Line
	2800 1450 2800 1550
Wire Wire Line
	2600 1250 2750 1250
Wire Wire Line
	2750 1250 2750 1450
Connection ~ 2750 1450
Wire Wire Line
	2750 1450 2800 1450
$Comp
L Transistor_FET:IRF3205 Q?
U 1 1 5C41DD77
P 3250 5800
F 0 "Q?" H 3456 5846 50  0000 L CNN
F 1 "IRF3205" H 3456 5755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3500 5725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 3250 5800 50  0001 L CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Text GLabel 3400 5450 2    50   Input ~ 0
servos_GND
Text GLabel 3450 6150 2    50   Input ~ 0
GND
Text GLabel 2950 5800 0    50   Input ~ 0
servos_ON
Wire Wire Line
	3350 5600 3350 5450
Wire Wire Line
	3350 5450 3400 5450
Wire Wire Line
	3450 6150 3350 6150
Wire Wire Line
	3350 6150 3350 6000
Wire Wire Line
	3050 5800 2950 5800
$EndSCHEMATC
