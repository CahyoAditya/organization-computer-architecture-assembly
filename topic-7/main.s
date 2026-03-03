section .data
    N: DD 10
    NEWLINE: DB 10
    
section .text
    MOV EAX, 0
    MOV EBX, [N]
    
recurse:
    CMP EBX, 0
    JE end

    ADD EAX, EBX
    SUB EBX, 1
    JMP recurse
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
