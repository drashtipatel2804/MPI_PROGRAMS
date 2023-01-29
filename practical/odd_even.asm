d2 segment
    msg1 db 'odd$'
    msg2 db 'even$'
    input db 05h
ends
start:
    mov ax,d2
    mov ds,ax
    mov al,input
    
    sar al,01h
    jc next
    
    lea dx,msg2
    mov ah,09h
    int 21h
    jmp last
    
    next:
        lea dx,msg1
        mov ah,09h
        int 21h
        
    last:
        mov ah,4ch
        int 21h
        ends
        end start