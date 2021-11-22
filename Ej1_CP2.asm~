org 00h
call Limpia_Ram
org 300h
Limpia_Ram:push 00h
mov R0,40h
loop:mov @R0,#1
inc R0
cjne R0,#7Fh,loop
pop 00h
ret
end


