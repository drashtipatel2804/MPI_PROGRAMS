;count no of 1's nd 0's 
d2 segment
    msg1 db 10,13,'count 0 = $'
    msg2 db 10,13,'count 1 = $'
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov al,10h
    mov bx,00h
    mov cx,08h
    mov dx,00h
    next1:
    sar al,01h
    jc next 
    
    inc bl
    loop next1 
    jmp over1
    
    next:
    inc bh
    loop next1
    
    over1:lea dx,msg2  ; for 1
    mov ah,09h
    int 21h 
    add bh,30h
    mov dl,bh
    mov ah,02h
    int 21h  
    
    lea dx,msg1 ; for 0
    mov ah,09h
    int 21h
    add bl,30h
    mov dl,bl
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    ends 
    end start
    