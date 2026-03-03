section .data
    N: DD 5
    TEMP: DB ', ', 0
    NEWLINE: DB 10, 0
    
section .text
    MOV EBX, 0
    MOV ECX, 1
    MOV EDX, [N]
    
print:
    CMP EDX, 0
    JE end
    
    MOV EAX, EBX
    INT 1
    MOV EAX, TEMP
    INT 2
    
    MOV EAX, EBX
    ADD EAX, ECX
    MOV EBX, ECX
    MOV ECX, EAX
    SUB EDX, 1
    JMP print
    
end:
    MOV EAX, NEWLINE
    INT 2
