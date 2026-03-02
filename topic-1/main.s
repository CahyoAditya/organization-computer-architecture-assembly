section .data
    ALAS: DD 10
    TINGGI: DD 5
    LUAS: DD 0
    
section .text
    MOV EAX, [ALAS]
    MOV EBX, [TINGGI]
    MOV ECX, EAX

recurse:
    CMP EBX, 1
    JE end

    ADD EAX, ECX
    SUB EBX, 1
    JMP recurse
    
end:
    MOV [LUAS], EAX
