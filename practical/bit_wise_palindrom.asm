;bit wise palindrom
d2 segment
    msg1 db 'palindrom$'
    msg2 db 'not palindrom$'
    input db 0dbh
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov bl,input
    mov cx, 008h
    mov dl,bl
    
    up:
        rol bl,01h
        rcr dl,01h
        loop up
        
        cmp bl,dl
        jz next
        
        lea dx,msg2
        mov ah,09h
        int 21h
        jmp last
        
        next:
        lea dx,msg1
        mov ah,09h
        int 21h
        last:
        mov ah,4ch
        int 21h
        ends 
        end start