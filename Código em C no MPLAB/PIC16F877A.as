opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_LCD_Cursor
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_WriteString
	FNCALL	_main,_PWM_DutyCycle1
	FNCALL	_main,_PWM_DutyCycle2
	FNCALL	_main,_PWM_Init
	FNCALL	_main,_TIMER0_Init
	FNCALL	_main,_TIMER0_Set
	FNCALL	_main,_USART_Init
	FNCALL	_main,_USART_WriteString
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,__doprnt
	FNCALL	__doprnt,___lwdiv
	FNCALL	__doprnt,___lwmod
	FNCALL	__doprnt,___wmul
	FNCALL	__doprnt,_isdigit
	FNCALL	__doprnt,_putch
	FNCALL	_USART_WriteString,_USART_WriteChar
	FNCALL	_USART_Init,___aldiv
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,___ftadd
	FNCALL	_ISR,___ftdiv
	FNCALL	_ISR,___ftge
	FNCALL	_ISR,___ftmul
	FNCALL	_ISR,___ftneg
	FNCALL	_ISR,___fttol
	FNCALL	_ISR,___lwtoft
	FNCALL	_ISR,_trapezoidal
	FNCALL	_ISR,i1_PWM_DutyCycle2
	FNCALL	_ISR,i1_TIMER0_Set
	FNCALL	_trapezoidal,___ftadd
	FNCALL	_trapezoidal,___ftdiv
	FNCALL	_trapezoidal,___ftge
	FNCALL	_trapezoidal,___ftneg
	FNCALL	_trapezoidal,_printf
	FNCALL	_printf,i1__doprnt
	FNCALL	i1__doprnt,i1___lwdiv
	FNCALL	i1__doprnt,i1___lwmod
	FNCALL	i1__doprnt,i1___wmul
	FNCALL	i1__doprnt,i1_isdigit
	FNCALL	i1__doprnt,i1_putch
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_requiredRpm
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	32

;initializer for _requiredRpm
	retlw	0x40
	retlw	0x9c
	retlw	0x45

	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_temp_lida
	global	_ADCResult
	global	_contador_rb6
	global	_status
	global	_tempo_rb6
	global	_p1
	global	_p2
	global	_p3
	global	_contagens_tm0
	global	_pulsos
	global	_rpm
	global	_display
	global	_TMR1
_TMR1	set	0xE
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCP1CONbits
_CCP1CONbits	set	0x17
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCP2CONbits
_CCP2CONbits	set	0x1D
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PIR2bits
_PIR2bits	set	0xD
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_PORTE
_PORTE	set	0x9
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCONbits
_SSPCONbits	set	0x14
	global	_T1CON
_T1CON	set	0x10
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_OERR
_OERR	set	0xC1
	global	_ADCON1bits
_ADCON1bits	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PIE2bits
_PIE2bits	set	0x8D
	global	_PR2
_PR2	set	0x92
	global	_SPBRG
_SPBRG	set	0x99
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPCON2bits
_SSPCON2bits	set	0x91
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE
_TRISE	set	0x89
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_EEADR
_EEADR	set	0x10D
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EECON1bits
_EECON1bits	set	0x18C
	global	_EECON2
_EECON2	set	0x18D
	global __stringdata
__stringdata:
	
STR_11:	
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	70	;'F'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	65	;'A'
	retlw	10
	retlw	13
	retlw	0
psect	strings
	
STR_7:	
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	98	;'b'
	retlw	112	;'p'
	retlw	115	;'s'
	retlw	10
	retlw	13
	retlw	0
psect	strings
	
STR_8:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_9:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	52	;'4'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_2:	
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_3:	
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_4:	
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_5:	
	retlw	53	;'5'
	retlw	0
psect	strings
STR_10	equ	STR_6+26
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"PIC16F877A.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_temp_lida:
       ds      3

_ADCResult:
       ds      2

_contador_rb6:
       ds      2

_status:
       ds      2

_tempo_rb6:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_p1:
       ds      3

_p2:
       ds      3

_p3:
       ds      3

_contagens_tm0:
       ds      2

_pulsos:
       ds      2

_rpm:
       ds      2

_display:
       ds      10

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	32
_requiredRpm:
       ds      3

	file	"PIC16F877A.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Bh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+019h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	ds	1
??_TIMER0_Set:	; 0 bytes @ 0x1
?_PWM_DutyCycle2:	; 0 bytes @ 0x1
??_TIMER0_Init:	; 0 bytes @ 0x1
??_ADC_Init:	; 0 bytes @ 0x1
??_PWM_Init:	; 0 bytes @ 0x1
?_LCD_Cursor:	; 0 bytes @ 0x1
?_PWM_DutyCycle1:	; 0 bytes @ 0x1
??_isdigit:	; 0 bytes @ 0x1
?_putch:	; 0 bytes @ 0x1
??_USART_WriteChar:	; 0 bytes @ 0x1
??_LCD_WriteCmd:	; 0 bytes @ 0x1
??_LCD_WriteData:	; 0 bytes @ 0x1
	global	?___wmul
?___wmul:	; 2 bytes @ 0x1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x1
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x1
	global	USART_WriteChar@byte
USART_WriteChar@byte:	; 1 bytes @ 0x1
	global	TIMER0_Set@contagens
TIMER0_Set@contagens:	; 1 bytes @ 0x1
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x1
	global	_isdigit$1415
_isdigit$1415:	; 1 bytes @ 0x1
	global	putch@c
putch@c:	; 1 bytes @ 0x1
	global	PWM_DutyCycle1@valor
PWM_DutyCycle1@valor:	; 2 bytes @ 0x1
	global	PWM_DutyCycle2@valor
PWM_DutyCycle2@valor:	; 2 bytes @ 0x1
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x1
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x1
	ds	1
?_USART_WriteString:	; 0 bytes @ 0x2
??_LCD_Cursor:	; 0 bytes @ 0x2
??_putch:	; 0 bytes @ 0x2
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x2
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x2
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x2
	global	USART_WriteString@str
USART_WriteString@str:	; 2 bytes @ 0x2
	ds	1
??_PWM_DutyCycle2:	; 0 bytes @ 0x3
??_LCD_Init:	; 0 bytes @ 0x3
??_LCD_WriteString:	; 0 bytes @ 0x3
??_PWM_DutyCycle1:	; 0 bytes @ 0x3
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x3
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	ds	1
??_USART_WriteString:	; 0 bytes @ 0x4
	global	LCD_WriteString@Str
LCD_WriteString@Str:	; 1 bytes @ 0x4
	ds	1
??___wmul:	; 0 bytes @ 0x5
??___lwdiv:	; 0 bytes @ 0x5
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x5
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??___aldiv:	; 0 bytes @ 0x9
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x9
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x9
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xB
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xB
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xC
	ds	1
??___lwmod:	; 0 bytes @ 0xD
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xE
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0xF
	global	__doprnt@pb
__doprnt@pb:	; 2 bytes @ 0xF
	ds	1
?_USART_Init:	; 0 bytes @ 0x10
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0x10
	ds	1
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x11
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 2 bytes @ 0x12
	ds	2
??_USART_Init:	; 0 bytes @ 0x14
??__doprnt:	; 0 bytes @ 0x14
	ds	3
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x17
	ds	1
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0x18
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 1 bytes @ 0x1C
	ds	1
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0x1D
	ds	2
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x1F
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x20
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x20
	ds	3
??_sprintf:	; 0 bytes @ 0x23
	ds	1
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x24
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x25
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x26
	ds	2
??_main:	; 0 bytes @ 0x28
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_ISR$1737
_ISR$1737:	; 3 bytes @ 0x0
	ds	3
	global	_ISR$1739
_ISR$1739:	; 3 bytes @ 0x3
	ds	3
	global	_ISR$1740
_ISR$1740:	; 3 bytes @ 0x6
	ds	3
	global	_ISR$1741
_ISR$1741:	; 3 bytes @ 0x9
	ds	3
	global	_ISR$1734
_ISR$1734:	; 3 bytes @ 0xC
	ds	3
	global	_ISR$1735
_ISR$1735:	; 3 bytes @ 0xF
	ds	3
	global	_ISR$1738
_ISR$1738:	; 3 bytes @ 0x12
	ds	3
	global	_ISR$1733
_ISR$1733:	; 3 bytes @ 0x15
	ds	3
	global	_ISR$1736
_ISR$1736:	; 3 bytes @ 0x18
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_TIMER0_Set:	; 0 bytes @ 0x0
?_TIMER0_Init:	; 0 bytes @ 0x0
?_ADC_Init:	; 0 bytes @ 0x0
?_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_LCD_WriteString:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USART_WriteChar:	; 0 bytes @ 0x0
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?i1_TIMER0_Set:	; 0 bytes @ 0x0
??i1_TIMER0_Set:	; 0 bytes @ 0x0
?i1_isdigit:	; 1 bit 
??i1_isdigit:	; 0 bytes @ 0x0
?i1_putch:	; 0 bytes @ 0x0
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	?i1___wmul
?i1___wmul:	; 2 bytes @ 0x0
	global	?i1___lwdiv
?i1___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	i1TIMER0_Set@contagens
i1TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	i1_isdigit$1415
i1_isdigit$1415:	; 1 bytes @ 0x0
	global	i1putch@c
i1putch@c:	; 1 bytes @ 0x0
	global	i1___wmul@multiplier
i1___wmul@multiplier:	; 2 bytes @ 0x0
	global	i1___lwdiv@divisor
i1___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	1
??i1_putch:	; 0 bytes @ 0x1
	global	i1isdigit@c
i1isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	i1___wmul@multiplicand
i1___wmul@multiplicand:	; 2 bytes @ 0x2
	global	i1___lwdiv@dividend
i1___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??i1___wmul:	; 0 bytes @ 0x4
??i1___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	i1___wmul@product
i1___wmul@product:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	i1___lwdiv@quotient
i1___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	i1___lwdiv@counter
i1___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?i1___lwmod
?i1___lwmod:	; 2 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	i1___lwmod@divisor
i1___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	i1___lwmod@dividend
i1___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
??___ftneg:	; 0 bytes @ 0xC
??i1_PWM_DutyCycle2:	; 0 bytes @ 0xC
??i1___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	i1___lwmod@counter
i1___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??_trapezoidal:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?i1__doprnt
?i1__doprnt:	; 2 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	i1__doprnt@pb
i1__doprnt@pb:	; 2 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	2
	global	i1__doprnt@f
i1__doprnt@f:	; 1 bytes @ 0x2
	ds	1
	global	i1__doprnt@ap
i1__doprnt@ap:	; 2 bytes @ 0x3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	2
??i1__doprnt:	; 0 bytes @ 0x5
	ds	1
??___ftdiv:	; 0 bytes @ 0x6
	ds	2
	global	i1__doprnt@prec
i1__doprnt@prec:	; 1 bytes @ 0x8
	ds	1
	global	i1__doprnt@_val
i1__doprnt@_val:	; 4 bytes @ 0x9
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	2
	global	i1__doprnt@flag
i1__doprnt@flag:	; 1 bytes @ 0xD
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	global	i1__doprnt@width
i1__doprnt@width:	; 2 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	i1__doprnt@c
i1__doprnt@c:	; 1 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	ds	1
??_printf:	; 0 bytes @ 0x11
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x12
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x13
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	1
	global	printf@pb
printf@pb:	; 2 bytes @ 0x14
	ds	2
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x20
	global	?___fttol
?___fttol:	; 4 bytes @ 0x20
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x20
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x20
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x23
	ds	1
??___fttol:	; 0 bytes @ 0x24
	ds	2
??___ftadd:	; 0 bytes @ 0x26
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x28
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x29
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2C
	ds	1
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x2D
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x2D
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x2D
	ds	1
?i1_PWM_DutyCycle2:	; 0 bytes @ 0x2E
	global	i1PWM_DutyCycle2@valor
i1PWM_DutyCycle2@valor:	; 2 bytes @ 0x2E
	ds	2
	global	?_trapezoidal
?_trapezoidal:	; 3 bytes @ 0x30
	global	trapezoidal@x
trapezoidal@x:	; 3 bytes @ 0x30
	ds	3
	global	trapezoidal@a
trapezoidal@a:	; 3 bytes @ 0x33
	ds	3
	global	trapezoidal@b
trapezoidal@b:	; 3 bytes @ 0x36
	ds	3
	global	trapezoidal@c
trapezoidal@c:	; 3 bytes @ 0x39
	ds	3
	global	trapezoidal@d
trapezoidal@d:	; 3 bytes @ 0x3C
	ds	3
??_ISR:	; 0 bytes @ 0x3F
	ds	4
;!
;!Data Sizes:
;!    Strings     121
;!    Constant    10
;!    Data        3
;!    BSS         36
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     67      78
;!    BANK1            80     27      55
;!    BANK3            96     43      43
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_9(CODE[5]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK3[2]), ?_printf(COMMON[2]), 
;!
;!    sprintf@wh	PTR unsigned char  size(1) Largest target is 10
;!		 -> display(BANK1[10]), 
;!
;!    pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!		 -> putch(), Absolute function(), 
;!
;!    pb.ptr	PTR unsigned char  size(1) Largest target is 10
;!		 -> NULL(NULL[0]), display(BANK1[10]), 
;!
;!    printf@f	PTR const unsigned char  size(1) Largest target is 2
;!		 -> STR_5(CODE[2]), STR_4(CODE[2]), STR_3(CODE[2]), STR_2(CODE[2]), 
;!		 -> STR_1(CODE[2]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK3[2]), ?_printf(COMMON[2]), 
;!
;!    pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!		 -> i1_putch(), putch(), Absolute function(), 
;!
;!    pb.ptr	PTR unsigned char  size(1) Largest target is 10
;!		 -> NULL(NULL[0]), display(BANK1[10]), 
;!
;!    _doprnt@ap	PTR PTR void  size(2) Largest target is 2
;!		 -> sprintf@ap(BANK3[1]), printf@ap(BANK0[1]), 
;!
;!    _doprnt@f	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_9(CODE[5]), STR_5(CODE[2]), STR_4(CODE[2]), STR_3(CODE[2]), 
;!		 -> STR_2(CODE[2]), STR_1(CODE[2]), 
;!
;!    S1186__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!		 -> putch(), Absolute function(), 
;!
;!    _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!		 -> putch(), Absolute function(), 
;!
;!    S1186__prbuf$ptr	PTR unsigned char  size(1) Largest target is 10
;!		 -> NULL(NULL[0]), display(BANK1[10]), 
;!
;!    _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 10
;!		 -> NULL(NULL[0]), display(BANK1[10]), 
;!
;!    _doprnt@pb	PTR struct __prbuf size(2) Largest target is 3
;!		 -> sprintf@pb(BANK3[2]), printf@pb(BANK0[2]), 
;!
;!    S1212$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(1) Largest target is 17
;!		 -> STR_8(CODE[17]), 
;!
;!    USART_WriteString@str	PTR const unsigned char  size(2) Largest target is 40
;!		 -> STR_11(CODE[40]), STR_10(CODE[3]), display(BANK1[10]), STR_7(CODE[20]), 
;!		 -> STR_6(CODE[29]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1_PWM_DutyCycle2
;!    i1__doprnt->i1___lwmod
;!    i1___lwmod->i1___lwdiv
;!    ___ftdiv->___lwtoft
;!    ___lwtoft->___ftpack
;!    ___fttol->___lwtoft
;!    ___ftmul->___lwtoft
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_trapezoidal
;!    i1_PWM_DutyCycle2->___fttol
;!    _trapezoidal->___ftneg
;!    _printf->i1__doprnt
;!    ___ftneg->___ftadd
;!    ___ftadd->___ftmul
;!    ___fttol->___ftmul
;!    ___ftmul->___ftdiv
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_sprintf
;!    _sprintf->__doprnt
;!    __doprnt->___lwmod
;!    ___lwmod->___lwdiv
;!    _USART_WriteString->_USART_WriteChar
;!    _USART_Init->___aldiv
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Init->_LCD_WriteCmd
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0   10016
;!                                             40 BANK3      3     3      0
;!                           _ADC_Init
;!                         _LCD_Cursor
;!                           _LCD_Init
;!                    _LCD_WriteString
;!                     _PWM_DutyCycle1
;!                     _PWM_DutyCycle2
;!                           _PWM_Init
;!                        _TIMER0_Init
;!                         _TIMER0_Set
;!                         _USART_Init
;!                  _USART_WriteString
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                              8     5      3    8063
;!                                             32 BANK3      8     5      3
;!                            __doprnt
;! ---------------------------------------------------------------------------------
;! (2) __doprnt                                             17    12      5    6421
;!                                             15 BANK3     17    12      5
;!                   Absolute function *
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;!                              _putch *
;! ---------------------------------------------------------------------------------
;! (3) _putch                                                1     0      1     324
;!                                              1 BANK3      1     0      1
;! ---------------------------------------------------------------------------------
;! (3) _isdigit                                              2     2      0      99
;!                                              1 BANK3      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     290
;!                                              1 BANK3      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     386
;!                                              9 BANK3      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     395
;!                                              1 BANK3      8     4      4
;! ---------------------------------------------------------------------------------
;! (8) Absolute function(Fake)                               1     0      1       0
;!                                              1 BANK3      1     0      1
;! ---------------------------------------------------------------------------------
;! (1) _USART_WriteString                                    2     0      2     481
;!                                              2 BANK3      2     0      2
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (2) _USART_WriteChar                                      1     1      0      31
;!                                              1 BANK3      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                           8     4      4     707
;!                                             16 BANK3      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     599
;!                                              1 BANK3     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Set                                           1     1      0      31
;!                                              1 BANK3      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle2                                       4     2      2     265
;!                                              1 BANK3      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle1                                       4     2      2     139
;!                                              1 BANK3      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _LCD_WriteString                                      2     2      0     129
;!                                              3 BANK3      2     2      0
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteData                                        2     2      0      31
;!                                              1 BANK3      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      31
;!                                              3 BANK3      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      31
;!                                              1 BANK3      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Cursor                                           3     2      1     170
;!                                              1 BANK3      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                 52    52      0   44850
;!                                             63 BANK0      4     4      0
;!                                              0 BANK1     27    27      0
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lwtoft
;!                        _trapezoidal
;!                   i1_PWM_DutyCycle2
;!                       i1_TIMER0_Set
;! ---------------------------------------------------------------------------------
;! (5) i1_TIMER0_Set                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) i1_PWM_DutyCycle2                                     4     2      2     122
;!                                             12 COMMON     2     2      0
;!                                             46 BANK0      2     0      2
;!                            ___ftmul (ARG)
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _trapezoidal                                         15     0     15   22789
;!                                             48 BANK0     15     0     15
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul (ARG)
;!                            ___ftneg
;!                           ___lwtoft (ARG)
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (6) _printf                                               5     5      0    6906
;!                                             17 BANK0      5     5      0
;!                          i1__doprnt
;! ---------------------------------------------------------------------------------
;! (7) i1__doprnt                                           17    12      5    5396
;!                                              0 BANK0     17    12      5
;!                   Absolute function *
;!                          i1___lwdiv
;!                          i1___lwmod
;!                           i1___wmul
;!                          i1_isdigit
;!                            i1_putch *
;! ---------------------------------------------------------------------------------
;! (8) i1_putch                                              1     0      1     156
;!                                              0 COMMON     1     0      1
;! ---------------------------------------------------------------------------------
;! (8) i1_isdigit                                            2     2      0      68
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (8) i1___wmul                                             6     2      4     144
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (8) i1___lwmod                                            6     2      4     211
;!                                              8 COMMON     6     2      4
;!                          i1___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (8) i1___lwdiv                                            8     4      4     214
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (8) Absolute function(Fake)                               1     0      1       0
;!                                              1 BANK3      1     0      1
;! ---------------------------------------------------------------------------------
;! (6) ___ftneg                                              3     0      3    1069
;!                                             45 BANK0      3     0      3
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftge                                              12     6      6    2184
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             16    10      6    2968
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftadd                                             13     7      6    6062
;!                                             32 BANK0     13     7      6
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___lwtoft                                             4     1      3    2326
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             14    10      4     508
;!                                             32 BANK0     14    10      4
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftmul                                             16    10      6    3910
;!                                             16 BANK0     16    10      6
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (7) ___ftpack                                             8     3      5    2048
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!   _LCD_Cursor
;!   _LCD_Init
;!     _LCD_WriteCmd
;!   _LCD_WriteString
;!     _LCD_WriteData
;!   _PWM_DutyCycle1
;!   _PWM_DutyCycle2
;!   _PWM_Init
;!   _TIMER0_Init
;!   _TIMER0_Set
;!   _USART_Init
;!     ___aldiv
;!   _USART_WriteString
;!     _USART_WriteChar
;!   _sprintf
;!     __doprnt
;!       Absolute function(Fake) *
;!       ___lwdiv *
;!       ___lwmod *
;!         ___lwdiv (ARG)
;!       ___wmul *
;!       _isdigit *
;!       _putch *
;!
;! _ISR (ROOT)
;!   ___ftadd
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!   ___ftdiv
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftge
;!   ___ftmul
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftneg
;!     ___ftadd (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!   ___fttol
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___lwtoft
;!     ___ftpack
;!   _trapezoidal
;!     ___ftadd
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!     ___ftdiv
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftge
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg (ARG)
;!       ___ftadd (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _printf (ARG)
;!       i1__doprnt
;!         Absolute function(Fake) *
;!         i1___lwdiv *
;!         i1___lwmod *
;!           i1___lwdiv (ARG)
;!         i1___wmul *
;!         i1_isdigit *
;!         i1_putch *
;!   i1_PWM_DutyCycle2
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!   i1_TIMER0_Set
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     2B      2B       9       44.8%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     1B      37       7       68.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     43      4E       5       97.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      BE      12        0.0%
;!ABS                  0      0      BE       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 178 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       3       0
;;      Totals:         0       0       0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_ADC_Init
;;		_LCD_Cursor
;;		_LCD_Init
;;		_LCD_WriteString
;;		_PWM_DutyCycle1
;;		_PWM_DutyCycle2
;;		_PWM_Init
;;		_TIMER0_Init
;;		_TIMER0_Set
;;		_USART_Init
;;		_USART_WriteString
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	178
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	178
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	180
	
l5473:	
;main.c: 180: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	181
;main.c: 181: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	182
	
l5475:	
;main.c: 182: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	183
	
l5477:	
;main.c: 183: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	184
;main.c: 184: TRISC = 0b10000001;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	185
;main.c: 185: PORTC = 0b11000000;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	186
	
l5479:	
;main.c: 186: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	187
	
l5481:	
;main.c: 187: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	188
	
l5483:	
;main.c: 188: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	189
	
l5485:	
;main.c: 189: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	192
;main.c: 192: T1CON = 0x03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	193
	
l5487:	
;main.c: 193: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	194
	
l5489:	
;main.c: 194: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	197
	
l5491:	
;main.c: 197: USART_Init(115200);
	movlw	0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_Init@BaudRate+3)^0180h
	movlw	01h
	movwf	(USART_Init@BaudRate+2)^0180h
	movlw	0C2h
	movwf	(USART_Init@BaudRate+1)^0180h
	movlw	0
	movwf	(USART_Init@BaudRate)^0180h

	fcall	_USART_Init
	line	198
;main.c: 198: TIMER0_Init();
	fcall	_TIMER0_Init
	line	199
;main.c: 199: ADC_Init();
	fcall	_ADC_Init
	line	200
	
l5493:	
;main.c: 200: PWM_Init();
	fcall	_PWM_Init
	line	201
	
l5495:	
;main.c: 201: LCD_Init();
	fcall	_LCD_Init
	line	204
	
l5497:	
;main.c: 204: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	205
	
l5499:	
;main.c: 205: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	208
	
l5501:	
;main.c: 208: USART_WriteString("Inicializando o PIC16F877A\n\r");
	movlw	low((STR_6)-__stringbase)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_WriteString@str)^0180h
	movlw	80h
	movwf	(USART_WriteString@str+1)^0180h
	fcall	_USART_WriteString
	line	209
	
l5503:	
;main.c: 209: USART_WriteString("USART: 115.200bps\n\r");
	movlw	low((STR_7)-__stringbase)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_WriteString@str)^0180h
	movlw	80h
	movwf	(USART_WriteString@str+1)^0180h
	fcall	_USART_WriteString
	line	212
	
l5505:	
;main.c: 212: LCD_Init();
	fcall	_LCD_Init
	line	213
	
l5507:	
;main.c: 213: LCD_Cursor(0,0);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(LCD_Cursor@Col)^0180h
	movlw	(0)
	fcall	_LCD_Cursor
	line	214
	
l5509:	
;main.c: 214: LCD_WriteString("Inicializando...");
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_LCD_WriteString
	line	217
	
l5511:	
;main.c: 217: PWM_DutyCycle1(0);
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(PWM_DutyCycle1@valor)^0180h
	movlw	high(0)
	movwf	((PWM_DutyCycle1@valor)^0180h)+1
	fcall	_PWM_DutyCycle1
	line	218
	
l5513:	
;main.c: 218: PWM_DutyCycle2(1023);
	movlw	low(03FFh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(PWM_DutyCycle2@valor)^0180h
	movlw	high(03FFh)
	movwf	((PWM_DutyCycle2@valor)^0180h)+1
	fcall	_PWM_DutyCycle2
	line	221
	
l5515:	
;main.c: 221: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	_TIMER0_Set
	line	224
	
l5517:	
;main.c: 224: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	97
movwf	((??_main+0)^0180h+0+1),f
	movlw	110
movwf	((??_main+0)^0180h+0),f
u7177:
	decfsz	((??_main+0)^0180h+0),f
	goto	u7177
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u7177
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u7177
	nop
opt asmopt_on

	goto	l5519
	line	227
;main.c: 227: while(1)
	
l118:	
	line	230
	
l5519:	
;main.c: 228: {
;main.c: 230: sprintf(display,"%04d", rpm);
	movlw	((STR_9)-__stringbase)&0ffh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_main+0)^0180h+0
	movf	(??_main+0)^0180h+0,w
	movwf	(sprintf@f)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	1+(?_sprintf)^0180h+01h
	addwf	1+(?_sprintf)^0180h+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	0+(?_sprintf)^0180h+01h
	addwf	0+(?_sprintf)^0180h+01h

	movlw	(_display)&0ffh
	fcall	_sprintf
	line	233
	
l5521:	
;main.c: 233: USART_WriteString(display);
	movlw	(_display&0ffh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_WriteString@str)^0180h
	movlw	(0x0)
	movwf	(USART_WriteString@str+1)^0180h
	fcall	_USART_WriteString
	line	234
	
l5523:	
;main.c: 234: USART_WriteString("\n\r");
	movlw	low((STR_10)-__stringbase)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_WriteString@str)^0180h
	movlw	80h
	movwf	(USART_WriteString@str+1)^0180h
	fcall	_USART_WriteString
	line	243
	
l5525:	
;main.c: 243: _delay((unsigned long)((200)*(18432000/4000.0)));
	opt asmopt_off
movlw  5
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	173
movwf	((??_main+0)^0180h+0+1),f
	movlw	224
movwf	((??_main+0)^0180h+0),f
u7187:
	decfsz	((??_main+0)^0180h+0),f
	goto	u7187
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u7187
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u7187
opt asmopt_on

	goto	l5519
	line	244
	
l119:	
	line	227
	goto	l5519
	
l120:	
	line	245
	
l121:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> display(10), 
;;  f               1   32[BANK3 ] PTR const unsigned char 
;;		 -> STR_9(5), 
;; Auto vars:     Size  Location     Type
;;  wh              1   36[BANK3 ] PTR unsigned char 
;;		 -> display(10), 
;;  pb              2   38[BANK3 ] struct __prbuf
;;  ap              1   37[BANK3 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   32[BANK3 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       3       0
;;      Locals:         0       0       0       4       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sprintf.c"
	line	13
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sprintf.c"
	line	13
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 0
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@wh)^0180h
	line	31
	
l5379:	
	movf	(sprintf@wh)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@pb)^0180h
	line	32
	
l5381:	
	clrf	(0+sprintf@pb+01h)^0180h
	line	33
	
l5383:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@ap)^0180h
	line	34
	
l5385:	
	movlw	(sprintf@pb&0ffh)
	movwf	(__doprnt@pb)^0180h
	movlw	(0x1)
	movwf	(__doprnt@pb+1)^0180h
	movf	(sprintf@f)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(__doprnt@f)^0180h
	movlw	(sprintf@ap&0ffh)
	movwf	(__doprnt@ap)^0180h
	movlw	(0x1)
	movwf	(__doprnt@ap+1)^0180h
	fcall	__doprnt
	line	35
	
l5387:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@pb)^0180h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l899
	line	36
	
l5389:	
	line	38
;	Return value of _sprintf is never used
	
l899:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	__doprnt

;; *************** function __doprnt *****************
;; Defined at:
;;		line 458 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              2   15[BANK3 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   17[BANK3 ] PTR const unsigned char 
;;		 -> STR_9(5), STR_5(2), STR_4(2), STR_3(2), 
;;		 -> STR_2(2), STR_1(2), 
;;  ap              2   18[BANK3 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  _val            4   24[BANK3 ] struct .
;;  width           2   29[BANK3 ] int 
;;  c               1   31[BANK3 ] char 
;;  flag            1   28[BANK3 ] unsigned char 
;;  prec            1   23[BANK3 ] char 
;; Return value:  Size  Location     Type
;;                  2   15[BANK3 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       5       0
;;      Locals:         0       0       0       9       0
;;      Temps:          0       0       0       3       0
;;      Totals:         0       0       0      17       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Absolute function
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;;		_putch
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	458
global __ptext2
__ptext2:	;psect for function __doprnt
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	458
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	545
	
l5201:	
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 545: while(c = *f++) {
	goto	l5327
	
l389:	
	line	547
	
l5203:	
;doprnt.c: 547: if(c != '%')
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@c)^0180h,w
	xorlw	025h
	skipnz
	goto	u6761
	goto	u6760
u6761:
	goto	l5213
u6760:
	line	550
	
l5205:	
;doprnt.c: 549: {
;doprnt.c: 550: if(pb->func) (pb->func(c)); else ((*pb->ptr++ = c));
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+0)^0180h+0)
	movf	0+(??__doprnt+0)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+0)^0180h+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u6771
	goto	u6770
u6771:
	goto	l5209
u6770:
	
l5207:	
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(putch@c)^0180h
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+1)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+1)^0180h+0)
	movf	0+(??__doprnt+1)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+1)^0180h+0,0
	bcf	status,7
	movf	indf,w
	fcall	fptable
	goto	l5327
	
l391:	
	
l5209:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+0)^0180h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5211:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	(??__doprnt+0)^0180h+0,w
	addwf	indf,f
	goto	l5327
	
l392:	
	line	551
;doprnt.c: 551: continue;
	goto	l5327
	line	552
	
l390:	
	line	555
	
l5213:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(__doprnt@width)^0180h
	clrf	(__doprnt@width+1)^0180h
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(__doprnt@flag)^0180h
	goto	l5219
	line	559
;doprnt.c: 559: for(;;) {
	
l393:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l5219
	line	588
;doprnt.c: 588: case '0':
	
l395:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(__doprnt@flag)^0180h+(2/8),(2)&7
	line	590
	
l5215:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	addwf	(__doprnt@f)^0180h,f
	line	591
;doprnt.c: 591: continue;
	goto	l5219
	line	593
	
l5217:	
;doprnt.c: 593: }
	goto	l5221
	line	560
	
l394:	
	
l5219:	
	movf	(__doprnt@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l395
	goto	l5221
	opt asmopt_on

	line	593
	
l397:	
	line	594
;doprnt.c: 594: break;
	goto	l5221
	line	595
	
l396:	
;doprnt.c: 595: }
	goto	l5219
	
l398:	
	line	606
	
l5221:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(__doprnt@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u6781
	goto	u6780
u6781:
	goto	l5235
u6780:
	line	607
	
l5223:	
;doprnt.c: 607: width = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(__doprnt@width)^0180h
	clrf	(__doprnt@width+1)^0180h
	goto	l5225
	line	608
;doprnt.c: 608: do {
	
l400:	
	line	609
	
l5225:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(___wmul@multiplier)^0180h
	movlw	high(0Ah)
	movwf	((___wmul@multiplier)^0180h)+1
	movf	(__doprnt@width+1)^0180h,w
	clrf	(___wmul@multiplicand+1)^0180h
	addwf	(___wmul@multiplicand+1)^0180h
	movf	(__doprnt@width)^0180h,w
	clrf	(___wmul@multiplicand)^0180h
	addwf	(___wmul@multiplicand)^0180h

	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(1+(?___wmul))^0180h,w
	clrf	(__doprnt@width+1)^0180h
	addwf	(__doprnt@width+1)^0180h
	movf	(0+(?___wmul))^0180h,w
	clrf	(__doprnt@width)^0180h
	addwf	(__doprnt@width)^0180h

	line	610
	
l5227:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(__doprnt@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??__doprnt+0)^0180h+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??__doprnt+0)^0180h+0)+1
	movf	0+(??__doprnt+0)^0180h+0,w
	addwf	(__doprnt@width)^0180h,f
	skipnc
	incf	(__doprnt@width+1)^0180h,f
	movf	1+(??__doprnt+0)^0180h+0,w
	addwf	(__doprnt@width+1)^0180h,f
	
l5229:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	addwf	(__doprnt@f)^0180h,f
	line	611
	
l5231:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(__doprnt@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u6791
	goto	u6790
u6791:
	goto	l5225
u6790:
	goto	l5235
	
l401:	
	goto	l5235
	line	617
	
l399:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l5235
	line	646
;doprnt.c: 646: case 0:
	
l403:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l5329
	line	706
;doprnt.c: 706: case 'd':
	
l405:	
	goto	l5237
	line	707
	
l406:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l5237
	line	811
;doprnt.c: 811: default:
	
l408:	
	line	822
;doprnt.c: 822: continue;
	goto	l5327
	line	831
	
l5233:	
;doprnt.c: 831: }
	goto	l5237
	line	644
	
l402:	
	
l5235:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(__doprnt@f)^0180h,f
	movlw	-01h
	addwf	(__doprnt@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(__doprnt@c)^0180h
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5329
	xorlw	100^0	; case 100
	skipnz
	goto	l5237
	xorlw	105^100	; case 105
	skipnz
	goto	l5237
	goto	l5327
	opt asmopt_on

	line	831
	
l407:	
	line	1268
	
l5237:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@ap)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@ap+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	((??__doprnt+0)^0180h+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)^0180h+0),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(__doprnt@_val)^0180h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@_val+1)^0180h
	line	1270
	
l5239:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(__doprnt@_val+1)^0180h,7
	goto	u6801
	goto	u6800
u6801:
	goto	l5245
u6800:
	line	1271
	
l5241:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	iorwf	(__doprnt@flag)^0180h,f
	line	1272
	
l5243:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(__doprnt@_val)^0180h,f
	comf	(__doprnt@_val+1)^0180h,f
	incf	(__doprnt@_val)^0180h,f
	skipnz
	incf	(__doprnt@_val+1)^0180h,f
	goto	l5245
	line	1273
	
l409:	
	line	1314
	
l5245:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(__doprnt@c)^0180h
	incf	(__doprnt@c)^0180h,f
	movf	(__doprnt@c)^0180h,w
	xorlw	05h
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l5249
u6810:
	goto	l5257
	
l5247:	
	goto	l5257
	line	1315
	
l410:	
	
l5249:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	addwf	(??__doprnt+0)^0180h+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??__doprnt+1)^0180h+0
	fcall	stringdir
	movwf	(??__doprnt+1)^0180h+0+1
	movf	1+(??__doprnt+1)^0180h+0,w
	subwf	(__doprnt@_val+1)^0180h,w
	skipz
	goto	u6825
	movf	0+(??__doprnt+1)^0180h+0,w
	subwf	(__doprnt@_val)^0180h,w
u6825:
	skipnc
	goto	u6821
	goto	u6820
u6821:
	goto	l5253
u6820:
	goto	l5257
	line	1316
	
l5251:	
;doprnt.c: 1316: break;
	goto	l5257
	
l412:	
	line	1314
	
l5253:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	addwf	(__doprnt@c)^0180h,f
	
l5255:	
	movf	(__doprnt@c)^0180h,w
	xorlw	05h
	skipz
	goto	u6831
	goto	u6830
u6831:
	goto	l5249
u6830:
	goto	l5257
	
l411:	
	line	1354
	
l5257:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(__doprnt@width+1)^0180h,w
	iorwf	(__doprnt@width)^0180h,w
	skipnz
	goto	u6841
	goto	u6840
u6841:
	goto	l413
u6840:
	
l5259:	
	movf	(__doprnt@flag)^0180h,w
	andlw	03h
	btfsc	status,2
	goto	u6851
	goto	u6850
u6851:
	goto	l413
u6850:
	line	1355
	
l5261:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(__doprnt@width)^0180h,f
	skipnc
	incf	(__doprnt@width+1)^0180h,f
	movlw	high(-1)
	addwf	(__doprnt@width+1)^0180h,f
	
l413:	
	line	1390
;doprnt.c: 1390: if(width > c)
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	clrf	(??__doprnt+0)^0180h+0+1
	btfsc	(??__doprnt+0)^0180h+0,7
	decf	(??__doprnt+0)^0180h+0+1,f
	movf	1+(??__doprnt+0)^0180h+0,w
	xorlw	80h
	movwf	(??__doprnt+2)^0180h+0
	movf	(__doprnt@width+1)^0180h,w
	xorlw	80h
	subwf	(??__doprnt+2)^0180h+0,w
	skipz
	goto	u6865
	movf	(__doprnt@width)^0180h,w
	subwf	0+(??__doprnt+0)^0180h+0,w
u6865:

	skipnc
	goto	u6861
	goto	u6860
u6861:
	goto	l5265
u6860:
	line	1391
	
l5263:	
;doprnt.c: 1391: width -= c;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	clrf	(??__doprnt+0)^0180h+0+1
	btfsc	(??__doprnt+0)^0180h+0,7
	decf	(??__doprnt+0)^0180h+0+1,f
	movf	0+(??__doprnt+0)^0180h+0,w
	subwf	(__doprnt@width)^0180h,f
	movf	1+(??__doprnt+0)^0180h+0,w
	skipc
	decf	(__doprnt@width+1)^0180h,f
	subwf	(__doprnt@width+1)^0180h,f
	goto	l5267
	line	1392
	
l414:	
	line	1393
	
l5265:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(__doprnt@width)^0180h
	clrf	(__doprnt@width+1)^0180h
	goto	l5267
	
l415:	
	line	1396
	
l5267:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(__doprnt@flag)^0180h,(2)&7
	goto	u6871
	goto	u6870
u6871:
	goto	l5291
u6870:
	line	1401
	
l5269:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(__doprnt@flag)^0180h,w
	andlw	03h
	btfsc	status,2
	goto	u6881
	goto	u6880
u6881:
	goto	l5279
u6880:
	line	1402
	
l5271:	
;doprnt.c: 1402: if(pb->func) (pb->func('-')); else ((*pb->ptr++ = '-'));
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+0)^0180h+0)
	movf	0+(??__doprnt+0)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+0)^0180h+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u6891
	goto	u6890
u6891:
	goto	l5275
u6890:
	
l5273:	
	movlw	(02Dh)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(putch@c)^0180h
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+1)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+1)^0180h+0)
	movf	0+(??__doprnt+1)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+1)^0180h+0,0
	bcf	status,7
	movf	indf,w
	fcall	fptable
	goto	l5279
	
l418:	
	
l5275:	
	movlw	(02Dh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+0)^0180h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5277:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	(??__doprnt+0)^0180h+0,w
	addwf	indf,f
	goto	l5279
	
l419:	
	goto	l5279
	
l417:	
	line	1424
	
l5279:	
;doprnt.c: 1424: if(width)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@width+1)^0180h,w
	iorwf	(__doprnt@width)^0180h,w
	skipnz
	goto	u6901
	goto	u6900
u6901:
	goto	l5313
u6900:
	goto	l5281
	line	1425
;doprnt.c: 1425: do
	
l421:	
	line	1426
	
l5281:	
;doprnt.c: 1426: if(pb->func) (pb->func('0')); else ((*pb->ptr++ = '0'));
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+0)^0180h+0)
	movf	0+(??__doprnt+0)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+0)^0180h+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u6911
	goto	u6910
u6911:
	goto	l5285
u6910:
	
l5283:	
	movlw	(030h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(putch@c)^0180h
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+1)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+1)^0180h+0)
	movf	0+(??__doprnt+1)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+1)^0180h+0,0
	bcf	status,7
	movf	indf,w
	fcall	fptable
	goto	l5289
	
l422:	
	
l5285:	
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+0)^0180h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5287:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	(??__doprnt+0)^0180h+0,w
	addwf	indf,f
	goto	l5289
	
l423:	
	line	1427
	
l5289:	
;doprnt.c: 1427: while(--width);
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(__doprnt@width)^0180h,f
	skipnc
	incf	(__doprnt@width+1)^0180h,f
	movlw	high(-1)
	addwf	(__doprnt@width+1)^0180h,f
	movf	(((__doprnt@width+1)^0180h)),w
	iorwf	(((__doprnt@width)^0180h)),w
	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l5281
u6920:
	goto	l5313
	
l424:	
	goto	l5313
	
l420:	
	line	1429
;doprnt.c: 1429: } else
	goto	l5313
	
l416:	
	line	1437
	
l5291:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(__doprnt@width+1)^0180h,w
	iorwf	(__doprnt@width)^0180h,w
	skipnz
	goto	u6931
	goto	u6930
u6931:
	goto	l5303
u6930:
	goto	l5293
	line	1438
;doprnt.c: 1438: do
	
l427:	
	line	1439
	
l5293:	
;doprnt.c: 1439: if(pb->func) (pb->func(' ')); else ((*pb->ptr++ = ' '));
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+0)^0180h+0)
	movf	0+(??__doprnt+0)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+0)^0180h+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u6941
	goto	u6940
u6941:
	goto	l5297
u6940:
	
l5295:	
	movlw	(020h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(putch@c)^0180h
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+1)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+1)^0180h+0)
	movf	0+(??__doprnt+1)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+1)^0180h+0,0
	bcf	status,7
	movf	indf,w
	fcall	fptable
	goto	l5301
	
l428:	
	
l5297:	
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+0)^0180h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5299:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	(??__doprnt+0)^0180h+0,w
	addwf	indf,f
	goto	l5301
	
l429:	
	line	1440
	
l5301:	
;doprnt.c: 1440: while(--width);
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(__doprnt@width)^0180h,f
	skipnc
	incf	(__doprnt@width+1)^0180h,f
	movlw	high(-1)
	addwf	(__doprnt@width+1)^0180h,f
	movf	(((__doprnt@width+1)^0180h)),w
	iorwf	(((__doprnt@width)^0180h)),w
	skipz
	goto	u6951
	goto	u6950
u6951:
	goto	l5293
u6950:
	goto	l5303
	
l430:	
	goto	l5303
	
l426:	
	line	1447
	
l5303:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(__doprnt@flag)^0180h,w
	andlw	03h
	btfsc	status,2
	goto	u6961
	goto	u6960
u6961:
	goto	l5313
u6960:
	line	1448
	
l5305:	
;doprnt.c: 1448: if(pb->func) (pb->func('-')); else ((*pb->ptr++ = '-'));
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+0)^0180h+0)
	movf	0+(??__doprnt+0)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+0)^0180h+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u6971
	goto	u6970
u6971:
	goto	l5309
u6970:
	
l5307:	
	movlw	(02Dh)
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(putch@c)^0180h
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+1)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+1)^0180h+0)
	movf	0+(??__doprnt+1)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+1)^0180h+0,0
	bcf	status,7
	movf	indf,w
	fcall	fptable
	goto	l5313
	
l432:	
	
l5309:	
	movlw	(02Dh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+0)^0180h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5311:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	(??__doprnt+0)^0180h+0,w
	addwf	indf,f
	goto	l5313
	
l433:	
	goto	l5313
	
l431:	
	goto	l5313
	line	1478
	
l425:	
	line	1481
	
l5313:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(__doprnt@prec)^0180h
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l5325
	
l435:	
	line	1498
	
l5315:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)^0180h
	movlw	high(0Ah)
	movwf	((___lwmod@divisor)^0180h)+1
	movf	(__doprnt@prec)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	addwf	(??__doprnt+0)^0180h+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)^0180h
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)^0180h
	movf	(__doprnt@_val+1)^0180h,w
	clrf	(___lwdiv@dividend+1)^0180h
	addwf	(___lwdiv@dividend+1)^0180h
	movf	(__doprnt@_val)^0180h,w
	clrf	(___lwdiv@dividend)^0180h
	addwf	(___lwdiv@dividend)^0180h

	fcall	___lwdiv
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(1+(?___lwdiv))^0180h,w
	clrf	(___lwmod@dividend+1)^0180h
	addwf	(___lwmod@dividend+1)^0180h
	movf	(0+(?___lwdiv))^0180h,w
	clrf	(___lwmod@dividend)^0180h
	addwf	(___lwmod@dividend)^0180h

	fcall	___lwmod
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(0+(?___lwmod))^0180h,w
	addlw	030h
	movwf	(??__doprnt+1)^0180h+0
	movf	(??__doprnt+1)^0180h+0,w
	movwf	(__doprnt@c)^0180h
	line	1533
	
l5317:	
;doprnt.c: 1532: }
;doprnt.c: 1533: if(pb->func) (pb->func(c)); else ((*pb->ptr++ = c));
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+0)^0180h+0)
	movf	0+(??__doprnt+0)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+0)^0180h+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u6981
	goto	u6980
u6981:
	goto	l5321
u6980:
	
l5319:	
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(putch@c)^0180h
	movlw	(01h)
	addwf	(__doprnt@pb)^0180h,w
	movwf	(??__doprnt+1)^0180h+0
	movf	(__doprnt@pb+1)^0180h,w
	skipnc
	addlw	1
	movwf	1+((??__doprnt+1)^0180h+0)
	movf	0+(??__doprnt+1)^0180h+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??__doprnt+1)^0180h+0,0
	bcf	status,7
	movf	indf,w
	fcall	fptable
	goto	l5325
	
l436:	
	
l5321:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(__doprnt@c)^0180h,w
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??__doprnt+0)^0180h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5323:	
	movlw	(01h)
	movwf	(??__doprnt+0)^0180h+0
	movf	(__doprnt@pb)^0180h,w
	movwf	fsr0
	bsf	status,7
	btfss	(__doprnt@pb+1)^0180h,0
	bcf	status,7
	movf	(??__doprnt+0)^0180h+0,w
	addwf	indf,f
	goto	l5325
	
l437:	
	goto	l5325
	line	1534
	
l434:	
	line	1483
	
l5325:	
	movlw	(-1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	addwf	(__doprnt@prec)^0180h,f
	movf	((__doprnt@prec)^0180h),w
	xorlw	-1
	skipz
	goto	u6991
	goto	u6990
u6991:
	goto	l5315
u6990:
	goto	l5327
	
l438:	
	goto	l5327
	line	1542
	
l388:	
	line	545
	
l5327:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(__doprnt@f)^0180h,f
	movlw	-01h
	addwf	(__doprnt@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??__doprnt+0)^0180h+0
	movf	(??__doprnt+0)^0180h+0,w
	movwf	(__doprnt@c)^0180h
	movf	((__doprnt@c)^0180h),f
	skipz
	goto	u7001
	goto	u7000
u7001:
	goto	l5203
u7000:
	goto	l5329
	
l439:	
	goto	l5329
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l404:	
	line	1549
	
l5329:	
;doprnt.c: 1549: return 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(?__doprnt)^0180h
	clrf	(?__doprnt+1)^0180h
	goto	l440
	
l5331:	
	line	1550
	
l440:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
	signat	__doprnt,12410
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    1[BANK3 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       1       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1__doprnt
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\putch.c"
	line	7
global __ptext3
__ptext3:	;psect for function _putch
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\putch.c"
	line	7
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 0
; Regs used in _putch: []
	line	9
	
l892:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       2       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext4
__ptext4:	;psect for function _isdigit
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 0
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(isdigit@c)^0180h
	line	14
	
l3359:	
	clrf	(_isdigit$1415)^0180h
	
l3361:	
	movlw	(03Ah)
	subwf	(isdigit@c)^0180h,w
	skipnc
	goto	u4161
	goto	u4160
u4161:
	goto	l3367
u4160:
	
l3363:	
	movlw	(030h)
	subwf	(isdigit@c)^0180h,w
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l3367
u4170:
	
l3365:	
	clrf	(_isdigit$1415)^0180h
	incf	(_isdigit$1415)^0180h,f
	goto	l3367
	
l780:	
	
l3367:	
	rrf	(_isdigit$1415)^0180h,w
	
	goto	l781
	
l3369:	
	line	15
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    1[BANK3 ] unsigned int 
;;  multiplicand    2    3[BANK3 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    5[BANK3 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    1[BANK3 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0       2       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___wmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 0
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3371:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(___wmul@product)^0180h
	clrf	(___wmul@product+1)^0180h
	goto	l3373
	line	44
	
l523:	
	line	45
	
l3373:	
	btfss	(___wmul@multiplier)^0180h,(0)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l524
u4180:
	line	46
	
l3375:	
	movf	(___wmul@multiplicand)^0180h,w
	addwf	(___wmul@product)^0180h,f
	skipnc
	incf	(___wmul@product+1)^0180h,f
	movf	(___wmul@multiplicand+1)^0180h,w
	addwf	(___wmul@product+1)^0180h,f
	
l524:	
	line	47
	movlw	01h
	
u4195:
	clrc
	rlf	(___wmul@multiplicand)^0180h,f
	rlf	(___wmul@multiplicand+1)^0180h,f
	addlw	-1
	skipz
	goto	u4195
	line	48
	
l3377:	
	movlw	01h
	
u4205:
	clrc
	rrf	(___wmul@multiplier+1)^0180h,f
	rrf	(___wmul@multiplier)^0180h,f
	addlw	-1
	skipz
	goto	u4205
	line	49
	movf	((___wmul@multiplier+1)^0180h),w
	iorwf	((___wmul@multiplier)^0180h),w
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l3373
u4210:
	goto	l3379
	
l525:	
	line	52
	
l3379:	
	movf	(___wmul@product+1)^0180h,w
	clrf	(?___wmul+1)^0180h
	addwf	(?___wmul+1)^0180h
	movf	(___wmul@product)^0180h,w
	clrf	(?___wmul)^0180h
	addwf	(?___wmul)^0180h

	goto	l526
	
l3381:	
	line	53
	
l526:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    9[BANK3 ] unsigned int 
;;  dividend        2   11[BANK3 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   14[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[BANK3 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lwmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 0
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3409:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___lwmod@divisor+1)^0180h,w
	iorwf	(___lwmod@divisor)^0180h,w
	skipnz
	goto	u4291
	goto	u4290
u4291:
	goto	l3427
u4290:
	line	14
	
l3411:	
	clrf	(___lwmod@counter)^0180h
	incf	(___lwmod@counter)^0180h,f
	line	15
	goto	l3417
	
l870:	
	line	16
	
l3413:	
	movlw	01h
	
u4305:
	clrc
	rlf	(___lwmod@divisor)^0180h,f
	rlf	(___lwmod@divisor+1)^0180h,f
	addlw	-1
	skipz
	goto	u4305
	line	17
	
l3415:	
	movlw	(01h)
	movwf	(??___lwmod+0)^0180h+0
	movf	(??___lwmod+0)^0180h+0,w
	addwf	(___lwmod@counter)^0180h,f
	goto	l3417
	line	18
	
l869:	
	line	15
	
l3417:	
	btfss	(___lwmod@divisor+1)^0180h,(15)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l3413
u4310:
	goto	l3419
	
l871:	
	goto	l3419
	line	19
	
l872:	
	line	20
	
l3419:	
	movf	(___lwmod@divisor+1)^0180h,w
	subwf	(___lwmod@dividend+1)^0180h,w
	skipz
	goto	u4325
	movf	(___lwmod@divisor)^0180h,w
	subwf	(___lwmod@dividend)^0180h,w
u4325:
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l3423
u4320:
	line	21
	
l3421:	
	movf	(___lwmod@divisor)^0180h,w
	subwf	(___lwmod@dividend)^0180h,f
	movf	(___lwmod@divisor+1)^0180h,w
	skipc
	decf	(___lwmod@dividend+1)^0180h,f
	subwf	(___lwmod@dividend+1)^0180h,f
	goto	l3423
	
l873:	
	line	22
	
l3423:	
	movlw	01h
	
u4335:
	clrc
	rrf	(___lwmod@divisor+1)^0180h,f
	rrf	(___lwmod@divisor)^0180h,f
	addlw	-1
	skipz
	goto	u4335
	line	23
	
l3425:	
	movlw	low(01h)
	subwf	(___lwmod@counter)^0180h,f
	btfss	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l3419
u4340:
	goto	l3427
	
l874:	
	goto	l3427
	line	24
	
l868:	
	line	25
	
l3427:	
	movf	(___lwmod@dividend+1)^0180h,w
	clrf	(?___lwmod+1)^0180h
	addwf	(?___lwmod+1)^0180h
	movf	(___lwmod@dividend)^0180h,w
	clrf	(?___lwmod)^0180h
	addwf	(?___lwmod)^0180h

	goto	l875
	
l3429:	
	line	26
	
l875:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[BANK3 ] unsigned int 
;;  dividend        2    3[BANK3 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK3 ] unsigned int 
;;  counter         1    6[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[BANK3 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0       3       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwdiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 0
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l3383:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(___lwdiv@quotient)^0180h
	clrf	(___lwdiv@quotient+1)^0180h
	line	15
	
l3385:	
	movf	(___lwdiv@divisor+1)^0180h,w
	iorwf	(___lwdiv@divisor)^0180h,w
	skipnz
	goto	u4221
	goto	u4220
u4221:
	goto	l3405
u4220:
	line	16
	
l3387:	
	clrf	(___lwdiv@counter)^0180h
	incf	(___lwdiv@counter)^0180h,f
	line	17
	goto	l3393
	
l860:	
	line	18
	
l3389:	
	movlw	01h
	
u4235:
	clrc
	rlf	(___lwdiv@divisor)^0180h,f
	rlf	(___lwdiv@divisor+1)^0180h,f
	addlw	-1
	skipz
	goto	u4235
	line	19
	
l3391:	
	movlw	(01h)
	movwf	(??___lwdiv+0)^0180h+0
	movf	(??___lwdiv+0)^0180h+0,w
	addwf	(___lwdiv@counter)^0180h,f
	goto	l3393
	line	20
	
l859:	
	line	17
	
l3393:	
	btfss	(___lwdiv@divisor+1)^0180h,(15)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l3389
u4240:
	goto	l3395
	
l861:	
	goto	l3395
	line	21
	
l862:	
	line	22
	
l3395:	
	movlw	01h
	
u4255:
	clrc
	rlf	(___lwdiv@quotient)^0180h,f
	rlf	(___lwdiv@quotient+1)^0180h,f
	addlw	-1
	skipz
	goto	u4255
	line	23
	movf	(___lwdiv@divisor+1)^0180h,w
	subwf	(___lwdiv@dividend+1)^0180h,w
	skipz
	goto	u4265
	movf	(___lwdiv@divisor)^0180h,w
	subwf	(___lwdiv@dividend)^0180h,w
u4265:
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l3401
u4260:
	line	24
	
l3397:	
	movf	(___lwdiv@divisor)^0180h,w
	subwf	(___lwdiv@dividend)^0180h,f
	movf	(___lwdiv@divisor+1)^0180h,w
	skipc
	decf	(___lwdiv@dividend+1)^0180h,f
	subwf	(___lwdiv@dividend+1)^0180h,f
	line	25
	
l3399:	
	bsf	(___lwdiv@quotient)^0180h+(0/8),(0)&7
	goto	l3401
	line	26
	
l863:	
	line	27
	
l3401:	
	movlw	01h
	
u4275:
	clrc
	rrf	(___lwdiv@divisor+1)^0180h,f
	rrf	(___lwdiv@divisor)^0180h,f
	addlw	-1
	skipz
	goto	u4275
	line	28
	
l3403:	
	movlw	low(01h)
	subwf	(___lwdiv@counter)^0180h,f
	btfss	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l3395
u4280:
	goto	l3405
	
l864:	
	goto	l3405
	line	29
	
l858:	
	line	30
	
l3405:	
	movf	(___lwdiv@quotient+1)^0180h,w
	clrf	(?___lwdiv+1)^0180h
	addwf	(?___lwdiv+1)^0180h
	movf	(___lwdiv@quotient)^0180h,w
	clrf	(?___lwdiv)^0180h
	addwf	(?___lwdiv)^0180h

	goto	l865
	
l3407:	
	line	31
	
l865:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_USART_WriteString

;; *************** function _USART_WriteString *****************
;; Defined at:
;;		line 52 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK3 ] PTR const unsigned char 
;;		 -> STR_11(40), STR_10(3), display(10), STR_7(20), 
;;		 -> STR_6(29), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_USART_WriteChar
;; This function is called by:
;;		_main
;;		_USART_ReceiveChar
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
	line	52
global __ptext8
__ptext8:	;psect for function _USART_WriteString
psect	text8
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
	line	52
	global	__size_of_USART_WriteString
	__size_of_USART_WriteString	equ	__end_of_USART_WriteString-_USART_WriteString
	
_USART_WriteString:	
;incstack = 0
	opt	stack 1
; Regs used in _USART_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l3913:	
;usart.c: 54: while(*str != '\0')
	goto	l3919
	
l150:	
	line	56
	
l3915:	
;usart.c: 55: {
;usart.c: 56: USART_WriteChar(*str);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_WriteString@str+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_WriteString@str)^0180h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	fcall	_USART_WriteChar
	line	57
	
l3917:	
;usart.c: 57: str++;
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(USART_WriteString@str)^0180h,f
	skipnc
	incf	(USART_WriteString@str+1)^0180h,f
	goto	l3919
	line	58
	
l149:	
	line	54
	
l3919:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_WriteString@str+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_WriteString@str)^0180h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l3915
u5060:
	goto	l152
	
l151:	
	line	59
	
l152:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteString
	__end_of_USART_WriteString:
	signat	_USART_WriteString,4216
	global	_USART_WriteChar

;; *************** function _USART_WriteChar *****************
;; Defined at:
;;		line 44 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	44
global __ptext9
__ptext9:	;psect for function _USART_WriteChar
psect	text9
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
	line	44
	global	__size_of_USART_WriteChar
	__size_of_USART_WriteChar	equ	__end_of_USART_WriteChar-_USART_WriteChar
	
_USART_WriteChar:	
;incstack = 0
	opt	stack 1
; Regs used in _USART_WriteChar: [wreg]
;USART_WriteChar@byte stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_WriteChar@byte)^0180h
	line	46
	
l3573:	
;usart.c: 46: while(!PIR1bits.TXIF);
	goto	l143
	
l144:	
	
l143:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u4601
	goto	u4600
u4601:
	goto	l143
u4600:
	goto	l3575
	
l145:	
	line	47
	
l3575:	
;usart.c: 47: TXREG = byte;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_WriteChar@byte)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	48
	
l146:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteChar
	__end_of_USART_WriteChar:
	signat	_USART_WriteChar,4216
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4   16[BANK3 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       4       0
;;      Totals:         0       0       0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	6
global __ptext10
__ptext10:	;psect for function _USART_Init
psect	text10
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\usart.c"
	line	6
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l3817:	
;usart.c: 13: SPBRG = (unsigned char)(18432000 / (16 * BaudRate)) - 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_Init@BaudRate)^0180h,w
	movwf	(??_USART_Init+0)^0180h+0
	movf	(USART_Init@BaudRate+1)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+1)
	movf	(USART_Init@BaudRate+2)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+2)
	movf	(USART_Init@BaudRate+3)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+3)
	movlw	04h
u5055:
	clrc
	rlf	(??_USART_Init+0)^0180h+0,f
	rlf	(??_USART_Init+0)^0180h+1,f
	rlf	(??_USART_Init+0)^0180h+2,f
	rlf	(??_USART_Init+0)^0180h+3,f
u5050:
	addlw	-1
	skipz
	goto	u5055
	movf	3+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+3)^0180h
	movf	2+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+2)^0180h
	movf	1+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+1)^0180h
	movf	0+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor)^0180h

	movlw	01h
	movwf	(___aldiv@dividend+3)^0180h
	movlw	019h
	movwf	(___aldiv@dividend+2)^0180h
	movlw	040h
	movwf	(___aldiv@dividend+1)^0180h
	movlw	0
	movwf	(___aldiv@dividend)^0180h

	fcall	___aldiv
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(((0+(?___aldiv))^0180h)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l3819:	
;usart.c: 16: TXSTAbits.CSRC = 0;
	bcf	(152)^080h,7	;volatile
	line	17
	
l3821:	
;usart.c: 17: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	18
	
l3823:	
;usart.c: 18: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	19
	
l3825:	
;usart.c: 19: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	21
	
l3827:	
;usart.c: 21: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	22
	
l3829:	
;usart.c: 22: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	23
	
l3831:	
;usart.c: 23: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	26
	
l3833:	
;usart.c: 26: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	27
	
l3835:	
;usart.c: 27: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	28
	
l3837:	
;usart.c: 28: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	29
	
l3839:	
;usart.c: 29: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	30
	
l3841:	
;usart.c: 30: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	31
	
l3843:	
;usart.c: 31: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	32
	
l3845:	
;usart.c: 32: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	33
	
l3847:	
;usart.c: 33: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	36
	
l3849:	
;usart.c: 36: PIE1bits.TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,4	;volatile
	line	37
	
l3851:	
;usart.c: 37: PIR1bits.TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),4	;volatile
	line	38
	
l3853:	
;usart.c: 38: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	39
	
l3855:	
;usart.c: 39: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	40
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_USART_Init
	__end_of_USART_Init:
	signat	_USART_Init,4216
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    1[BANK3 ] long 
;;  dividend        4    5[BANK3 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   12[BANK3 ] long 
;;  sign            1   11[BANK3 ] unsigned char 
;;  counter         1   10[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    1[BANK3 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       8       0
;;      Locals:         0       0       0       6       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0      15       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___aldiv
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l3725:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(___aldiv@sign)^0180h
	line	15
	
l3727:	
	btfss	(___aldiv@divisor+3)^0180h,7
	goto	u4861
	goto	u4860
u4861:
	goto	l579
u4860:
	line	16
	
l3729:	
	comf	(___aldiv@divisor)^0180h,f
	comf	(___aldiv@divisor+1)^0180h,f
	comf	(___aldiv@divisor+2)^0180h,f
	comf	(___aldiv@divisor+3)^0180h,f
	incf	(___aldiv@divisor)^0180h,f
	skipnz
	incf	(___aldiv@divisor+1)^0180h,f
	skipnz
	incf	(___aldiv@divisor+2)^0180h,f
	skipnz
	incf	(___aldiv@divisor+3)^0180h,f
	line	17
	clrf	(___aldiv@sign)^0180h
	incf	(___aldiv@sign)^0180h,f
	line	18
	
l579:	
	line	19
	btfss	(___aldiv@dividend+3)^0180h,7
	goto	u4871
	goto	u4870
u4871:
	goto	l3735
u4870:
	line	20
	
l3731:	
	comf	(___aldiv@dividend)^0180h,f
	comf	(___aldiv@dividend+1)^0180h,f
	comf	(___aldiv@dividend+2)^0180h,f
	comf	(___aldiv@dividend+3)^0180h,f
	incf	(___aldiv@dividend)^0180h,f
	skipnz
	incf	(___aldiv@dividend+1)^0180h,f
	skipnz
	incf	(___aldiv@dividend+2)^0180h,f
	skipnz
	incf	(___aldiv@dividend+3)^0180h,f
	line	21
	
l3733:	
	movlw	(01h)
	movwf	(??___aldiv+0)^0180h+0
	movf	(??___aldiv+0)^0180h+0,w
	xorwf	(___aldiv@sign)^0180h,f
	goto	l3735
	line	22
	
l580:	
	line	23
	
l3735:	
	movlw	0
	movwf	(___aldiv@quotient+3)^0180h
	movlw	0
	movwf	(___aldiv@quotient+2)^0180h
	movlw	0
	movwf	(___aldiv@quotient+1)^0180h
	movlw	0
	movwf	(___aldiv@quotient)^0180h

	line	24
	
l3737:	
	movf	(___aldiv@divisor+3)^0180h,w
	iorwf	(___aldiv@divisor+2)^0180h,w
	iorwf	(___aldiv@divisor+1)^0180h,w
	iorwf	(___aldiv@divisor)^0180h,w
	skipnz
	goto	u4881
	goto	u4880
u4881:
	goto	l3757
u4880:
	line	25
	
l3739:	
	clrf	(___aldiv@counter)^0180h
	incf	(___aldiv@counter)^0180h,f
	line	26
	goto	l3743
	
l583:	
	line	27
	
l3741:	
	movlw	01h
	movwf	(??___aldiv+0)^0180h+0
u4895:
	clrc
	rlf	(___aldiv@divisor)^0180h,f
	rlf	(___aldiv@divisor+1)^0180h,f
	rlf	(___aldiv@divisor+2)^0180h,f
	rlf	(___aldiv@divisor+3)^0180h,f
	decfsz	(??___aldiv+0)^0180h+0
	goto	u4895
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)^0180h+0
	movf	(??___aldiv+0)^0180h+0,w
	addwf	(___aldiv@counter)^0180h,f
	goto	l3743
	line	29
	
l582:	
	line	26
	
l3743:	
	btfss	(___aldiv@divisor+3)^0180h,(31)&7
	goto	u4901
	goto	u4900
u4901:
	goto	l3741
u4900:
	goto	l3745
	
l584:	
	goto	l3745
	line	30
	
l585:	
	line	31
	
l3745:	
	movlw	01h
	movwf	(??___aldiv+0)^0180h+0
u4915:
	clrc
	rlf	(___aldiv@quotient)^0180h,f
	rlf	(___aldiv@quotient+1)^0180h,f
	rlf	(___aldiv@quotient+2)^0180h,f
	rlf	(___aldiv@quotient+3)^0180h,f
	decfsz	(??___aldiv+0)^0180h+0
	goto	u4915
	line	32
	
l3747:	
	movf	(___aldiv@divisor+3)^0180h,w
	subwf	(___aldiv@dividend+3)^0180h,w
	skipz
	goto	u4925
	movf	(___aldiv@divisor+2)^0180h,w
	subwf	(___aldiv@dividend+2)^0180h,w
	skipz
	goto	u4925
	movf	(___aldiv@divisor+1)^0180h,w
	subwf	(___aldiv@dividend+1)^0180h,w
	skipz
	goto	u4925
	movf	(___aldiv@divisor)^0180h,w
	subwf	(___aldiv@dividend)^0180h,w
u4925:
	skipc
	goto	u4921
	goto	u4920
u4921:
	goto	l3753
u4920:
	line	33
	
l3749:	
	movf	(___aldiv@divisor)^0180h,w
	subwf	(___aldiv@dividend)^0180h,f
	movf	(___aldiv@divisor+1)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+1)^0180h,w
	subwf	(___aldiv@dividend+1)^0180h,f
	movf	(___aldiv@divisor+2)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+2)^0180h,w
	subwf	(___aldiv@dividend+2)^0180h,f
	movf	(___aldiv@divisor+3)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+3)^0180h,w
	subwf	(___aldiv@dividend+3)^0180h,f
	line	34
	
l3751:	
	bsf	(___aldiv@quotient)^0180h+(0/8),(0)&7
	goto	l3753
	line	35
	
l586:	
	line	36
	
l3753:	
	movlw	01h
u4935:
	clrc
	rrf	(___aldiv@divisor+3)^0180h,f
	rrf	(___aldiv@divisor+2)^0180h,f
	rrf	(___aldiv@divisor+1)^0180h,f
	rrf	(___aldiv@divisor)^0180h,f
	addlw	-1
	skipz
	goto	u4935

	line	37
	
l3755:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^0180h,f
	btfss	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l3745
u4940:
	goto	l3757
	
l587:	
	goto	l3757
	line	38
	
l581:	
	line	39
	
l3757:	
	movf	(___aldiv@sign)^0180h,w
	skipz
	goto	u4950
	goto	l3761
u4950:
	line	40
	
l3759:	
	comf	(___aldiv@quotient)^0180h,f
	comf	(___aldiv@quotient+1)^0180h,f
	comf	(___aldiv@quotient+2)^0180h,f
	comf	(___aldiv@quotient+3)^0180h,f
	incf	(___aldiv@quotient)^0180h,f
	skipnz
	incf	(___aldiv@quotient+1)^0180h,f
	skipnz
	incf	(___aldiv@quotient+2)^0180h,f
	skipnz
	incf	(___aldiv@quotient+3)^0180h,f
	goto	l3761
	
l588:	
	line	41
	
l3761:	
	movf	(___aldiv@quotient+3)^0180h,w
	movwf	(?___aldiv+3)^0180h
	movf	(___aldiv@quotient+2)^0180h,w
	movwf	(?___aldiv+2)^0180h
	movf	(___aldiv@quotient+1)^0180h,w
	movwf	(?___aldiv+1)^0180h
	movf	(___aldiv@quotient)^0180h,w
	movwf	(?___aldiv)^0180h

	goto	l589
	
l3763:	
	line	42
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_TIMER0_Set

;; *************** function _TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    1[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
	line	20
global __ptext12
__ptext12:	;psect for function _TIMER0_Set
psect	text12
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
	line	20
	global	__size_of_TIMER0_Set
	__size_of_TIMER0_Set	equ	__end_of_TIMER0_Set-_TIMER0_Set
	
_TIMER0_Set:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Set: [wreg]
;TIMER0_Set@contagens stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(TIMER0_Set@contagens)^0180h
	line	22
	
l3811:	
;timers.c: 22: TMR0 = contagens;
	movf	(TIMER0_Set@contagens)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
l200:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Set
	__end_of_TIMER0_Set:
	signat	_TIMER0_Set,4216
	global	_TIMER0_Init

;; *************** function _TIMER0_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	6
global __ptext13
__ptext13:	;psect for function _TIMER0_Init
psect	text13
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
	line	6
	global	__size_of_TIMER0_Init
	__size_of_TIMER0_Init	equ	__end_of_TIMER0_Init-_TIMER0_Init
	
_TIMER0_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Init: []
	line	8
	
l3857:	
;timers.c: 8: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	9
;timers.c: 9: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	10
;timers.c: 10: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	11
;timers.c: 11: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	12
;timers.c: 12: OPTION_REGbits.PS1 = 1;
	bsf	(129)^080h,1	;volatile
	line	13
;timers.c: 13: OPTION_REGbits.PS0 = 1;
	bsf	(129)^080h,0	;volatile
	line	14
;timers.c: 14: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	15
;timers.c: 15: INTCONbits.TMR0IE = 1;
	bsf	(11),5	;volatile
	line	16
	
l197:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Init
	__end_of_TIMER0_Init:
	signat	_TIMER0_Init,88
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 5 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
	line	5
global __ptext14
__ptext14:	;psect for function _PWM_Init
psect	text14
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
	line	5
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_Init: [wreg]
	line	14
	
l3861:	
;pwm.c: 14: T2CONbits.T2CKPS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(18),1	;volatile
	line	15
;pwm.c: 15: T2CONbits.T2CKPS0 = 0;
	bcf	(18),0	;volatile
	line	18
;pwm.c: 18: T2CONbits.TOUTPS3 = 0;
	bcf	(18),6	;volatile
	line	19
;pwm.c: 19: T2CONbits.TOUTPS2 = 0;
	bcf	(18),5	;volatile
	line	20
;pwm.c: 20: T2CONbits.TOUTPS1 = 0;
	bcf	(18),4	;volatile
	line	21
;pwm.c: 21: T2CONbits.TOUTPS0 = 0;
	bcf	(18),3	;volatile
	line	24
;pwm.c: 24: T2CONbits.TMR2ON = 1;
	bsf	(18),2	;volatile
	line	27
	
l3863:	
;pwm.c: 27: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	43
	
l3865:	
;pwm.c: 43: CCP1CONbits.CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),3	;volatile
	line	44
	
l3867:	
;pwm.c: 44: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	45
	
l3869:	
;pwm.c: 45: CCP1CONbits.CCP1M1 = 1;
	bsf	(23),1	;volatile
	line	46
	
l3871:	
;pwm.c: 46: CCP1CONbits.CCP1M0 = 1;
	bsf	(23),0	;volatile
	line	49
	
l3873:	
;pwm.c: 49: PIE1bits.CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,2	;volatile
	line	50
	
l3875:	
;pwm.c: 50: PIR1bits.CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),2	;volatile
	line	53
	
l3877:	
;pwm.c: 53: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	54
	
l3879:	
;pwm.c: 54: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	55
	
l3881:	
;pwm.c: 55: CCP2CONbits.CCP2M1 = 1;
	bsf	(29),1	;volatile
	line	56
	
l3883:	
;pwm.c: 56: CCP2CONbits.CCP2M0 = 1;
	bsf	(29),0	;volatile
	line	59
	
l3885:	
;pwm.c: 59: PIE2bits.CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(141)^080h,0	;volatile
	line	60
	
l3887:	
;pwm.c: 60: PIR2bits.CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(13),0	;volatile
	line	61
	
l348:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,88
	global	_PWM_DutyCycle2

;; *************** function _PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    1[BANK3 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	96
global __ptext15
__ptext15:	;psect for function _PWM_DutyCycle2
psect	text15
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
	line	96
	global	__size_of_PWM_DutyCycle2
	__size_of_PWM_DutyCycle2	equ	__end_of_PWM_DutyCycle2-_PWM_DutyCycle2
	
_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
l3813:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle2@valor+1)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0+1
	movf	(PWM_DutyCycle2@valor)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0
	rlf	(??_PWM_DutyCycle2+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0180h+0,f
	rlf	(??_PWM_DutyCycle2+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0180h+0,f
	movf	0+(??_PWM_DutyCycle2+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
l3815:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle2@valor)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0
	movlw	(04h)-1
u5045:
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u5045
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0180h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	100
	
l354:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle2
	__end_of_PWM_DutyCycle2:
	signat	_PWM_DutyCycle2,4216
	global	_PWM_DutyCycle1

;; *************** function _PWM_DutyCycle1 *****************
;; Defined at:
;;		line 64 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    1[BANK3 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	64
global __ptext16
__ptext16:	;psect for function _PWM_DutyCycle1
psect	text16
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
	line	64
	global	__size_of_PWM_DutyCycle1
	__size_of_PWM_DutyCycle1	equ	__end_of_PWM_DutyCycle1-_PWM_DutyCycle1
	
_PWM_DutyCycle1:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle1: [wreg+status,2+status,0]
	line	91
	
l3943:	
;pwm.c: 91: CCPR1L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle1@valor+1)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0+1
	movf	(PWM_DutyCycle1@valor)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0
	rlf	(??_PWM_DutyCycle1+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0180h+0,f
	rlf	(??_PWM_DutyCycle1+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0180h+0,f
	movf	0+(??_PWM_DutyCycle1+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	92
	
l3945:	
;pwm.c: 92: CCP1CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle1@valor)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0
	movlw	(04h)-1
u5095:
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u5095
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0180h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	94
	
l351:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle1
	__end_of_PWM_DutyCycle1:
	signat	_PWM_DutyCycle1,4216
	global	_LCD_WriteString

;; *************** function _LCD_WriteString *****************
;; Defined at:
;;		line 61 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_8(17), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[BANK3 ] PTR const unsigned char 
;;		 -> STR_8(17), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
	line	61
global __ptext17
__ptext17:	;psect for function _LCD_WriteString
psect	text17
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
	line	61
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_WriteString@Str stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteString@Str)^0180h
	line	63
	
l3935:	
;lcd.c: 63: while(*Str != '\0')
	goto	l3941
	
l229:	
	line	65
	
l3937:	
;lcd.c: 64: {
;lcd.c: 65: LCD_WriteData(*Str);
	movf	(LCD_WriteString@Str)^0180h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_WriteData
	line	66
	
l3939:	
;lcd.c: 66: Str++;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_LCD_WriteString+0)^0180h+0
	movf	(??_LCD_WriteString+0)^0180h+0,w
	addwf	(LCD_WriteString@Str)^0180h,f
	goto	l3941
	line	67
	
l228:	
	line	63
	
l3941:	
	movf	(LCD_WriteString@Str)^0180h,w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l3937
u5080:
	goto	l231
	
l230:	
	line	68
	
l231:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteString
	__end_of_LCD_WriteString:
	signat	_LCD_WriteString,4216
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 47 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    2[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	47
global __ptext18
__ptext18:	;psect for function _LCD_WriteData
psect	text18
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
	line	47
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteData@Byte)^0180h
	line	49
	
l3585:	
;lcd.c: 49: PORTEbits.RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),0	;volatile
	line	51
	
l3587:	
;lcd.c: 51: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteData@Byte)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	53
	
l3589:	
;lcd.c: 53: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	55
;lcd.c: 55: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_WriteData+0)^0180h+0,f
u7197:
decfsz	(??_LCD_WriteData+0)^0180h+0,f
	goto	u7197
opt asmopt_on

	line	57
	
l3591:	
;lcd.c: 57: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	58
	
l225:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4216
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 87 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	87
global __ptext19
__ptext19:	;psect for function _LCD_Init
psect	text19
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
	line	87
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3889:	
;lcd.c: 90: ADCON1bits.PCFG3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(159)^080h,3	;volatile
	line	91
;lcd.c: 91: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	92
;lcd.c: 92: ADCON1bits.PCFG1 = 0;
	bcf	(159)^080h,1	;volatile
	line	93
;lcd.c: 93: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	95
	
l3891:	
;lcd.c: 95: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)^0180h+0),f
u7207:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u7207
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u7207
opt asmopt_on

	line	97
	
l3893:	
;lcd.c: 97: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	98
	
l3895:	
;lcd.c: 98: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)^0180h+0),f
u7217:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u7217
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u7217
opt asmopt_on

	line	100
;lcd.c: 100: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	101
	
l3897:	
;lcd.c: 101: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u7227:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u7227
opt asmopt_on

	line	103
	
l3899:	
;lcd.c: 103: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	104
;lcd.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u7237:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u7237
opt asmopt_on

	line	106
	
l3901:	
;lcd.c: 106: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	107
	
l3903:	
;lcd.c: 107: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u7247:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u7247
opt asmopt_on

	line	109
;lcd.c: 109: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	110
	
l3905:	
;lcd.c: 110: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)^0180h+0),f
u7257:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u7257
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u7257
opt asmopt_on

	line	112
	
l3907:	
;lcd.c: 112: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	113
;lcd.c: 113: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u7267:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u7267
opt asmopt_on

	line	115
	
l3909:	
;lcd.c: 115: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	116
	
l3911:	
;lcd.c: 116: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u7277:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u7277
opt asmopt_on

	line	117
	
l237:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 32 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    2[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Clear
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	32
global __ptext20
__ptext20:	;psect for function _LCD_WriteCmd
psect	text20
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
	line	32
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteCmd@Byte)^0180h
	line	34
	
l3577:	
;lcd.c: 34: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	36
	
l3579:	
;lcd.c: 36: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteCmd@Byte)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l3581:	
;lcd.c: 39: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	41
;lcd.c: 41: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_WriteCmd+0)^0180h+0,f
u7287:
decfsz	(??_LCD_WriteCmd+0)^0180h+0,f
	goto	u7287
opt asmopt_on

	line	43
	
l3583:	
;lcd.c: 43: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	44
	
l222:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4216
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 10 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1    1[BANK3 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    3[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       1       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	10
global __ptext21
__ptext21:	;psect for function _LCD_Cursor
psect	text21
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\lcd.c"
	line	10
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_Cursor@Row)^0180h
	line	12
	
l3921:	
;lcd.c: 12: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	14
	
l3923:	
;lcd.c: 14: if (Row == 0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_Cursor@Row)^0180h,f
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l3927
u5070:
	line	16
	
l3925:	
;lcd.c: 15: {
;lcd.c: 16: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col)^0180h,w
	addlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
;lcd.c: 17: }
	goto	l3929
	line	18
	
l217:	
	line	20
	
l3927:	
;lcd.c: 18: else
;lcd.c: 19: {
;lcd.c: 20: PORTD = 0xC0 + Col;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_Cursor@Col)^0180h,w
	addlw	0C0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l3929
	line	21
	
l218:	
	line	24
	
l3929:	
;lcd.c: 21: }
;lcd.c: 24: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	26
	
l3931:	
;lcd.c: 26: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Cursor+0)^0180h+0,f
u7297:
decfsz	(??_LCD_Cursor+0)^0180h+0,f
	goto	u7297
opt asmopt_on

	line	28
	
l3933:	
;lcd.c: 28: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	29
	
l219:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8312
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\adc.c"
	line	6
global __ptext22
__ptext22:	;psect for function _ADC_Init
psect	text22
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\adc.c"
	line	6
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_Init: []
	line	9
	
l3859:	
;adc.c: 9: ADCON1bits.ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(159)^080h,7	;volatile
	line	32
;adc.c: 32: ADCON1bits.PCFG3 = 1;
	bsf	(159)^080h,3	;volatile
	line	33
;adc.c: 33: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	34
;adc.c: 34: ADCON1bits.PCFG1 = 1;
	bsf	(159)^080h,1	;volatile
	line	35
;adc.c: 35: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	38
;adc.c: 38: ADCON0bits.ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31),7	;volatile
	line	39
;adc.c: 39: ADCON0bits.ADCS0 = 0;
	bcf	(31),6	;volatile
	line	42
;adc.c: 42: PIE1bits.ADIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,6	;volatile
	line	43
;adc.c: 43: PIR1bits.ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),6	;volatile
	line	44
	
l174:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 84 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      27       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4      27       0       0
;;Total ram usage:       31 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lwtoft
;;		_trapezoidal
;;		i1_PWM_DutyCycle2
;;		i1_TIMER0_Set
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	84
global __ptext23
__ptext23:	;psect for function _ISR
psect	text23
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	84
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 0
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text23
	line	87
	
i1l5391:	
;main.c: 87: if (PIR1bits.RCIF)
	btfss	(12),5	;volatile
	goto	u709_21
	goto	u709_20
u709_21:
	goto	i1l104
u709_20:
	line	92
	
i1l5393:	
;main.c: 88: {
;main.c: 92: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	93
	
i1l104:	
	line	96
;main.c: 93: }
;main.c: 96: if (PIR1bits.ADIF)
	btfss	(12),6	;volatile
	goto	u710_21
	goto	u710_20
u710_21:
	goto	i1l105
u710_20:
	line	101
	
i1l5395:	
;main.c: 97: {
;main.c: 101: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	line	102
	
i1l105:	
	line	106
;main.c: 102: }
;main.c: 106: if (INTCONbits.T0IF)
	btfss	(11),2	;volatile
	goto	u711_21
	goto	u711_20
u711_21:
	goto	i1l5467
u711_20:
	line	109
	
i1l5397:	
;main.c: 107: {
;main.c: 109: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	i1_TIMER0_Set
	line	112
	
i1l5399:	
;main.c: 112: if (contagens_tm0 < 499)
	movlw	high(01F3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_contagens_tm0+1)^080h,w
	movlw	low(01F3h)
	skipnz
	subwf	(_contagens_tm0)^080h,w
	skipnc
	goto	u712_21
	goto	u712_20
u712_21:
	goto	i1l5405
u712_20:
	line	115
	
i1l5401:	
;main.c: 113: {
;main.c: 115: contagens_tm0++;
	movlw	low(01h)
	addwf	(_contagens_tm0)^080h,f
	skipnc
	incf	(_contagens_tm0+1)^080h,f
	movlw	high(01h)
	addwf	(_contagens_tm0+1)^080h,f
	line	118
	
i1l5403:	
;main.c: 118: PORTBbits.RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	line	119
;main.c: 119: }
	goto	i1l5465
	line	120
	
i1l107:	
	line	123
	
i1l5405:	
;main.c: 120: else
;main.c: 121: {
;main.c: 123: contagens_tm0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_contagens_tm0)^080h
	clrf	(_contagens_tm0+1)^080h
	line	126
	
i1l5407:	
;main.c: 126: pulsos = (TMR1H << 8) + TMR1L;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(15),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pulsos+1)^080h
	addwf	(_pulsos+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pulsos)^080h
	addwf	(_pulsos)^080h

	line	127
	
i1l5409:	
;main.c: 127: rpm = ((pulsos / 7.0) * 120);
	movf	(_pulsos+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_pulsos)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xe0
	movwf	(___ftdiv@f2+1)
	movlw	0x40
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm+1)^080h
	addwf	(_rpm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm)^080h
	addwf	(_rpm)^080h

	line	130
	
i1l5411:	
;main.c: 130: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	line	131
	
i1l5413:	
;main.c: 131: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	133
	
i1l5415:	
;main.c: 133: p1 = trapezoidal((float)rpm, -10.0f, 0.0f, (requiredRpm - (0.66f * requiredRpm) - 100.0f), (requiredRpm - ((2/3)*requiredRpm) + 100));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0xf6
	movwf	(___ftmul@f1)
	movlw	0x28
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733+2)^080h
	
i1l5417:	
;main.c: 133: p1 = trapezoidal((float)rpm, -10.0f, 0.0f, (requiredRpm - (0.66f * requiredRpm) - 100.0f), (requiredRpm - ((2/3)*requiredRpm) + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1734)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1734+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1734+2)^080h
	
i1l5419:	
;main.c: 133: p1 = trapezoidal((float)rpm, -10.0f, 0.0f, (requiredRpm - (0.66f * requiredRpm) - 100.0f), (requiredRpm - ((2/3)*requiredRpm) + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1735)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1735+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1735+2)^080h
	
i1l5421:	
;main.c: 133: p1 = trapezoidal((float)rpm, -10.0f, 0.0f, (requiredRpm - (0.66f * requiredRpm) - 100.0f), (requiredRpm - ((2/3)*requiredRpm) + 100));
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1734)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1734+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1734+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736+2)^080h
	
i1l5423:	
;main.c: 133: p1 = trapezoidal((float)rpm, -10.0f, 0.0f, (requiredRpm - (0.66f * requiredRpm) - 100.0f), (requiredRpm - ((2/3)*requiredRpm) + 100));
	movf	(_rpm+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_rpm)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapezoidal@x+2)
	movlw	0x0
	movwf	(trapezoidal@a)
	movlw	0x20
	movwf	(trapezoidal@a+1)
	movlw	0xc1
	movwf	(trapezoidal@a+2)
	movlw	0x0
	movwf	(trapezoidal@b)
	movlw	0x0
	movwf	(trapezoidal@b+1)
	movlw	0x0
	movwf	(trapezoidal@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1735)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1735+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1735+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p1+2)^080h
	line	134
	
i1l5425:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733+2)^080h
	
i1l5427:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1734)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1734+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1734+2)^080h
	
i1l5429:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1737)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1737+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1737+2)^080h
	
i1l5431:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736+2)^080h
	
i1l5433:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1738)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1738+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1738+2)^080h
	
i1l5435:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1734)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1734+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1734+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1739)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1739+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1739+2)^080h
	
i1l5437:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1737)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1737+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1737+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1740)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1740+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1740+2)^080h
	
i1l5439:	
;main.c: 134: p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
	movf	(_rpm+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_rpm)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapezoidal@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1738)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@b)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1738+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1738+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1739)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1739+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1739+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1740)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1740+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1740+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p2+2)^080h
	line	135
	
i1l5441:	
;main.c: 135: p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1733+2)^080h
	
i1l5443:	
;main.c: 135: p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1741)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1741+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1741+2)^080h
	
i1l5445:	
;main.c: 135: p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1733+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1735)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1735+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1735+2)^080h
	
i1l5447:	
;main.c: 135: p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1736+2)^080h
	
i1l5449:	
;main.c: 135: p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc8
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_requiredRpm+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1738)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1738+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1738+2)^080h
	
i1l5451:	
;main.c: 135: p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
	movf	(_rpm+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_rpm)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapezoidal@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1741)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1741+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1741+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1735)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@b)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1735+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1735+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1736+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@c+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1738)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1738+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1738+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_p3+2)^080h
	line	137
	
i1l5453:	
;main.c: 137: if(p1>p2){
	movf	(_p2)^080h,w
	movwf	(___ftge@ff1)
	movf	(_p2+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_p2+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(_p1)^080h,w
	movwf	(___ftge@ff2)
	movf	(_p1+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_p1+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u713_21
	goto	u713_20
u713_21:
	goto	i1l5457
u713_20:
	line	138
	
i1l5455:	
;main.c: 138: PWM_DutyCycle2((int)(1023 * p1));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0xc0
	movwf	(___ftmul@f1)
	movlw	0x7f
	movwf	(___ftmul@f1+1)
	movlw	0x44
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	line	139
;main.c: 139: }else{
	goto	i1l5463
	
i1l109:	
	line	140
	
i1l5457:	
;main.c: 140: if(p2 > p3){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p3)^080h,w
	movwf	(___ftge@ff1)
	movf	(_p3+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_p3+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(_p2)^080h,w
	movwf	(___ftge@ff2)
	movf	(_p2+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_p2+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u714_21
	goto	u714_20
u714_21:
	goto	i1l5461
u714_20:
	line	141
	
i1l5459:	
;main.c: 141: PWM_DutyCycle2((int)(767 * p2));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0xc0
	movwf	(___ftmul@f1)
	movlw	0x3f
	movwf	(___ftmul@f1+1)
	movlw	0x44
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	line	142
;main.c: 142: }else{
	goto	i1l5463
	
i1l111:	
	line	143
	
i1l5461:	
;main.c: 143: PWM_DutyCycle2((int)(512 * p3));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_p3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x44
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	goto	i1l5463
	line	144
	
i1l112:	
	goto	i1l5463
	line	145
	
i1l110:	
	line	150
	
i1l5463:	
;main.c: 144: }
;main.c: 145: }
;main.c: 150: PORTBbits.RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),6	;volatile
	goto	i1l5465
	line	151
	
i1l108:	
	line	154
	
i1l5465:	
;main.c: 151: }
;main.c: 154: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	goto	i1l5467
	line	155
	
i1l106:	
	line	158
	
i1l5467:	
;main.c: 155: }
;main.c: 158: if (PIR1bits.TMR1IF)
	btfss	(12),0	;volatile
	goto	u715_21
	goto	u715_20
u715_21:
	goto	i1l113
u715_20:
	line	163
	
i1l5469:	
;main.c: 159: {
;main.c: 163: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	164
	
i1l113:	
	line	167
;main.c: 164: }
;main.c: 167: if (PIR1bits.SSPIF)
	btfss	(12),3	;volatile
	goto	u716_21
	goto	u716_20
u716_21:
	goto	i1l115
u716_20:
	line	172
	
i1l5471:	
;main.c: 168: {
;main.c: 172: PIR1bits.SSPIF = 0;
	bcf	(12),3	;volatile
	goto	i1l115
	line	173
	
i1l114:	
	line	174
	
i1l115:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	i1_TIMER0_Set

;; *************** function i1_TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
	line	20
global __ptext24
__ptext24:	;psect for function i1_TIMER0_Set
psect	text24
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\timers.c"
	line	20
	global	__size_ofi1_TIMER0_Set
	__size_ofi1_TIMER0_Set	equ	__end_ofi1_TIMER0_Set-i1_TIMER0_Set
	
i1_TIMER0_Set:	
;incstack = 0
	opt	stack 3
; Regs used in i1_TIMER0_Set: [wreg]
;i1TIMER0_Set@contagens stored from wreg
	movwf	(i1TIMER0_Set@contagens)
	line	22
	
i1l3165:	
;timers.c: 22: TMR0 = contagens;
	movf	(i1TIMER0_Set@contagens),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
i1l200:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TIMER0_Set
	__end_ofi1_TIMER0_Set:
	signat	i1_TIMER0_Set,88
	global	i1_PWM_DutyCycle2

;; *************** function i1_PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2   46[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
	line	96
global __ptext25
__ptext25:	;psect for function i1_PWM_DutyCycle2
psect	text25
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\pwm.c"
	line	96
	global	__size_ofi1_PWM_DutyCycle2
	__size_ofi1_PWM_DutyCycle2	equ	__end_ofi1_PWM_DutyCycle2-i1_PWM_DutyCycle2
	
i1_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 3
; Regs used in i1_PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
i1l3167:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1PWM_DutyCycle2@valor+1),w
	movwf	(??i1_PWM_DutyCycle2+0)+0+1
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	rlf	(??i1_PWM_DutyCycle2+0)+1,w
	rrf	(??i1_PWM_DutyCycle2+0)+1,f
	rrf	(??i1_PWM_DutyCycle2+0)+0,f
	rlf	(??i1_PWM_DutyCycle2+0)+1,w
	rrf	(??i1_PWM_DutyCycle2+0)+1,f
	rrf	(??i1_PWM_DutyCycle2+0)+0,f
	movf	0+(??i1_PWM_DutyCycle2+0)+0,w
	movwf	(27)	;volatile
	line	99
	
i1l3169:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u401_25:
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u401_25
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
i1l354:	
	return
	opt stack 0
GLOBAL	__end_ofi1_PWM_DutyCycle2
	__end_ofi1_PWM_DutyCycle2:
	signat	i1_PWM_DutyCycle2,88
	global	_trapezoidal

;; *************** function _trapezoidal *****************
;; Defined at:
;;		line 43 in file "C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  x               3   48[BANK0 ] float 
;;  a               3   51[BANK0 ] float 
;;  b               3   54[BANK0 ] float 
;;  c               3   57[BANK0 ] float 
;;  d               3   60[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      15       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftneg
;;		_printf
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	43
global __ptext26
__ptext26:	;psect for function _trapezoidal
psect	text26
	file	"C:\Users\332414\Desktop\Fuzzy-IA2\Código em C no MPLAB\main.c"
	line	43
	global	__size_of_trapezoidal
	__size_of_trapezoidal	equ	__end_of_trapezoidal-_trapezoidal
	
_trapezoidal:	
;incstack = 0
	opt	stack 0
; Regs used in _trapezoidal: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	44
	
i1l5333:	
;main.c: 44: if (x <= a){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@a),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u701_21
	goto	u701_20
u701_21:
	goto	i1l5341
u701_20:
	line	45
	
i1l5335:	
;main.c: 45: printf("1");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_printf
	line	46
	
i1l5337:	
;main.c: 46: return 0.0f;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_trapezoidal)
	movlw	0x0
	movwf	(?_trapezoidal+1)
	movlw	0x0
	movwf	(?_trapezoidal+2)
	goto	i1l90
	
i1l5339:	
	goto	i1l90
	line	47
	
i1l89:	
	line	48
	
i1l5341:	
;main.c: 47: }
;main.c: 48: if (a < x && x <= b){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@a),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u702_21
	goto	u702_20
u702_21:
	goto	i1l5351
u702_20:
	
i1l5343:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@b),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u703_21
	goto	u703_20
u703_21:
	goto	i1l5351
u703_20:
	line	49
	
i1l5345:	
;main.c: 49: printf("2");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_printf
	line	50
	
i1l5347:	
;main.c: 50: return (x-a)/(b-a);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@b),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@a),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapezoidal@x),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@a),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?_trapezoidal)
	movf	(1+(?___ftdiv)),w
	movwf	(?_trapezoidal+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_trapezoidal+2)
	goto	i1l90
	
i1l5349:	
	goto	i1l90
	line	51
	
i1l91:	
	line	52
	
i1l5351:	
;main.c: 51: }
;main.c: 52: if (b < x && x <= c){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@b),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u704_21
	goto	u704_20
u704_21:
	goto	i1l5361
u704_20:
	
i1l5353:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@c),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u705_21
	goto	u705_20
u705_21:
	goto	i1l5361
u705_20:
	line	53
	
i1l5355:	
;main.c: 53: printf("3");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_printf
	line	54
	
i1l5357:	
;main.c: 54: return 1.0f;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_trapezoidal)
	movlw	0x80
	movwf	(?_trapezoidal+1)
	movlw	0x3f
	movwf	(?_trapezoidal+2)
	goto	i1l90
	
i1l5359:	
	goto	i1l90
	line	55
	
i1l92:	
	line	56
	
i1l5361:	
;main.c: 55: }
;main.c: 56: if (c < x && x <= d){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@c),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u706_21
	goto	u706_20
u706_21:
	goto	i1l5371
u706_20:
	
i1l5363:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@d),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u707_21
	goto	u707_20
u707_21:
	goto	i1l5371
u707_20:
	line	57
	
i1l5365:	
;main.c: 57: printf("4");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_printf
	line	58
	
i1l5367:	
;main.c: 58: return ((d-x)/(d-c));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@d),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@c),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapezoidal@d),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?_trapezoidal)
	movf	(1+(?___ftdiv)),w
	movwf	(?_trapezoidal+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_trapezoidal+2)
	goto	i1l90
	
i1l5369:	
	goto	i1l90
	line	59
	
i1l93:	
	line	60
	
i1l5371:	
;main.c: 59: }
;main.c: 60: if (x > d){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@d),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u708_21
	goto	u708_20
u708_21:
	goto	i1l90
u708_20:
	line	61
	
i1l5373:	
;main.c: 61: printf("5");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_printf
	line	62
	
i1l5375:	
;main.c: 62: return 0.0f;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_trapezoidal)
	movlw	0x0
	movwf	(?_trapezoidal+1)
	movlw	0x0
	movwf	(?_trapezoidal+2)
	goto	i1l90
	
i1l5377:	
	goto	i1l90
	line	63
	
i1l94:	
	line	64
	
i1l90:	
	return
	opt stack 0
GLOBAL	__end_of_trapezoidal
	__end_of_trapezoidal:
	signat	_trapezoidal,20603
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_5(2), STR_4(2), STR_3(2), STR_2(2), 
;;		 -> STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  f               1   18[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(2), STR_4(2), STR_3(2), STR_2(2), 
;;		 -> STR_1(2), 
;;  pb              2   20[BANK0 ] struct __prbuf
;;  ap              1   19[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1__doprnt
;; This function is called by:
;;		_trapezoidal
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\printf.c"
	line	13
global __ptext27
__ptext27:	;psect for function _printf
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\printf.c"
	line	13
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;incstack = 0
	opt	stack 0
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	line	23
	
i1l5191:	
	clrf	(printf@pb)
	line	24
	
i1l5193:	
	movlw	((fp_i1_putch-i1fpbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(0+printf@pb+01h)
	line	25
	
i1l5195:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	26
	
i1l5197:	
;	Return value of _printf is never used
	movlw	(printf@pb&0ffh)
	movwf	(i1__doprnt@pb)
	movlw	(0x0)
	movwf	(i1__doprnt@pb+1)
	movf	(printf@f),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(i1__doprnt@f)
	movlw	(printf@ap&0ffh)
	movwf	(i1__doprnt@ap)
	movlw	(0x0)
	movwf	(i1__doprnt@ap+1)
	fcall	i1__doprnt
	goto	i1l889
	
i1l5199:	
	line	28
	
i1l889:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	i1__doprnt

;; *************** function i1__doprnt *****************
;; Defined at:
;;		line 458 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              2    0[BANK0 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(5), STR_5(2), STR_4(2), STR_3(2), 
;;		 -> STR_2(2), STR_1(2), 
;;  ap              2    3[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  _doprnt         4    9[BANK0 ] struct .
;;  _doprnt         2   14[BANK0 ] int 
;;  _doprnt         1   16[BANK0 ] char 
;;  _doprnt         1   13[BANK0 ] unsigned char 
;;  _doprnt         1    8[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Absolute function
;;		i1___lwdiv
;;		i1___lwmod
;;		i1___wmul
;;		i1_isdigit
;;		i1_putch
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	458
global __ptext28
__ptext28:	;psect for function i1__doprnt
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	458
	global	__size_ofi1__doprnt
	__size_ofi1__doprnt	equ	__end_ofi1__doprnt-i1__doprnt
	
i1__doprnt:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in i1__doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	545
	
i1l5059:	
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 545: while(c = *f++) {
	goto	i1l5185
	
i1l389:	
	line	547
	
i1l5061:	
;doprnt.c: 547: if(c != '%')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@c),w
	xorlw	025h
	skipnz
	goto	u651_21
	goto	u651_20
u651_21:
	goto	i1l5071
u651_20:
	line	550
	
i1l5063:	
;doprnt.c: 549: {
;doprnt.c: 550: if(pb->func) (pb->func(c)); else ((*pb->ptr++ = c));
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+0)+0)
	movf	0+(??i1__doprnt+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+0)+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u652_21
	goto	u652_20
u652_21:
	goto	i1l5067
u652_20:
	
i1l5065:	
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1putch@c)
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+1)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+1)+0)
	movf	0+(??i1__doprnt+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	i1fptable
	goto	i1l5185
	
i1l391:	
	
i1l5067:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??i1__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l5069:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	(??i1__doprnt+0)+0,w
	addwf	indf,f
	goto	i1l5185
	
i1l392:	
	line	551
;doprnt.c: 551: continue;
	goto	i1l5185
	line	552
	
i1l390:	
	line	555
	
i1l5071:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(i1__doprnt@width)
	clrf	(i1__doprnt@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(i1__doprnt@flag)
	goto	i1l5077
	line	559
;doprnt.c: 559: for(;;) {
	
i1l393:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	i1l5077
	line	588
;doprnt.c: 588: case '0':
	
i1l395:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(i1__doprnt@flag)+(2/8),(2)&7
	line	590
	
i1l5073:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	addwf	(i1__doprnt@f),f
	line	591
;doprnt.c: 591: continue;
	goto	i1l5077
	line	593
	
i1l5075:	
;doprnt.c: 593: }
	goto	i1l5079
	line	560
	
i1l394:	
	
i1l5077:	
	movf	(i1__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	i1l395
	goto	i1l5079
	opt asmopt_on

	line	593
	
i1l397:	
	line	594
;doprnt.c: 594: break;
	goto	i1l5079
	line	595
	
i1l396:	
;doprnt.c: 595: }
	goto	i1l5077
	
i1l398:	
	line	606
	
i1l5079:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(i1__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	i1_isdigit
	btfss	status,0
	goto	u653_21
	goto	u653_20
u653_21:
	goto	i1l5093
u653_20:
	line	607
	
i1l5081:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(i1__doprnt@width)
	clrf	(i1__doprnt@width+1)
	goto	i1l5083
	line	608
;doprnt.c: 608: do {
	
i1l400:	
	line	609
	
i1l5083:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	movwf	(i1___wmul@multiplier)
	movlw	high(0Ah)
	movwf	((i1___wmul@multiplier))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@width+1),w
	clrf	(i1___wmul@multiplicand+1)
	addwf	(i1___wmul@multiplicand+1)
	movf	(i1__doprnt@width),w
	clrf	(i1___wmul@multiplicand)
	addwf	(i1___wmul@multiplicand)

	fcall	i1___wmul
	movf	(1+(?i1___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(i1__doprnt@width+1)
	addwf	(i1__doprnt@width+1)
	movf	(0+(?i1___wmul)),w
	clrf	(i1__doprnt@width)
	addwf	(i1__doprnt@width)

	line	610
	
i1l5085:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(i1__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??i1__doprnt+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??i1__doprnt+0)+0)+1
	movf	0+(??i1__doprnt+0)+0,w
	addwf	(i1__doprnt@width),f
	skipnc
	incf	(i1__doprnt@width+1),f
	movf	1+(??i1__doprnt+0)+0,w
	addwf	(i1__doprnt@width+1),f
	
i1l5087:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	addwf	(i1__doprnt@f),f
	line	611
	
i1l5089:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(i1__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	i1_isdigit
	btfsc	status,0
	goto	u654_21
	goto	u654_20
u654_21:
	goto	i1l5083
u654_20:
	goto	i1l5093
	
i1l401:	
	goto	i1l5093
	line	617
	
i1l399:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	i1l5093
	line	646
;doprnt.c: 646: case 0:
	
i1l403:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	i1l5187
	line	706
;doprnt.c: 706: case 'd':
	
i1l405:	
	goto	i1l5095
	line	707
	
i1l406:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	i1l5095
	line	811
;doprnt.c: 811: default:
	
i1l408:	
	line	822
;doprnt.c: 822: continue;
	goto	i1l5185
	line	831
	
i1l5091:	
;doprnt.c: 831: }
	goto	i1l5095
	line	644
	
i1l402:	
	
i1l5093:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(i1__doprnt@f),f
	movlw	-01h
	addwf	(i1__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(i1__doprnt@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l5187
	xorlw	100^0	; case 100
	skipnz
	goto	i1l5095
	xorlw	105^100	; case 105
	skipnz
	goto	i1l5095
	goto	i1l5185
	opt asmopt_on

	line	831
	
i1l407:	
	line	1268
	
i1l5095:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@ap),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@ap+1),0
	bcf	status,7
	movf	indf,w
	movwf	((??i1__doprnt+0)+0)
	movlw	02h
	addwf	indf,f
	movf	((??i1__doprnt+0)+0),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(i1__doprnt@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(i1__doprnt@_val+1)
	line	1270
	
i1l5097:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(i1__doprnt@_val+1),7
	goto	u655_21
	goto	u655_20
u655_21:
	goto	i1l5103
u655_20:
	line	1271
	
i1l5099:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	iorwf	(i1__doprnt@flag),f
	line	1272
	
i1l5101:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(i1__doprnt@_val),f
	comf	(i1__doprnt@_val+1),f
	incf	(i1__doprnt@_val),f
	skipnz
	incf	(i1__doprnt@_val+1),f
	goto	i1l5103
	line	1273
	
i1l409:	
	line	1314
	
i1l5103:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(i1__doprnt@c)
	incf	(i1__doprnt@c),f
	movf	(i1__doprnt@c),w
	xorlw	05h
	skipz
	goto	u656_21
	goto	u656_20
u656_21:
	goto	i1l5107
u656_20:
	goto	i1l5115
	
i1l5105:	
	goto	i1l5115
	line	1315
	
i1l410:	
	
i1l5107:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	addwf	(??i1__doprnt+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??i1__doprnt+1)+0
	fcall	stringdir
	movwf	(??i1__doprnt+1)+0+1
	movf	1+(??i1__doprnt+1)+0,w
	subwf	(i1__doprnt@_val+1),w
	skipz
	goto	u657_25
	movf	0+(??i1__doprnt+1)+0,w
	subwf	(i1__doprnt@_val),w
u657_25:
	skipnc
	goto	u657_21
	goto	u657_20
u657_21:
	goto	i1l5111
u657_20:
	goto	i1l5115
	line	1316
	
i1l5109:	
;doprnt.c: 1316: break;
	goto	i1l5115
	
i1l412:	
	line	1314
	
i1l5111:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	addwf	(i1__doprnt@c),f
	
i1l5113:	
	movf	(i1__doprnt@c),w
	xorlw	05h
	skipz
	goto	u658_21
	goto	u658_20
u658_21:
	goto	i1l5107
u658_20:
	goto	i1l5115
	
i1l411:	
	line	1354
	
i1l5115:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(i1__doprnt@width+1),w
	iorwf	(i1__doprnt@width),w
	skipnz
	goto	u659_21
	goto	u659_20
u659_21:
	goto	i1l413
u659_20:
	
i1l5117:	
	movf	(i1__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u660_21
	goto	u660_20
u660_21:
	goto	i1l413
u660_20:
	line	1355
	
i1l5119:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(i1__doprnt@width),f
	skipnc
	incf	(i1__doprnt@width+1),f
	movlw	high(-1)
	addwf	(i1__doprnt@width+1),f
	
i1l413:	
	line	1390
;doprnt.c: 1390: if(width > c)
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	clrf	(??i1__doprnt+0)+0+1
	btfsc	(??i1__doprnt+0)+0,7
	decf	(??i1__doprnt+0)+0+1,f
	movf	1+(??i1__doprnt+0)+0,w
	xorlw	80h
	movwf	(??i1__doprnt+2)+0
	movf	(i1__doprnt@width+1),w
	xorlw	80h
	subwf	(??i1__doprnt+2)+0,w
	skipz
	goto	u661_25
	movf	(i1__doprnt@width),w
	subwf	0+(??i1__doprnt+0)+0,w
u661_25:

	skipnc
	goto	u661_21
	goto	u661_20
u661_21:
	goto	i1l5123
u661_20:
	line	1391
	
i1l5121:	
;doprnt.c: 1391: width -= c;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	clrf	(??i1__doprnt+0)+0+1
	btfsc	(??i1__doprnt+0)+0,7
	decf	(??i1__doprnt+0)+0+1,f
	movf	0+(??i1__doprnt+0)+0,w
	subwf	(i1__doprnt@width),f
	movf	1+(??i1__doprnt+0)+0,w
	skipc
	decf	(i1__doprnt@width+1),f
	subwf	(i1__doprnt@width+1),f
	goto	i1l5125
	line	1392
	
i1l414:	
	line	1393
	
i1l5123:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(i1__doprnt@width)
	clrf	(i1__doprnt@width+1)
	goto	i1l5125
	
i1l415:	
	line	1396
	
i1l5125:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(i1__doprnt@flag),(2)&7
	goto	u662_21
	goto	u662_20
u662_21:
	goto	i1l5149
u662_20:
	line	1401
	
i1l5127:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(i1__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u663_21
	goto	u663_20
u663_21:
	goto	i1l5137
u663_20:
	line	1402
	
i1l5129:	
;doprnt.c: 1402: if(pb->func) (pb->func('-')); else ((*pb->ptr++ = '-'));
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+0)+0)
	movf	0+(??i1__doprnt+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+0)+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u664_21
	goto	u664_20
u664_21:
	goto	i1l5133
u664_20:
	
i1l5131:	
	movlw	(02Dh)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1putch@c)
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+1)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+1)+0)
	movf	0+(??i1__doprnt+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	i1fptable
	goto	i1l5137
	
i1l418:	
	
i1l5133:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??i1__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l5135:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	(??i1__doprnt+0)+0,w
	addwf	indf,f
	goto	i1l5137
	
i1l419:	
	goto	i1l5137
	
i1l417:	
	line	1424
	
i1l5137:	
;doprnt.c: 1424: if(width)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@width+1),w
	iorwf	(i1__doprnt@width),w
	skipnz
	goto	u665_21
	goto	u665_20
u665_21:
	goto	i1l5171
u665_20:
	goto	i1l5139
	line	1425
;doprnt.c: 1425: do
	
i1l421:	
	line	1426
	
i1l5139:	
;doprnt.c: 1426: if(pb->func) (pb->func('0')); else ((*pb->ptr++ = '0'));
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+0)+0)
	movf	0+(??i1__doprnt+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+0)+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u666_21
	goto	u666_20
u666_21:
	goto	i1l5143
u666_20:
	
i1l5141:	
	movlw	(030h)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1putch@c)
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+1)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+1)+0)
	movf	0+(??i1__doprnt+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	i1fptable
	goto	i1l5147
	
i1l422:	
	
i1l5143:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??i1__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l5145:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	(??i1__doprnt+0)+0,w
	addwf	indf,f
	goto	i1l5147
	
i1l423:	
	line	1427
	
i1l5147:	
;doprnt.c: 1427: while(--width);
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(i1__doprnt@width),f
	skipnc
	incf	(i1__doprnt@width+1),f
	movlw	high(-1)
	addwf	(i1__doprnt@width+1),f
	movf	(((i1__doprnt@width+1))),w
	iorwf	(((i1__doprnt@width))),w
	skipz
	goto	u667_21
	goto	u667_20
u667_21:
	goto	i1l5139
u667_20:
	goto	i1l5171
	
i1l424:	
	goto	i1l5171
	
i1l420:	
	line	1429
;doprnt.c: 1429: } else
	goto	i1l5171
	
i1l416:	
	line	1437
	
i1l5149:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(i1__doprnt@width+1),w
	iorwf	(i1__doprnt@width),w
	skipnz
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l5161
u668_20:
	goto	i1l5151
	line	1438
;doprnt.c: 1438: do
	
i1l427:	
	line	1439
	
i1l5151:	
;doprnt.c: 1439: if(pb->func) (pb->func(' ')); else ((*pb->ptr++ = ' '));
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+0)+0)
	movf	0+(??i1__doprnt+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+0)+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l5155
u669_20:
	
i1l5153:	
	movlw	(020h)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1putch@c)
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+1)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+1)+0)
	movf	0+(??i1__doprnt+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	i1fptable
	goto	i1l5159
	
i1l428:	
	
i1l5155:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??i1__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l5157:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	(??i1__doprnt+0)+0,w
	addwf	indf,f
	goto	i1l5159
	
i1l429:	
	line	1440
	
i1l5159:	
;doprnt.c: 1440: while(--width);
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(i1__doprnt@width),f
	skipnc
	incf	(i1__doprnt@width+1),f
	movlw	high(-1)
	addwf	(i1__doprnt@width+1),f
	movf	(((i1__doprnt@width+1))),w
	iorwf	(((i1__doprnt@width))),w
	skipz
	goto	u670_21
	goto	u670_20
u670_21:
	goto	i1l5151
u670_20:
	goto	i1l5161
	
i1l430:	
	goto	i1l5161
	
i1l426:	
	line	1447
	
i1l5161:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(i1__doprnt@flag),w
	andlw	03h
	btfsc	status,2
	goto	u671_21
	goto	u671_20
u671_21:
	goto	i1l5171
u671_20:
	line	1448
	
i1l5163:	
;doprnt.c: 1448: if(pb->func) (pb->func('-')); else ((*pb->ptr++ = '-'));
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+0)+0)
	movf	0+(??i1__doprnt+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+0)+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u672_21
	goto	u672_20
u672_21:
	goto	i1l5167
u672_20:
	
i1l5165:	
	movlw	(02Dh)
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1putch@c)
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+1)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+1)+0)
	movf	0+(??i1__doprnt+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	i1fptable
	goto	i1l5171
	
i1l432:	
	
i1l5167:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??i1__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l5169:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	(??i1__doprnt+0)+0,w
	addwf	indf,f
	goto	i1l5171
	
i1l433:	
	goto	i1l5171
	
i1l431:	
	goto	i1l5171
	line	1478
	
i1l425:	
	line	1481
	
i1l5171:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1__doprnt@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	i1l5183
	
i1l435:	
	line	1498
	
i1l5173:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(i1___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((i1___lwmod@divisor))+1
	movf	(i1__doprnt@prec),w
	movwf	(??i1__doprnt+0)+0
	addwf	(??i1__doprnt+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(i1___lwdiv@divisor)
	fcall	stringdir
	movwf	(i1___lwdiv@divisor+1)
	movf	(i1__doprnt@_val+1),w
	clrf	(i1___lwdiv@dividend+1)
	addwf	(i1___lwdiv@dividend+1)
	movf	(i1__doprnt@_val),w
	clrf	(i1___lwdiv@dividend)
	addwf	(i1___lwdiv@dividend)

	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	clrf	(i1___lwmod@dividend+1)
	addwf	(i1___lwmod@dividend+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(i1___lwmod@dividend)
	addwf	(i1___lwmod@dividend)

	fcall	i1___lwmod
	movf	(0+(?i1___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??i1__doprnt+1)+0
	movf	(??i1__doprnt+1)+0,w
	movwf	(i1__doprnt@c)
	line	1533
	
i1l5175:	
;doprnt.c: 1532: }
;doprnt.c: 1533: if(pb->func) (pb->func(c)); else ((*pb->ptr++ = c));
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+0)+0)
	movf	0+(??i1__doprnt+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+0)+0,0
	bcf	status,7
	movf	indf
	skipnz
	goto	u673_21
	goto	u673_20
u673_21:
	goto	i1l5179
u673_20:
	
i1l5177:	
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1putch@c)
	movlw	(01h)
	addwf	(i1__doprnt@pb),w
	movwf	(??i1__doprnt+1)+0
	movf	(i1__doprnt@pb+1),w
	skipnc
	addlw	1
	movwf	1+((??i1__doprnt+1)+0)
	movf	0+(??i1__doprnt+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??i1__doprnt+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	i1fptable
	goto	i1l5183
	
i1l436:	
	
i1l5179:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1__doprnt@c),w
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	indf,w
	movwf	fsr0
	movf	(??i1__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l5181:	
	movlw	(01h)
	movwf	(??i1__doprnt+0)+0
	movf	(i1__doprnt@pb),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1__doprnt@pb+1),0
	bcf	status,7
	movf	(??i1__doprnt+0)+0,w
	addwf	indf,f
	goto	i1l5183
	
i1l437:	
	goto	i1l5183
	line	1534
	
i1l434:	
	line	1483
	
i1l5183:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	addwf	(i1__doprnt@prec),f
	movf	((i1__doprnt@prec)),w
	xorlw	-1
	skipz
	goto	u674_21
	goto	u674_20
u674_21:
	goto	i1l5173
u674_20:
	goto	i1l5185
	
i1l438:	
	goto	i1l5185
	line	1542
	
i1l388:	
	line	545
	
i1l5185:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(i1__doprnt@f),f
	movlw	-01h
	addwf	(i1__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??i1__doprnt+0)+0
	movf	(??i1__doprnt+0)+0,w
	movwf	(i1__doprnt@c)
	movf	((i1__doprnt@c)),f
	skipz
	goto	u675_21
	goto	u675_20
u675_21:
	goto	i1l5061
u675_20:
	goto	i1l5187
	
i1l439:	
	goto	i1l5187
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
i1l404:	
	line	1549
	
i1l5187:	
;doprnt.c: 1549: return 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1__doprnt)
	clrf	(?i1__doprnt+1)
	goto	i1l440
	
i1l5189:	
	line	1550
	
i1l440:	
	return
	opt stack 0
GLOBAL	__end_ofi1__doprnt
	__end_ofi1__doprnt:
	signat	i1__doprnt,90
	global	i1_putch

;; *************** function i1_putch *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\putch.c"
	line	7
global __ptext29
__ptext29:	;psect for function i1_putch
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\putch.c"
	line	7
	global	__size_ofi1_putch
	__size_ofi1_putch	equ	__end_ofi1_putch-i1_putch
	
i1_putch:	
;incstack = 0
	opt	stack 0
; Regs used in i1_putch: []
	line	9
	
i1l892:	
	return
	opt stack 0
GLOBAL	__end_ofi1_putch
	__end_ofi1_putch:
	signat	i1_putch,88
	global	i1_isdigit

;; *************** function i1_isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1__doprnt
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext30
__ptext30:	;psect for function i1_isdigit
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_ofi1_isdigit
	__size_ofi1_isdigit	equ	__end_ofi1_isdigit-i1_isdigit
	
i1_isdigit:	
;incstack = 0
	opt	stack 0
; Regs used in i1_isdigit: [wreg+status,2+status,0]
;i1isdigit@c stored from wreg
	movwf	(i1isdigit@c)
	line	14
	
i1l2235:	
	clrf	(i1_isdigit$1415)
	
i1l2237:	
	movlw	(03Ah)
	subwf	(i1isdigit@c),w
	skipnc
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l2243
u219_20:
	
i1l2239:	
	movlw	(030h)
	subwf	(i1isdigit@c),w
	skipc
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l2243
u220_20:
	
i1l2241:	
	clrf	(i1_isdigit$1415)
	incf	(i1_isdigit$1415),f
	goto	i1l2243
	
i1l780:	
	
i1l2243:	
	rrf	(i1_isdigit$1415),w
	
	goto	i1l781
	
i1l2245:	
	line	15
	
i1l781:	
	return
	opt stack 0
GLOBAL	__end_ofi1_isdigit
	__end_ofi1_isdigit:
	signat	i1_isdigit,88
	global	i1___wmul

;; *************** function i1___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __wmul          2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1__doprnt
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext31
__ptext31:	;psect for function i1___wmul
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_ofi1___wmul
	__size_ofi1___wmul	equ	__end_ofi1___wmul-i1___wmul
	
i1___wmul:	
;incstack = 0
	opt	stack 0
; Regs used in i1___wmul: [wreg+status,2+status,0]
	line	43
	
i1l2223:	
	clrf	(i1___wmul@product)
	clrf	(i1___wmul@product+1)
	goto	i1l2225
	line	44
	
i1l523:	
	line	45
	
i1l2225:	
	btfss	(i1___wmul@multiplier),(0)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l524
u215_20:
	line	46
	
i1l2227:	
	movf	(i1___wmul@multiplicand),w
	addwf	(i1___wmul@product),f
	skipnc
	incf	(i1___wmul@product+1),f
	movf	(i1___wmul@multiplicand+1),w
	addwf	(i1___wmul@product+1),f
	
i1l524:	
	line	47
	movlw	01h
	
u216_25:
	clrc
	rlf	(i1___wmul@multiplicand),f
	rlf	(i1___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u216_25
	line	48
	
i1l2229:	
	movlw	01h
	
u217_25:
	clrc
	rrf	(i1___wmul@multiplier+1),f
	rrf	(i1___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u217_25
	line	49
	movf	((i1___wmul@multiplier+1)),w
	iorwf	((i1___wmul@multiplier)),w
	skipz
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l2225
u218_20:
	goto	i1l2231
	
i1l525:	
	line	52
	
i1l2231:	
	movf	(i1___wmul@product+1),w
	clrf	(?i1___wmul+1)
	addwf	(?i1___wmul+1)
	movf	(i1___wmul@product),w
	clrf	(?i1___wmul)
	addwf	(?i1___wmul)

	goto	i1l526
	
i1l2233:	
	line	53
	
i1l526:	
	return
	opt stack 0
GLOBAL	__end_ofi1___wmul
	__end_ofi1___wmul:
	signat	i1___wmul,90
	global	i1___lwmod

;; *************** function i1___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwmod         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1__doprnt
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext32
__ptext32:	;psect for function i1___lwmod
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
;incstack = 0
	opt	stack 0
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	13
	
i1l2273:	
	movf	(i1___lwmod@divisor+1),w
	iorwf	(i1___lwmod@divisor),w
	skipnz
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l2291
u228_20:
	line	14
	
i1l2275:	
	clrf	(i1___lwmod@counter)
	incf	(i1___lwmod@counter),f
	line	15
	goto	i1l2281
	
i1l870:	
	line	16
	
i1l2277:	
	movlw	01h
	
u229_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u229_25
	line	17
	
i1l2279:	
	movlw	(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	goto	i1l2281
	line	18
	
i1l869:	
	line	15
	
i1l2281:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l2277
u230_20:
	goto	i1l2283
	
i1l871:	
	goto	i1l2283
	line	19
	
i1l872:	
	line	20
	
i1l2283:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u231_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u231_25:
	skipc
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l2287
u231_20:
	line	21
	
i1l2285:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	goto	i1l2287
	
i1l873:	
	line	22
	
i1l2287:	
	movlw	01h
	
u232_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u232_25
	line	23
	
i1l2289:	
	movlw	low(01h)
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l2283
u233_20:
	goto	i1l2291
	
i1l874:	
	goto	i1l2291
	line	24
	
i1l868:	
	line	25
	
i1l2291:	
	movf	(i1___lwmod@dividend+1),w
	clrf	(?i1___lwmod+1)
	addwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	clrf	(?i1___lwmod)
	addwf	(?i1___lwmod)

	goto	i1l875
	
i1l2293:	
	line	26
	
i1l875:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwmod
	__end_ofi1___lwmod:
	signat	i1___lwmod,90
	global	i1___lwdiv

;; *************** function i1___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwdiv         2    5[COMMON] unsigned int 
;;  __lwdiv         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1__doprnt
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext33
__ptext33:	;psect for function i1___lwdiv
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_ofi1___lwdiv
	__size_ofi1___lwdiv	equ	__end_ofi1___lwdiv-i1___lwdiv
	
i1___lwdiv:	
;incstack = 0
	opt	stack 0
; Regs used in i1___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l2247:	
	clrf	(i1___lwdiv@quotient)
	clrf	(i1___lwdiv@quotient+1)
	line	15
	
i1l2249:	
	movf	(i1___lwdiv@divisor+1),w
	iorwf	(i1___lwdiv@divisor),w
	skipnz
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l2269
u221_20:
	line	16
	
i1l2251:	
	clrf	(i1___lwdiv@counter)
	incf	(i1___lwdiv@counter),f
	line	17
	goto	i1l2257
	
i1l860:	
	line	18
	
i1l2253:	
	movlw	01h
	
u222_25:
	clrc
	rlf	(i1___lwdiv@divisor),f
	rlf	(i1___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u222_25
	line	19
	
i1l2255:	
	movlw	(01h)
	movwf	(??i1___lwdiv+0)+0
	movf	(??i1___lwdiv+0)+0,w
	addwf	(i1___lwdiv@counter),f
	goto	i1l2257
	line	20
	
i1l859:	
	line	17
	
i1l2257:	
	btfss	(i1___lwdiv@divisor+1),(15)&7
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l2253
u223_20:
	goto	i1l2259
	
i1l861:	
	goto	i1l2259
	line	21
	
i1l862:	
	line	22
	
i1l2259:	
	movlw	01h
	
u224_25:
	clrc
	rlf	(i1___lwdiv@quotient),f
	rlf	(i1___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u224_25
	line	23
	movf	(i1___lwdiv@divisor+1),w
	subwf	(i1___lwdiv@dividend+1),w
	skipz
	goto	u225_25
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),w
u225_25:
	skipc
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l2265
u225_20:
	line	24
	
i1l2261:	
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),f
	movf	(i1___lwdiv@divisor+1),w
	skipc
	decf	(i1___lwdiv@dividend+1),f
	subwf	(i1___lwdiv@dividend+1),f
	line	25
	
i1l2263:	
	bsf	(i1___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l2265
	line	26
	
i1l863:	
	line	27
	
i1l2265:	
	movlw	01h
	
u226_25:
	clrc
	rrf	(i1___lwdiv@divisor+1),f
	rrf	(i1___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u226_25
	line	28
	
i1l2267:	
	movlw	low(01h)
	subwf	(i1___lwdiv@counter),f
	btfss	status,2
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l2259
u227_20:
	goto	i1l2269
	
i1l864:	
	goto	i1l2269
	line	29
	
i1l858:	
	line	30
	
i1l2269:	
	movf	(i1___lwdiv@quotient+1),w
	clrf	(?i1___lwdiv+1)
	addwf	(?i1___lwdiv+1)
	movf	(i1___lwdiv@quotient),w
	clrf	(?i1___lwdiv)
	addwf	(?i1___lwdiv)

	goto	i1l865
	
i1l2271:	
	line	31
	
i1l865:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwdiv
	__end_ofi1___lwdiv:
	signat	i1___lwdiv,90
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trapezoidal
;;		_ISR
;;		_triangular
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext34
__ptext34:	;psect for function ___ftneg
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l2865:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u362_21
	goto	u362_20
u362_21:
	goto	i1l2869
u362_20:
	line	18
	
i1l2867:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l2869
	
i1l756:	
	line	19
	
i1l2869:	
	goto	i1l757
	
i1l2871:	
	line	20
	
i1l757:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trapezoidal
;;		_ISR
;;		_triangular
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext35
__ptext35:	;psect for function ___ftge
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l2845:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l2849
u357_20:
	line	7
	
i1l2847:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u358_21
	goto	u358_22
u358_21:
	addwf	(??___ftge+0)+1,f
	
u358_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u358_23
	goto	u358_24
u358_23:
	addwf	(??___ftge+0)+2,f
	
u358_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l2849
	
i1l738:	
	line	8
	
i1l2849:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u359_21
	goto	u359_20
u359_21:
	goto	i1l2853
u359_20:
	line	9
	
i1l2851:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u360_21
	goto	u360_22
u360_21:
	addwf	(??___ftge+0)+1,f
	
u360_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u360_23
	goto	u360_24
u360_23:
	addwf	(??___ftge+0)+2,f
	
u360_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l2853
	
i1l739:	
	line	10
	
i1l2853:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l2855:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l2857:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u361_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u361_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u361_25:
	skipnc
	goto	u361_21
	goto	u361_20
u361_21:
	goto	i1l2861
u361_20:
	
i1l2859:	
	clrc
	
	goto	i1l740
	
i1l2219:	
	
i1l2861:	
	setc
	
	goto	i1l740
	
i1l2221:	
	goto	i1l740
	
i1l2863:	
	line	13
	
i1l740:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trapezoidal
;;		_ISR
;;		_triangular
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext36
__ptext36:	;psect for function ___ftdiv
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l2803:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l2809
u349_20:
	line	56
	
i1l2805:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l731
	
i1l2807:	
	goto	i1l731
	
i1l730:	
	line	57
	
i1l2809:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l2815
u350_20:
	line	58
	
i1l2811:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l731
	
i1l2813:	
	goto	i1l731
	
i1l732:	
	line	59
	
i1l2815:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l2817:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l2819:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u351_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u351_20:
	addlw	-1
	skipz
	goto	u351_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l2821:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u352_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u352_20:
	addlw	-1
	skipz
	goto	u352_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l2823:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l2825:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l2827:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	i1l2829
	line	69
	
i1l733:	
	line	70
	
i1l2829:	
	movlw	01h
u353_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u353_25
	line	71
	
i1l2831:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u354_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u354_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u354_25:
	skipc
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l2837
u354_20:
	line	72
	
i1l2833:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
i1l2835:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l2837
	line	74
	
i1l734:	
	line	75
	
i1l2837:	
	movlw	01h
u355_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u355_25
	line	76
	
i1l2839:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l2829
u356_20:
	goto	i1l2841
	
i1l735:	
	line	77
	
i1l2841:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	i1l731
	
i1l2843:	
	line	78
	
i1l731:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;;  f2              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   44[BANK0 ] unsigned char 
;;  exp2            1   43[BANK0 ] unsigned char 
;;  sign            1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trapezoidal
;;		_ISR
;;		_triangular
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext37
__ptext37:	;psect for function ___ftadd
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l2731:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
i1l2733:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u325_20
	goto	i1l2739
u325_20:
	
i1l2735:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l2743
u326_20:
	
i1l2737:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l2743
u327_20:
	goto	i1l2739
	
i1l699:	
	line	93
	
i1l2739:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l700
	
i1l2741:	
	goto	i1l700
	
i1l697:	
	line	94
	
i1l2743:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u328_20
	goto	i1l703
u328_20:
	
i1l2745:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l2749
u329_20:
	
i1l2747:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l2749
u330_20:
	
i1l703:	
	line	95
	goto	i1l700
	
i1l701:	
	line	96
	
i1l2749:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l2751:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l704
u331_20:
	line	98
	
i1l2753:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l704:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l705
u332_20:
	line	100
	
i1l2755:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l705:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l2757:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l2759:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l2771
u333_20:
	goto	i1l2761
	line	109
	
i1l707:	
	line	110
	
i1l2761:	
	movlw	01h
u334_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u334_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l2763:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l2769
u335_20:
	
i1l2765:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l2761
u336_20:
	goto	i1l2769
	
i1l709:	
	goto	i1l2769
	
i1l710:	
	line	113
	goto	i1l2769
	
i1l712:	
	line	114
	
i1l2767:	
	movlw	01h
u337_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u337_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l2769
	line	116
	
i1l711:	
	line	113
	
i1l2769:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l2767
u338_20:
	goto	i1l714
	
i1l713:	
	line	117
	goto	i1l714
	
i1l706:	
	
i1l2771:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l714
u339_20:
	goto	i1l2773
	line	120
	
i1l716:	
	line	121
	
i1l2773:	
	movlw	01h
u340_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u340_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l2775:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l2781
u341_20:
	
i1l2777:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l2773
u342_20:
	goto	i1l2781
	
i1l718:	
	goto	i1l2781
	
i1l719:	
	line	124
	goto	i1l2781
	
i1l721:	
	line	125
	
i1l2779:	
	movlw	01h
u343_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u343_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l2781
	line	127
	
i1l720:	
	line	124
	
i1l2781:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l2779
u344_20:
	goto	i1l714
	
i1l722:	
	goto	i1l714
	line	128
	
i1l715:	
	line	129
	
i1l714:	
	btfss	(___ftadd@sign),(7)&7
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l2785
u345_20:
	line	131
	
i1l2783:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	i1l2785
	line	133
	
i1l723:	
	line	134
	
i1l2785:	
	btfss	(___ftadd@sign),(6)&7
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l2789
u346_20:
	line	136
	
i1l2787:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	i1l2789
	line	138
	
i1l724:	
	line	139
	
i1l2789:	
	clrf	(___ftadd@sign)
	line	140
	
i1l2791:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u347_21
	addwf	(___ftadd@f2+1),f
u347_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u347_22
	addwf	(___ftadd@f2+2),f
u347_22:

	line	141
	
i1l2793:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l2799
u348_20:
	line	142
	
i1l2795:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
i1l2797:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	i1l2799
	line	145
	
i1l725:	
	line	146
	
i1l2799:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	i1l700
	
i1l2801:	
	line	148
	
i1l700:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext38
__ptext38:	;psect for function ___lwtoft
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
i1l3161:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	i1l880
	
i1l3163:	
	line	31
	
i1l880:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   41[BANK0 ] unsigned long 
;;  exp1            1   45[BANK0 ] unsigned char 
;;  sign1           1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   32[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext39
__ptext39:	;psect for function ___fttol
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l3117:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u391_21
	goto	u391_20
u391_21:
	goto	i1l3123
u391_20:
	line	50
	
i1l3119:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l766
	
i1l3121:	
	goto	i1l766
	
i1l765:	
	line	51
	
i1l3123:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u392_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u392_20:
	addlw	-1
	skipz
	goto	u392_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l3125:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l3127:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l3129:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l3131:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l3133:	
	btfss	(___fttol@exp1),7
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l3143
u393_20:
	line	57
	
i1l3135:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u394_21
	goto	u394_20
u394_21:
	goto	i1l3141
u394_20:
	line	58
	
i1l3137:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l766
	
i1l3139:	
	goto	i1l766
	
i1l768:	
	goto	i1l3141
	line	59
	
i1l769:	
	line	60
	
i1l3141:	
	movlw	01h
u395_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u395_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l3141
u396_20:
	goto	i1l3153
	
i1l770:	
	line	62
	goto	i1l3153
	
i1l767:	
	line	63
	
i1l3143:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u397_21
	goto	u397_20
u397_21:
	goto	i1l3151
u397_20:
	line	64
	
i1l3145:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l766
	
i1l3147:	
	goto	i1l766
	
i1l772:	
	line	65
	goto	i1l3151
	
i1l774:	
	line	66
	
i1l3149:	
	movlw	01h
	movwf	(??___fttol+0)+0
u398_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u398_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l3151
	line	68
	
i1l773:	
	line	65
	
i1l3151:	
	movf	(___fttol@exp1),f
	skipz
	goto	u399_21
	goto	u399_20
u399_21:
	goto	i1l3149
u399_20:
	goto	i1l3153
	
i1l775:	
	goto	i1l3153
	line	69
	
i1l771:	
	line	70
	
i1l3153:	
	movf	(___fttol@sign1),w
	skipz
	goto	u400_20
	goto	i1l3157
u400_20:
	line	71
	
i1l3155:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	i1l3157
	
i1l776:	
	line	72
	
i1l3157:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l766
	
i1l3159:	
	line	73
	
i1l766:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext40
__ptext40:	;psect for function ___ftmul
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
i1l3067:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l3073
u377_20:
	line	68
	
i1l3069:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l746
	
i1l3071:	
	goto	i1l746
	
i1l745:	
	line	69
	
i1l3073:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u378_21
	goto	u378_20
u378_21:
	goto	i1l3079
u378_20:
	line	70
	
i1l3075:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l746
	
i1l3077:	
	goto	i1l746
	
i1l747:	
	line	71
	
i1l3079:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u379_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u379_20:
	addlw	-1
	skipz
	goto	u379_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u380_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u380_20:
	addlw	-1
	skipz
	goto	u380_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
i1l3081:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
i1l3083:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
i1l3085:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
i1l3087:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
i1l3089:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l3091
	line	135
	
i1l748:	
	line	136
	
i1l3091:	
	btfss	(___ftmul@f1),(0)&7
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l3095
u381_20:
	line	137
	
i1l3093:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u382_21
	addwf	(___ftmul@f3_as_product+1),f
u382_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u382_22
	addwf	(___ftmul@f3_as_product+2),f
u382_22:

	goto	i1l3095
	
i1l749:	
	line	138
	
i1l3095:	
	movlw	01h
u383_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u383_25

	line	139
	
i1l3097:	
	movlw	01h
u384_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u384_25
	line	140
	
i1l3099:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u385_21
	goto	u385_20
u385_21:
	goto	i1l3091
u385_20:
	goto	i1l3101
	
i1l750:	
	line	143
	
i1l3101:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l3103
	line	144
	
i1l751:	
	line	145
	
i1l3103:	
	btfss	(___ftmul@f1),(0)&7
	goto	u386_21
	goto	u386_20
u386_21:
	goto	i1l3107
u386_20:
	line	146
	
i1l3105:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u387_21
	addwf	(___ftmul@f3_as_product+1),f
u387_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u387_22
	addwf	(___ftmul@f3_as_product+2),f
u387_22:

	goto	i1l3107
	
i1l752:	
	line	147
	
i1l3107:	
	movlw	01h
u388_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u388_25

	line	148
	
i1l3109:	
	movlw	01h
u389_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u389_25

	line	149
	
i1l3111:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u390_21
	goto	u390_20
u390_21:
	goto	i1l3103
u390_20:
	goto	i1l3113
	
i1l753:	
	line	156
	
i1l3113:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l746
	
i1l3115:	
	line	157
	
i1l746:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext41
__ptext41:	;psect for function ___ftpack
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2319:	
	movf	(___ftpack@exp),w
	skipz
	goto	u240_20
	goto	i1l2323
u240_20:
	
i1l2321:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l2329
u241_20:
	goto	i1l2323
	
i1l680:	
	line	65
	
i1l2323:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l681
	
i1l2325:	
	goto	i1l681
	
i1l678:	
	line	66
	goto	i1l2329
	
i1l683:	
	line	67
	
i1l2327:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u242_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u242_25

	goto	i1l2329
	line	69
	
i1l682:	
	line	66
	
i1l2329:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l2327
u243_20:
	goto	i1l685
	
i1l684:	
	line	70
	goto	i1l685
	
i1l686:	
	line	71
	
i1l2331:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l2333:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
i1l2335:	
	movlw	01h
u244_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u244_25

	line	74
	
i1l685:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l2331
u245_20:
	goto	i1l2339
	
i1l687:	
	line	75
	goto	i1l2339
	
i1l689:	
	line	76
	
i1l2337:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u246_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u246_25
	goto	i1l2339
	line	78
	
i1l688:	
	line	75
	
i1l2339:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l2337
u247_20:
	
i1l690:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l691
u248_20:
	line	80
	
i1l2341:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l691:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l2343:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u249_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u249_20:
	addlw	-1
	skipz
	goto	u249_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l2345:	
	movf	(___ftpack@sign),w
	skipz
	goto	u250_20
	goto	i1l692
u250_20:
	line	84
	
i1l2347:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l692:	
	line	85
	line	86
	
i1l681:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
global	___latbits
___latbits	equ	2
	global	fptotal
fptotal equ 1
	global	i1fptotal
i1fptotal equ 1
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable,__fptable
__fptable:
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__putch:
	ljmp	_putch
	global __end_of__fptable
	__end_of__fptable:
	global __size_of__fptable
	__size_of__fptable	equ	__end_of__fptable-__fptable
	global	i1fptable,__i1fptable
__i1fptable:
i1fptable:
	movwf (btemp+1)&07Fh
	movlw high(i1fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	i1fpbase
i1fpbase:
	goto i1fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp_i1_putch:
	ljmp	i1_putch
	global __end_of__i1fptable
	__end_of__i1fptable:
	global __size_of__i1fptable
	__size_of__i1fptable	equ	__end_of__i1fptable-__i1fptable
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
