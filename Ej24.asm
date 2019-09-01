	LIST P=PIC16F877A				;Definimos el modelo de uC
	INCLUDE "p16f877a.inc"	 		;Incluimos la hoja de definiciones del uC
	__CONFIG _XT_OSC & _WDT_OFF & _LVP_OFF ;Palabra de configuración
;--------------------DECLARACIÓN DE VARIABLES--------------------------------
CONT1	EQU	0x20
CONT2	EQU	0x21
CENTESI	EQU	0x23
SEGUN	EQU 0x24
CONT3   EQU 0x25
;------------------------PROGRAMA----------------------------------------------
	ORG 0
	GOTO setup
	ORG	4
	goto ISR
	ORG 5
setup
	bsf		STATUS,RP0
	clrf	TRISC
	movlw	b'11111111'
	movwf	TRISB
	bcf		STATUS,RP0
	bsf		INTCON,GIE
	bsf		INTCON,INTE
	clrf	PORTC
main
	goto main
ISR
	call	buclecillo
	incf	PORTC,1
	bcf		INTCON,INTF
RETFIE
buclecillo
	movlw .3
	movwf STATUS
END


	



	