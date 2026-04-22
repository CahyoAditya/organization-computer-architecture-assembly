section .data
    DETIK: DD 82823
    COLON: DB ':', 0
    NEWLINE: DB 10, 0

section .text
    MOV EAX, 0
    MOV EBX, [DETIK]

loop_hour:
    CMP EBX, 3600
    JB logic_print_hour

    ADD EAX, 1
    SUB EBX, 3600
    JMP loop_hour

logic_print_hour:
    CMP EAX, 10
    JAE print_hour
    
    MOV EDX, EAX
    MOV EAX, 0
    INT 1
    MOV EAX, EDX
    JMP print_hour

print_hour:
    INT 1
    MOV EAX, COLON
    INT 2
    MOV EAX, 0
    JMP loop_minute

loop_minute:
    CMP EBX, 60
    JB logic_print_minute

    ADD EAX, 1
    SUB EBX, 60
    JMP loop_minute

logic_print_minute:
    CMP EAX, 10
    JAE print_minute
    
    MOV EDX, EAX
    MOV EAX, 0
    INT 1
    MOV EAX, EDX
    JMP print_minute
    
print_minute:
    INT 1
    MOV EAX, COLON
    INT 2
    MOV EAX, EBX
    JMP logic_print_second
    
logic_print_second:
    CMP EAX, 10
    JAE print_second
    
    MOV EDX, EAX
    MOV EAX, 0
    INT 1
    MOV EAX, EDX
    JMP print_second

print_second:
    INT 1
    MOV EAX, NEWLINE
    INT 2
