;WAP	to	do	block	transfer	without	overlap	(16	bit	as	well	as	8	bit)

drashti segment
    a dw 1111h,2222h,3333h
    b dw 3 dup(0h)  
    c db 44h,55h,66h
    d db 3 dup(0h)
ends

code segment
    start:  
    
    ;assume cs:code , ds:drashti
    mov ax,drashti
    mov ds,ax
    
    lea si,a
    lea di,b
    mov cl,03h
    
    next:
        mov ax,[si] ;16 bit
        mov [di],ax  
        inc si
        inc si
        inc di
        inc di
        loop next 
        
    lea si,c
    lea di,d
    mov cl,03h 
      
     next1:
        mov ah,[si]    ; 8 bit
        mov [di],ah 
        inc si
        inc di
        loop next1  
        
        mov ax,4c00h
        int 21h
ends
end start