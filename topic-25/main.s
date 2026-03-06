section .data
    JAM: DD 173
    UPAH: DD 26000
    POTONGAN: DD 1000000
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [UPAH]
    MOV EBX, [JAM]
    MOV ECX, EAX
    MOV EDX, [POTONGAN]
    
perkalian:
    CMP EBX, 1
    JE pengurangan
    
    ADD EAX, ECX
    SUB EBX, 1
    JMP perkalian
    
pengurangan:
    SUB EAX, EDX
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
