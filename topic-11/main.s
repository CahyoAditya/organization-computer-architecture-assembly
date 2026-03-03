section .data
    N: DD 1119
    JAM: DB ' JAM, ', 0
    MENIT: DB ' MENIT', 10, 0
    
section .text
    MOV EAX, [N]
    MOV EBX, 0

recurse:
    CMP EAX, 60
    JB end
    
    ADD EBX, 1
    SUB EAX, 60
    JMP recurse
    
end:
    MOV [N], EAX
    MOV EAX, EBX
    INT 1
    MOV EAX, JAM
    INT 2
    MOV EAX, [N]
    INT 1
    MOV EAX, MENIT
    INT 2
