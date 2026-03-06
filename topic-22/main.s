section .data
    ALAS: DD 12
    ATAS: DD 8
    TINGGI: DD 3
    MIRING: DD 5
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [ALAS]
    MOV EBX, [ATAS]
    MOV ECX, [TINGGI]
    MOV EDX, [MIRING]
    
    ADD EAX, EBX
    ADD EAX, ECX
    ADD EAX, EDX
    
    INT 1
    MOV EAX, NEWLINE
    INT 2
