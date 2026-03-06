section .data
    N: DD 5
    STAR: DB '*', 0
    NEWLINE: DB 10, 0
    
section .text
    MOV EBX, 1
    MOV ECX, [N]
    MOV EDX, 0
    
triangle:
    CMP EDX, 0
    JE recurse
    CMP EBX, ECX
    JE end
    
    MOV EAX, NEWLINE
    INT 2
    ADD EBX, 1
    MOV EDX, 0
    
recurse:
    CMP EBX, EDX
    JE triangle

    MOV EAX, STAR
    INT 2
    ADD EDX, 1
    JMP recurse
    
end:
    MOV EAX, NEWLINE
    INT 2
