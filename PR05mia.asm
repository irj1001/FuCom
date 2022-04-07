;Autores: Alex Tomé Aguiar e Irene Ruiz Juez
;Fecha: 24/04/2019
;Practica: 5
;DESCRIPCION:PROGRAMA QUE CALCULA LA TABLA DE MULTIPLICAR DE UN Nº Y QUE GUARDA A PARTIR
;DE LA 1201H LOS MULTIPLOS DEL 1 AL 10 Y EN LA 1200H EL Nº DEL CUAL HACEMOS LA TABLA
;1200 ALMACENA Nº 1201-1210 MUESTRA RESULTADOS(HEX)

	.ORG 1000H	;Dirección de inicio del programa
	LXI H,1200H	;Cargamos en la dirección 1200H
	MVI B,05H	;Cargamos el valor 05 en B
	MOV M,B		;Movemos dicho valor de B a memoria
	MVI C,10H	;Establecemos el contador C a 9
	MVI E,00H	;Ajustamos el resgistro E a 0
	LXI H,1201H	;Cargamos en la dirección 1201H
SUM:
	MOV A,E		;Cargamos E en el acumulador
	ADD B		;Sumamos lo de B al acumulador
	MOV E,A		;Cargamos dicho resultado en E
	MOV M,E		;Movemos dicho valor a la memoria
	INX H		;Incrementamos la dirección de memoria
	DCR C		;Decrementamos un valor al contador
	JZ FIN		;SI EL CONTADOR ES CERO VAMOS A FIN
	JMP SUM		;EN CASO CONTARIO VAMOS A SUM
FIN:
	HLT		;FIN PROGRAMA

 