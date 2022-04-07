;Autor:Irene Ruiz y Alex Tomé
;Programa que suma 2 numeros almacenados previamente en las posiciones 
;de memoria 1200 y 1201, y guarda el resultado en la 1203.
;Pruebas: 3+5,9+5,5+5,27+5,2C+5
;Fecha:13/3/19
	ORG 1000H	;Cargar desde la dirección 1000H
	LXI H,1200H
	MVI M,3
	MOV A,M 	;Mover el dato al acumulador
	LXI H,1201H
	MVI M,5
	MOV B,M 	;Mover el dato al registro B
	ADD B 		;Suma el registro B al acumulador
	DAA		;Ajuste en BCD del resultado
	LXI H,1202H
	MOV M,A		;Mover el dato del acumulador a la memoria
	RST 1		;Devuelve el control
	END		;Fin de código