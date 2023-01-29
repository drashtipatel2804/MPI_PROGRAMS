;block transfer with overlap
d2 segment
    
    a db 11h,22h,33h,44h,55h
    count dw 0005h 
ends

start:
       mov ax,d2  
       mov ds,ax
       
       lea si,a 
       add si,count
       mov cx,count 
       dec si
       mov di,si
       add di,2h
       xyz:
       mov al,[si]
       mov [di],al
       dec si
       dec di
       loop xyz
       
       
       mov ah,4ch
       int 21h
    ends
          
    end start