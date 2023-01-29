;16 bit substraction
start:
    mov bx,1234h
    mov cx,7698h
    mov al,bl
    sub al,cl
    das
    mov dl,al
    mov al,bl
    sbb al,ch
    das
    mov dh,al
    mov ah,4ch
    int 21h
    ends
    end start 