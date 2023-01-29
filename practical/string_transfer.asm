;WAP	for	string	transfer.
;Example:	str1	=	‘BMIIT’	and	str2	=	‘’	then	after	program	get	executed	str1=’BMIIT’	and
;str2=’BMIIT’.  
                 
d2  segment
     str1 db 'drashti$'
     length equ ($-str1)
     str2  db length dup(0)
ends
code segment
    start:  
        mov ax,d2
        mov ds,ax
        mov es,ax
        mov cx,length
        ;cld
        lea si,str1
        lea di,str2
        ;rep movsb  
        
        xyz:
            mov al,[si]
            mov [di],al
            inc si
            inc di
            loop xyz
        
        mov dx,offset str2
        mov ah,09h
        int 21h
        
        mov ah,4ch
        int 21h
ends
end start