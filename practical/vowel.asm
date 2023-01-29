;vowell

d2 segment
    msg db 'dd$'
    len equ ($-msg) 
    count db 00h
ends
code segment
    start:
    mov ax,d2
    mov ds,ax
    mov bx,00h
    mov cx,len
    lea si,msg
    
     
    
    xyz:
        cmp [si],'$'
        je last
        
        cmp [si],'a'
        je ok 
        
        cmp [si],'e'
        je ok
        
        cmp [si],'i'
        je ok
        
        cmp [si],'o'
        je ok
        
        cmp [si],'u'
        je ok
        
        con:
            inc si
            loop xyz
        
        ok:
        inc count 
        mov bl,count
        
        jmp con
        
      last: 
            add bl,30h
            mov dl,bl
            mov ah,02h
            int 21h
            mov ah,4ch
            int 21h
ends
end start
            
        
    
    