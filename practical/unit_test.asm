;UNIT TEST 1 PROGRAM

drashti segment
    a db 11h,22h,33h
    b db 44h,55h,66h
    count db 03h     
    ans db 00h 
ends       
    start:
        mov ax,drashti
        mov ds,ax
        lea si,a
        lea di,b
        mov ch,count
        
        next:
            mov bh,[si]
            mov dh,[di]
            xchg bh,dh
            mov [si],bh
            mov [di],dh
            inc si
            inc di
            dec ch
            jnz next  
            
            ;for square 
            
            mov ah,00h    
            mov al,02h   
            mul al
             
      
            mov ans,al
            mov si,5566h 
            mov [si],al
    
            mov ah,4ch
            int 21h
            ends
            end start
     
