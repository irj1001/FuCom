	ORG 1000H
	LXI H,1196H
	MVI M,12H
	LXI 1197H
	MVI M,0
	LXI H,1198H
	MVI M,1	Inicio multiplicar
MULT:	LDA 1198H
	LXI H,1996H
	MOV M,A
	LXI H,1199H
	MVI M,9	Numero
	LXI H,1197H	
	INR R
	MOV H,M
	MVI M,0
	MVI C,0
BUCLE:	LDA 1996H
	RRC
	STA 1996H
	LDA 1999H
	JNC CERO
SUMA:	LXI H,1997H
	MOV H,M
	ADD M
	MOV M,A
CERO:	RLC
	STA 1999H
	INR C
	MOV A,C
	CPI 4
	JNZ BUCLE
	LXI H,1998H
	MOV A,M
	CPI 10D
	JNZ MULT
	RST 1
	END


	
	
	
	
	
	
	
	
