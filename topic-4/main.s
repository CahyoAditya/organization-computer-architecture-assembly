section .data
    PEMBILANG: DD 10
    PENYEBUT: DD 3
    DIVIDE: DD 0
    MODULO: DD 0
    
section .text
    MOV EAX, [PEMBILANG]
    MOV EBX, [PENYEBUT]
    MOV ECX, 0
    
    JMP recurse

recurse:
    CMP EAX, EBX
    JB selesai
    
    SUB EAX, EBX
    ADD ECX, 1
    JMP recurse
    
selesai:
    MOV [DIVIDE], ECX
    MOV [MODULO], EAX
