;Ejercicio 2.2 laboratorio de PIC
;
;
;En este ejericio se trata de mostrar el estado de unos switches del Puerto B en los LEDs del Puerto C
;
	LIST P=PIC16F876A
	INCLUDE "p16f876a.inc"	 									;Incluimos la hoja de definiciones del uC
	__CONFIG _XT_OSC & _WDT_OFF & _LVP_OFF 						;Incluimos la palabra de config del uC
	
	ORG 0
	ORG 5
		