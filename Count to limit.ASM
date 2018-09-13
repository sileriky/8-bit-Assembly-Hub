; This file showcases the use of registers AL and BL in order 
;to continuously add 2 to a number until a limit has been 
;passed. 

; Since this emulator requires assembly-type instructions, 
;the quickest way to store and use small amounts of data is by
;using registers (specifically the AL, BL, CL and DL registers). 
;These registers are for all intents and purposes 8-bit signed 
;or unsigned integers. The other 3 registers (IP, SP and SR) 
;are also used indirectly: the SR register holds the data for 
;some flags. We are concerned with the S (sign) flag, which 
;becomes 1 if the result of the last calculation was negative.

; ===== COUNT =================================================
	MOV	AL,0	; Initiate the counter to 0x0
REP:			; Label for start of loop
	ADD	AL,2	; Run AL+0x2 and store result in AL
	MOV	BL,9	; Set BL to 0x9. Change this to desired 
			;limit minus 1
	SUB BL,AL	; Run BL-AL and store result in BL
	JNS	REP	; Jump to the start of the loop, if we
			;didn't pass the limit
	END		; This last statement is required for 
			;compilation. Check the contents of AL
			;for result.
; =============================================================

; This algorithm is equivalent to calculating X+2*? > Y, 
;where X = AL, Y = BL.
; The first value that satisfies this equation can be found 
; in AL, at the end of execution.