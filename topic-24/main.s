section .data
    DETIK: DD 82823
    COLON: DB ':', 0
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, 0
    MOV EBX, 0
    MOV ECX, [DETIK]
    
jam:
    CMP ECX, 3600
    JB print_jam
    
    ADD EAX, 1
    SUB ECX, 3600
    JMP jam

print_jam:
    INT 1
    MOV EAX, COLON
    INT 2
    
menit:
    CMP ECX, 60
    JB end
    
    ADD EBX, 1
    SUB ECX, 60
    JMP menit
    
end:
    MOV EAX, EBX
    INT 1
    MOV EAX, COLON
    INT 2
    MOV EAX, ECX
    INT 1
    MOV EAX, NEWLINE
    INT 2
