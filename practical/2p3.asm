;WAP	to	do	block	transfer	with	overlap	(16	bit	as	well	as	8	bit)
;8 BIT 

drashti segment
    Array DB 11h,22h,33h,44h,55h
    Count DW 0005h
ends
    start:
        MOV AX,drashti
        MOV ES,AX 
        MOV DS,AX
        LEA SI,Array
        ADD SI,Count
        MOV CX,Count
        DEC SI
        MOV DI,SI
        ADD DI,2h
        STD
         REP MOVSB
        MOV AH,4Ch
        INT 21h
    ends
    end start