org 0000h
	jmp inicio
	org 0100h
tabla7seg: db 0c0h, 0f9h, 0a4h, 0b0h, 99h, 92h, 82h, 0f8h, 80h, 90h

inicio: mov P2, 0c0h
	mov P1, 0c0h
	mov R2, #0
ciclo:	jb P3.0, $
	inc R2
	cjne R2,#51,next
	mov R2, #0
next:	mov A, R2
	call visual
	jmp ciclo

visual: mov B, #10
	div AB
	mov DPTR, #tabla7seg
	movc A,@A+DPTR
	mov P2, A
	mov A,B
	movc A,@A+DPTR
	mov P1,A
	ret
end
