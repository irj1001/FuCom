;Autor:Irene Ruiz y Alex Tom�
;Fecha:13/2/19
;Grupo 203
;Descripci�n:Programa que guarde los n�meros 3 y 5 en las
;posiciones de memoria 1200 y 1201 respectivamente.
	ORG 1000H
	LXI H,1200H	;Seleccionar la posici�n 1200
	MVI M,3		;Mover 3 a memoria
	LXI H,1201H	;Seleccionar la posici�n 1200
	MVI M,5		;Mover 5 a memoria
	RST 1
	END