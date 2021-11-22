org 00h
call limpia_ram
limpia_ram:org 300h
loop:mov @R1,#0
inc r1
cjne r1,#7Fh,loop
ret
end
