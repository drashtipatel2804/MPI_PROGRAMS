;WAP to	display	string	“	BMIIT” on	monitor

d2 segment
    msg db 'DRASHTI$'       
ends  
code segment 
start:
    mov ax,d2
    mov ds,ax
    mov si,ds
    
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
    ends
    end start