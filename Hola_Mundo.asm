		;Programa que simplemente enciende un LED conectado a RB0
		LIST P=16F84A												;Declaramos el uC a usar
		include "p16f84a.inc" 										;incluimos la hoja de definiciones para ese uC
		__CONFIG _XT_OSC & _WDT_OFF									;Declaramos la palabara de configuradion del uC
	
		ORG 0	
		goto inicio
		ORG 5
inicio
	banksel TRISB													;Nos desplazamos al banco dónde está TRISB
	clrf	TRISB													;Limpiamos TRISB,por si hubiera algo aún definido, y de paso lo ponemos como salida
	banksel PORTB													;Volvemos al banco dónde esta PORTB
	clrf	PORTB													;Limnpiamos PORTB, por si hubiera algo definido previamente
	bsf		PORTB,0													;Activamos el bit 0 de PORTB, iluminando el LED
espera																;Bucle infinito intencionalmente puesto, para que no se apague el led
		goto espera
		end
	
	
	
	
	