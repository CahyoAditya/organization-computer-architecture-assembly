section .data
    N: DD 4
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [N]
    MOV EBX, EAX
    MOV EDX, EAX
    
main:
    CMP EDX, 1
    JE end
    
    MOV ECX, EAX
    SUB EDX, 1
    MOV EBX, EDX

recurse:
    CMP EBX, 1
    JE main

    ADD EAX, ECX
    SUB EBX, 1
    JMP recurse

end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
