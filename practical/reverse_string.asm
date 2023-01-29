;WAP	for	string	reverse.
;Example:	str1	=	‘BMIIT’	then	after	program	get	executed	str1=’TIIMB’.    

d2 segment
    string db 'bmiit$'
    length equ ($-string)
    rev db length dup(0)
ends
code segment
    start:
        mov ax,d2
        mov ds,ax
        mov es,ax
        
        mov cx,length-1
    
   
        mov si,offset string  ; lea si,string
   
        
        
        xyz:
        mov bx,[si]
        push bx
        inc si
        loop xyz
        
        mov cx,length-1
        
        xyz1:
        pop dx
        mov ah,02h   
        int 21h
        loop xyz1
        mov ah,4ch
        int 21h
ends
end start