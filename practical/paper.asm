d2 segment
    a db 11h,22h,33h,44h,55h
    b db 5 dup(00h)
ends
start:
    mov ax,d2
    mov ds,ax
    
    lea si,a
    lea di,b 
    mov ax ,00h 
    mov cl,05h
    
    loop1:
        mov al,[si]
        mul al
        mov [di],al
        mov ax,00h
        inc si
        inc di
        dec cl
        jnz loop1
        ends
        end start
        