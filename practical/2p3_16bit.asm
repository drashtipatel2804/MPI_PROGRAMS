; 16 bit block transfer with overlap

drashti segment
    a dw 1122h,3344h,5566h,7788h
    count dw 0008h
ends
    start:
        mov ax,drashti
        mov es,ax
        mov ds,ax
        
        lea si,a
        add si,count 
        mov cx,count
        
        dec si
        mov di,si
        add di,4h
        
        std
        rep movsb
        
        mov ah,4ch
        int 21h
        ends
        end start