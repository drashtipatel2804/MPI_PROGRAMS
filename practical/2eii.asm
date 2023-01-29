;cube of byte

d2 segment
      a db 0ffh
      ans dw 2 dup(0)
ends
start:
    mov ax,d2
    mov ds,ax
    
    mov ax,0000h
    mov dx,0000h
    mov cx,0000h
    mov cl,a
    mov al,cl
    mul cl
    mul cx
    mov ans,ax
    mov ans+2,dx
    ends
    end start