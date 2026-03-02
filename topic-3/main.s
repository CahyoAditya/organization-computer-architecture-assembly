section .data
    PANJANG: DD 10
    LEBAR: DD 5
    LUAS: DD 0
    
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
    MOV [LUAS], EAX
