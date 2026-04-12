section .data
    PEMBILANG: DD 10
    PENYEBUT: DD 3
    NEWLINE: DB 10, 0
    SPACE: DB 32, 0

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
    MOV EDX, EAX
    MOV EAX, ECX
    INT 1
    MOV EAX, SPACE
    INT 2
    MOV EAX, EDX
    INT 1
    MOV EAX, NEWLINE
    INT 2
