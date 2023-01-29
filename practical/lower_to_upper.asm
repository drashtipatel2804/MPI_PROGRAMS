
;lower to upper
d2 segment
    text db 'drashti$'
    count dw 7
ends
start:
    mov ax,d2
    mov ds,ax
    mov es,ax
    
    mov si,0
    mov cx,count
again:mov al,text[si]
      sub al,20h
      mov text[si],al
      inc si
      loop  again 
            
            lea dx,text
            mov ah,09h
            int 21h
            
            mov ah,4ch
            int 21h
            ends
            end start