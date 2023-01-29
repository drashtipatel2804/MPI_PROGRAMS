;array1 6 element 8 bit , array2 16 bit how many decide by ur self ..... 1st exchange array1 nd array2 
; then do square of 3rd element of array 1 nf check ans is +ve or -ve


d2 segment
    a db 11h,22h,33h,44h,55h,66h
    b dw 1010h,2020h,3030h
    count db 06h            
    ans dw 00h
    msg1 db 'odd$'
    msg2 db 'even$'
    
ends
start:
    mov ax,d2
    mov ds,ax
    
    lea si,a
    lea di,b
    mov cl,count
    
    loop1:
        mov ah,[si]
        mov bh,[di]
        xchg ah,bh
        mov [si],ah
        mov [di],bh
        inc si
        ;inc si
        ;inc di
        inc di
        dec cl
        jnz loop1
        ;loop loop1 
        
        mov al,[0002h]
        mul al
        mov ans,ax
        mov ans+2,dx
        
        mov bx,ans
        sar bx,01h
        jc next
        lea  dx,msg2
        mov ah,09h
        int 21h
        jmp last
        
        next:
            lea dx,msg1
            mov ah,09h
            int 21h
        last:
            mov ah,4ch
            int 21h
            ends
            end start
        
        
        
        mov ah,4ch
        int 21h
        ends
        end start
    