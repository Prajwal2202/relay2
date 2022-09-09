org 00h
		sjmp main

		ORG		03H
		ACALL	INT0_ISR
		RETI

	   	ORG		13H
		ACALL	INT1_ISR
		RETI


INT0_ISR:
		MOV		P0, #0
		RET

INT1_ISR:
		MOV		P0, #0xFF
		RET

main:	MOV		P0, #0xFF
	   	
		SETB	EA
		SETB	EX0
		SETB	EX1
		CLR		IT0	
		CLR		IT1

BACK:
		SJMP	BACK

DELAY1:
		DJNZ	R0, DELAY1
		DJNZ	R1, DELAY1
		RET

		END
