;Autor:Irene Ruiz y Alex Tomé
;Fecha:27/03/19
;Descripción: Programa que multiplica dos números de 4 bits mediante la suma
;con deplazamiento.

	ORG 1000H
	LXI H,1200H
	MVI M,3
	LXI H,1201H
	MVI M,5
	LXI H,1202H
	MVI M,0
	MVI C,0
BUCLE:	LDA 1201H
	RRC	;Rotamos a la derecha
	STA 1201H	;Mueve a la 1201 el dato
	LDA 1200H	;Carga el dato de la 1200
	JNC CERO	;Si el bit es 0, salta a cero
SUMA:	LXI H,1202H
	ADD M
	MOV M,A
CERO:	RLC	;Rotamos a la izquierda
	STA 1200H	;Guardamos en la dirección 1200
	INR C	;Incrementa el contador
	MOV A,C
	CPI 4	;Compara con 4
	JNZ BUCLE	;Si no es 4, va al bucle
	RST 1
	END