;16 bit multiplication
start:
    mov ax,1234h
    mov bx,7698h
    ; for ascii conversion add al,31h
    mul bx
    mov ah,4ch
    int 21h
    ends
    end start