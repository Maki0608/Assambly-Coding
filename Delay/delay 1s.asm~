	org 0000h
	jmp inicio
	
inicio:	mov R2, #0
	
again:	mov R7, #250
rearm:	mov R6, #100
	djnz R6, next
next:	djnz R7, rearm
	inc R2
	cjne R2, #20, again
end
	
	