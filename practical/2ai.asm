;16 bit addition
start:
    mov bx,1234h
    mov cx,7698h
    mov al,bl
    add al,cl
    daa
    mov dl,al
    mov al,bl
    adc al,ch
    daa
    mov dh,al
    mov ah,4ch
    int 21h
    
    ends
    end start