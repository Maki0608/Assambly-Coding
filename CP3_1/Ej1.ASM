barrido		EQU	0000001b								;codigo de barrdio
unidades	EQU 30h										;RAM de Display Unidades
decenas		EQU 31h										;RAM de Display Decenas
	
	
	
	
	
	
	org 0000h
	jmp config
t7seg:	db 0c0h, 0f9h, 0a4h, 0b0h, 099h, 092h, 082h, 0f8h, 080h, 090h   ; anodo comun



config: mov DPTR,#t7seg
	mov R0,#35h 					;puntero a donde voy a almacenar los datos
	mov R1,#unidades				;puntero a RAM de display 
	mov unidades,0c0h
	mov decenas,0c0h
	mov R4,#barrido

ciclo:	call delay
	mov A,@R1
	mov R1,#decenas
	mov P2,A
	mov P3,R4
	mov A,R4
	RL A
	mov R4,A
	cjne R4,#0000100b,next
	mov R1,#unidades
	mov R4,#barrido

next:	jmp ciclo 



delay:	mov R5, 250
loop:	mov R3, 20
	djnz R3,$
	djnz R5,loop
	ret
	
	
END	