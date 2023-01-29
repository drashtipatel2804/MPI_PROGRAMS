;block exchange
d2 segment
    a db 11h,22h,33h
    b db 44h,55h,66h
    count db 03h
ends
start:
    mov ax,d2
    mov ds,ax
    
    lea si,a
    lea di,b
    mov cl,count
    
    next:
        mov al,[si]
        mov bl,[di]
        xchg al,bl
        mov [si],al
        mov [di],bl
        inc si
        inc di
        loop next
        
        mov ah,4ch
        int 21h
        ends
        end start