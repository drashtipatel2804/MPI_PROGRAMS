;WAP	for	string	palindrom

d2 segment
    string db 'ara'
    length equ ($-string)
    rev db length dup(0)  
    msg1 db 13,10, 'str is palindrom$'
    msg2 db 'not palindrom$'
ends
code segment
    start:
        mov ax,d2
        mov ds,ax
        mov es,ax
        
        mov cx,length
    
        mov si,[string+length-1]
        lea di,rev
        abc:
            mov al,[si]
            mov [di],al
            inc di
            dec si
            loop abc 
            
              mov cx,length
              lea si, string
              lea di,rev
              rep cmpsb
              jnz p1 ;string is not equal to 
              lea dx,msg1
              jmp p2
              
           p1:lea dx,msg2
           p2:mov ah,09h
           int 21h
        mov ah,4ch
        int 21h
ends
end start