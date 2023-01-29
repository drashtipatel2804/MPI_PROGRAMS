;WAP	to	do	character	search	in	a	string.

d2 segment
    string db 'drashti$'
    length equ ($-string)
    key db 'p'
    dis1 db '-is present$'
    dis2 db '-is not present$'
ends
code segment
    start:
        mov ax,d2
        mov ds,ax
        mov es,ax
        
        mov al,key
        mov cx,length
        
        repne scasb
        
        je present 
        lea dx,dis2
        mov ah,09h
        int 21h
        jmp last
        
        present: lea dx,dis1
                 mov ah,09h
                 int 21h
                  
                 
        last: mov ah,4ch
              int 21h
ends
end start