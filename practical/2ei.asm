;square of a word 
d2 segment
    a dw 0ffffh
    ans dw 2 dup(?)
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov dx,00h
    mov ax,a
    mul a
    mov ans,ax
    mov ans+2,dx
    mov ah,4ch 
    int 21h
    ends
    end start
    
    