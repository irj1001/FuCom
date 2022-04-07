; Autores : Adolfo  Jesús Viñé Ghezzi 
; 19/04/2019
; Se realiza una tabla de multiplicar en programa ensamblador 
; En este caso la tabla de multiplicar es del numero 3


;Cargamos el número del que vamos a hacer la tabla 
	.ORG 1000H			; inicio del programa en la posicion 1000H
	LXI H,1200H			; carga la posicion de memoria 1200H
	MVI M,03				; mueve el numero X a la posicion de memoria cargada anteriormente
	MOV B,M				; mueve lo que tengamos en la memoria cargada anteriormente al registro B

MULT:					; subrutina de multiplicación
	MOV D,B				; mueve el contenido del registro B al registro D
	INX H				; incrementa en 1 el contenido del registro H
	MOV E,L				; mueve el contenido del registro L al registro E
	MVI M,00				;
	MVI C,04				; carga el 4 en el registro C

INICIO:					; subrutina de inicio
	MOV A,E				; mueve el contenido del registro E al el acumulador
	RAR				; rotar a la derecha con acarreo lo que tengamos en el acumulador
	MOV E,A				; movemos el contenido del acumulador de vuelta al registro E
	JNC DSPLZ			; pasamos a la rutina de desplazamiento
	MOV A,D				; movemos el contenido del registro D al acumulador
	ADD M			; sumamos el contenido de la memoria con el del acumulador
	DAA
	MOV M,A				; movemos el contenido del acumulador a la memoria

DSPLZ:					; subrutina de desplazamiento
	MOV A,D				; movemos el contenido del registro D al acumulador
	DCR C				; decrementamos el registro C en uno
	RLC				; rotamos a la izquierda sin acarreo
	MOV D,A				; movemos de vuelta lo que tenemos en el acumulador al registro D
	JNZ INICIO			; saltamos a la subrutina inicio
	MVI A,9				; movemos el numero 9 al acumulador
	CMP L				; comparamos el acumulador con el registro L
	JNZ MULT			; saltamos de vuelta a la subrutina multiplicación
	HLT				; fin del programa
