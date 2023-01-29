d2 segment
       sum db 00h
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov ah,00h
    mov ch,00h
    mov al,09h
    mov cl,09h 
    next:
        add sum,al
        dec al
        dec cl
        jnz next
        
        
        mov ah,4ch
        int 21h
        
        ends
        end start
        