	LIST P=PIC16F877A				;Definimos el modelo de uC
	INCLUDE "p16f877a.inc"	 		;Incluimos la hoja de definiciones del uC
	__CONFIG _XT_OSC & _WDT_OFF & _LVP_OFF ;Palabra de configuración
	ORG 0
	GOTO setup
	ORG 5
setup
	CLRF STATUS					;Limpiamos STATUS por si hubiera algo anteriormente guardado
	CLRF PORTB					;Limpiamos PORTB también por si hubiera algo
	banksel TRISB			;Nos vamos al banco 1, dónde esta TRISB
	BSF TRISB,RB0				;Ponemos el  pin 0 como salida
;	BCF	STATUS,RP0				;Volvemos al banco 1, dónde está PORTB
	banksel PORTB;
loop
	BSF PORTB,RB0				;Encendemos el led conectado a RB0
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP							;Esperamos unos cuantos ciclos de instrucción
	BCF PORTB,RB0				;Apagamos el LED
	GOTO loop					;Volvemos
	END