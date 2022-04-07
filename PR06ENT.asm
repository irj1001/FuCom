;AUTORES: Alex Tomé Aguiar e Irene Ruiz Juez
;DESCRIPCION: Muestra por pantalla la tecla que pulsamos en el equipo entrenador
;RECUROS UTILIZADOS: B=TECLA PULSADA
;RUTINA DE INTERRUPCION 5.5

	ORG 1000H	;Inicio en la dirección 1000H del programa
	MVI A,8		;Activamos el bit MSE
	SIM		;Fijamos la máscara
BUCLE:	RIM		;Cargamos la máscara
	ANI 16		;Hacemos un AND con 16
	CPI 16 		;Comparamos con 16
	JNZ BUCLE	;Vamos al bucle
	CALL 044EH	;Llamamos a la dirección 044EH
	MOV B,A		;Movemos los datos del REG.A AL REG.B
	CALL 04D5H	;Llamamos a la dirección 04D5H
	EI		;Habilita las interrupciones
	MOV A,B		;Movemos los datos del REG.B AL REG.A
	CPI 0		;Comparamos con 0
 	JMP BUCLE	;Vamos al bucle
	RST 1		;Reinicia en la posicion 1
	END		;TERMINA EL PROGRAMA