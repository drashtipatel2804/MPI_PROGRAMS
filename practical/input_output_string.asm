;input and output the string

d2 segment
    str1 db 'enter a string : $'
    str2 db 13,10,'string output is : $' ; 13,10 for new line
    arr db 20 dup('$')
ends
code segment
    start:
        mov ax,d2
        mov ds,ax
        
        lea dx,str1
        mov ah,09h
        int 21h
        
        mov ah,0Ah
        lea dx,arr
        mov arr,9
        int 21h
        
        lea dx,str2
        mov ah,09h
        int 21h
        
        lea dx,arr+2
        mov ah,09h
        int 21h
                    
        mov ah,4ch
        int 21h
ends
end start
        