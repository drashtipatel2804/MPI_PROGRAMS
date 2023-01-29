;block exchange without xchange instruction

d2 segment
    a db 11h,22h,33h
    b db 44h,55h,66h
    c db 3 dup(0)
ends
start:
    mov ax,d2
    mov ds,ax
    
    lea si,a
    lea di,c
    mov cl,03h
    
    next:
        mov ah,[si]
        mov [di],ah
        inc si
        inc di
        dec cl
        jnz next
        
    lea si,b
    lea di,a
    mov cl,03h 
    next1:
        mov ah,[si]
        mov [di],ah
        inc si
        inc di
        dec cl
        jnz next1
    lea si,c
    lea di,b
    mov cl,03h
    next2:
        mov ah,[si]
        mov [di],ah
        inc si
        inc di
        dec cl
        jnz next2
        
      mov ah,4ch
      int 21h
      ends 
      end start
    
        