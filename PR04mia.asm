;Autores:Alex Tomé Aguiar e Irene Ruiz Juez
;Grupo:203
;Práctica: 4 - Multiplicación por suma de desplazamiento

	.ORG 1000H
	LXI H,1200H		;Apuntamos a la dirección 1200H
	MVI M,3			;Cargamos el valor 3 en la memoria(DIRECCION HL)
	INR L			;Apuntamos a la dirección 1201H
	MVI M,2			;Cargamos el valor 2 en la memoria
	INR L			;Apuntamos a la dirección 1202H
	MVI M,0			;Movemos el valor 0 a la dirección 1202H 
TODO:	LDA 1201H		;Ponemos el segundo operando en el acumulador
	RRC			;Hacemos que el flag sea 0 o 1 (rotamos)
	STA 1201H		;Volvemos a guardar en la memoria el operando
	LDA 1200H		;Guardamos en A el valor que hay en 1200H
	JNC CER0		;SI EL CERO ES EL BIT MENOS SIGNIFICATIVO NO SUMAMOS
SUMA:	ADD M			;Sumamos al primer operando el valor de la memoria
	MOV M,A			;Guardamos en la memoria el valor que obtenemos
CER0:	RLC			;Desplazamiento
	STA 1200H		;Guardamos el resultado
	INR B			;Incrementamos el registro
	MOV A,B			;Guardamos el valor de B en A
	CPI 4			;Comparamos con 4
	JNZ TODO		;Si no es 4, repetimos
	HLT			;FIN PROGRAMA