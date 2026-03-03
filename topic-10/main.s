section .data
    A: DD 100
    B: DD 50
    C: DD 15
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [A]
    MOV EBX, [B]
    MOV ECX, [C]

compare:
    CMP EAX, EBX
    JB less
    
    CMP ECX, 0
    JE end
    
    MOV EBX, ECX
    MOV ECX, 0
    JMP compare
    
less:
    MOV EAX, EBX
    MOV EBX, ECX
    MOV ECX, 0
    JMP compare
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
