; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
			; 
	MOV AL,30	; Green Red 
	OUT 01		; 
	MOV AL,1E
	CALL 80
	 
	MOV AL,50	; Yellow Red
	OUT 01		; 
	MOV AL,5
	CALL 80
	
	MOV AL,90	; Red Red
	OUT 01		; 
	MOV AL,1
	CALL 80

	MOV AL,98	; Red Red/Yellow
	OUT 01		; 
	MOV AL,5
	CALL 80

	MOV AL,84	; Red Green
	OUT 01		; 
	MOV AL,1E
	CALL 80

	MOV AL,88	; Red Yellow
	OUT 01		; 
	MOV AL,5
	CALL 80

	MOV AL,90	; Red Red
	OUT 01		; 
	MOV AL,1
	CALL 80

	MOV AL,D0	; Red/Yellow Red
	OUT 01		; 
	MOV AL,5
	CALL 80

	JMP Start	; 
			; 

; ----- Time Delay Procedure Stored At Address [30] -------------
	ORG	80	; Generate machine code from address [30]

	PUSH	AL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	AL	; Subtract one from AL.
	JNZ	REP	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	AL	; Restore AL from the stack.

	RET		; Return from the procedure.

	END	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
