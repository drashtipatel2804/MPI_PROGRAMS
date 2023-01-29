;divison of 16 bit

start:
    mov ax,1234h
    mov bx,7698h
    
    div bx
    mov ah,4ch
    int 21h
    ends
    end start