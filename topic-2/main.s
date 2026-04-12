section .data
    SISI: DD 10
    NEWLINE: DB 10, 0
 
section .text
    MOV EAX, [SISI]
    MOV EDX, 0

recurse:
    MOV EBX, [SISI]
    MOV ECX, EAX
    ADD EDX, 1

    CMP EDX, 3
    JNE multiply
    JMP selesai

multiply:
    CMP EBX, 1
    JE recurse

    ADD EAX, ECX
    SUB EBX, 1
    JMP multiply

selesai:
    INT 1
    MOV EAX, NEWLINE
    INT 2
