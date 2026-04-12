section .data
    PANJANG: DD 10
    LEBAR: DD 5
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [PANJANG]
    MOV EBX, [LEBAR]
    MOV ECX, EAX

recurse:
    CMP EBX, 1
    JE end

    ADD EAX, ECX
    SUB EBX, 1
    JMP recurse
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
