;+ve num or -ve
d2 segment
    a db ' POSITIVE.$'
    b db ' NEGATIVE.$'
    input db 19h
ends
start:
    mov ax,d2
    mov ds,ax
    mov al,input
    
    rol al,01
    jc next
    
    lea dx,a
    mov ah,09h
    int 21h
    jmp last
    
    next:   lea dx,b
            mov ah,09h
            int 21h
    last:   mov ah,4ch
            int 21h
    ends
    end start
            