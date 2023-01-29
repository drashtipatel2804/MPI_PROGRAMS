;Block transfer without overlap

d2 segment
    a dw 1122h,3344h
    b dw 2 dup(0)
    count dw 02h
ends
start:
    mov ax,d2
    mov ds,ax
    
    lea si,a
    lea di,b
    mov cx,count
    
    next:
        mov ax,[si]
        mov [di],ax
        inc si
        inc si
        inc di
        inc di
        ;dec cx
        ;jnz next 
        loop next
        ends
        end start
