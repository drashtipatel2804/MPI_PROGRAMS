

data segment
    INPUTT db "aaa$"
    
    COUNTERVOWELS db 0   ;this is for number of vowels
ends
                                                                           
                                                                           
code segment
start:

    mov ax, data
    mov ds, ax
    mov CX,0000h
    lea SI,INPUTT
 
    
        FINDVOWELS:
              CMP [SI],'$'
              JE LAST
              
              CMP [SI],'A'
              JE INCREVOWEL 
              CMP [SI],'a'
              JE INCREVOWEL 
              CMP [SI],'E'
              JE INCREVOWEL 
              CMP [SI],'e'
              JE INCREVOWEL 
              CMP [SI],'I'
              JE INCREVOWEL 
              CMP [SI],'i'
              JE INCREVOWEL 
              CMP [SI],'O'
              JE INCREVOWEL 
              CMP [SI],'o'
              JE INCREVOWEL 
              CMP [SI],'U'
              JE INCREVOWEL 
              CMP [SI],'u'
              JE INCREVOWEL 
              INC SI
              JMP FINDVOWELS
              
        INCREVOWEL:
            INC COUNTERVOWELS
            INC SI
            JMP FINDVOWELS 
                  
    
    LAST:
     mov ax, 4c00h 
    int 21h    
ends

end start 
