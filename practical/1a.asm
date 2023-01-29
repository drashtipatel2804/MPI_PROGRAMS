;Byte and word transfer in different addressing modes
d2 segment
    a db 5 dup(0)
    db 78h
    db 20 dup(0)
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov bx,offset a
    mov si , 05h
    mov cl,[bx+si]
    mov si,11h
    mov [bx+si] ,cl
    
    mov ah,4ch
    int 21h
    ends
    end start