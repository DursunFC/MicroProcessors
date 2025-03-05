.model small

.data

.code

main proc
        mov cx,00
	    MOV AX,3000H        ;Load data segment value
	    MOV DS,AX           ;Copy the value
		MOV	0058H,04H
		MOV	0053H,06H

	    MOV AX,0008H        ;Initialization
	    MOV DI,AX           ;Copy the initialization



		MOV	DX,0000H
		;MOV	DS,1000H
		MOV	DL,[0053H]
		MOV	CX,DX
		ADD	DX,004AH
		;MOV	DS,2000H
		MOV	BX,DX
		MOV AL,[BX + DI]
		MOV	DX,00
CPE303:	MUL CL
        ADD DX,AX
		DEC	BX
		DEC	CX
		JNZ	CPE303
		CMP	AX,0015H
QUIT:	RET
;What does the program do? Write the goal in the PDF.
        
endp
end main