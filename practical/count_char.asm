;count occurance of char 'a'  in uka tarsadia university

d2 segment
    input db 'uka tarsadia university$'
    len equ ($-input) 
    count db 00h
ends
start:
    mov ax,d2
    mov ds,ax
    mov es,ax
    
    lea si,input
    loop1:
        cmp [si],'$'
        je last
        
        cmp [si],'a'
        je ok
        jmp prev
        
        ok:
        inc count
        jmp prev  
        
        prev:
        inc si
        jmp loop1
        
        last:
        add count,30h
        mov dl,count
        mov ah,02h
        int 21h
        mov ah,4ch
        int 21h
        ends
        end start