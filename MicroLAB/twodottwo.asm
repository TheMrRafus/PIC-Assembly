;Ejercicio 2.2 laboratorio de PIC
;
;
;En este ejericio se trata de mostrar el estado de unos switches del Puerto B en los LEDs del Puerto C
;
	LIST P=PIC16F876A
	INCLUDE "p16f876a.inc"	 									;Incluimos la hoja de definiciones del uC
	__CONFIG _XT_OSC & _WDT_OFF & _LVP_OFF 						;Incluimos la palabra de config del uC
	
	ORG 0
	goto setup
	ORG 5
setup
	bsf STATUS,RP0												;Nos vamos al banco 1
	movlw b'11111111'											;Cargamos 8 bits para cargarlos despues a PORT
	movwf TRISB													;Lo cargamos a TRISB
	movlw b'00000000'											;Cargamos 8 bits para poner portC como salida
	movwf TRISC													;Lo cargamos a TRISC
	bcf	STATUS,RP0												;Volvemos al banco 1												
loop
	movf PORTB,0
	movwf PORTC
	goto loop
END