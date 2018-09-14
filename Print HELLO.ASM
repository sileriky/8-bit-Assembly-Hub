	;Put ASCII values for the word HELLO into RAM addresses C0-C4
	

	MOV BL,C0 ; Initiate BL with the first RAM address	
	
	MOV AL,48	;Write H
	CALL 50
	MOV AL,45	;Write E
	CALL 50
	MOV AL,4C	;Write L
	CALL 50
	MOV AL,4C	;Write L
	CALL 50
	MOV AL,4F	;Write O
	CALL 50
	HALT

	;Write Procedure
	ORG 50		;Y U NO WORK??
	MOV [BL],AL
	INC BL
	RET
	
	END
		