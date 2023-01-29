;factorial of number

d2 segment
       a db 04h
       ans dw 0000h
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov ch,00h
    mov al,a
    mov bl,al
    mov cl,al
    sub cl,02h
    next:
        dec bl
        mul bl
        loop next
        mov ans,ax
        
        mov ah,4ch
        int 21h
        ends
        end start
       