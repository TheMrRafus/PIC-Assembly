	LIST P=PIC16F877A				;Definimos el modelo de uC
	INCLUDE "p16f877a.inc"	 		;Incluimos la hoja de definiciones del uC
	__CONFIG _XT_OSC & _WDT_OFF & _LVP_OFF ;Palabra de configuración
	ORG 0
	GOTO setup
	ORG 5
setup
	bsf 	STATUS,RP0				;Vamos al banco 1 de memoria
	clrf	TRISC					;Limpiamos TRISC
	bsf		TRISC,RC2				;Ponemos el bit 2 como entrada
	bcf		TRISB,RB5				;Ponemos RB5 como salida
	bcf		STATUS,RP0				;Volvemos al banco 1 de la memoria
bucle
	btfss	PORTC,RC2
	goto	apagado
	goto	encendido
apagado
	bcf 	PORTB,RB5
	goto	bucle
encendido
	bsf 	PORTB,RB5					;Encendemos el led
	goto	bucle						;Bucle dejado intecinalmente para que no se apague el LED
	END									;Ponemos la directiva para que el programa pueda acabar
	

		