section .data
    VOKAL: DB 'Vokal', 10, 0
    KONSONAN: DB 'Konsonan', 10, 0
    CHAR: DB 'o', 0
    
section .text
    MOV EAX, [CHAR]
    
    CMP EAX, 97
    JB compare
    
    SUB EAX, 32
    JMP compare

vokal:
    MOV EAX, VOKAL
    JMP end
    
compare:
    CMP EAX, 65     ; char A
    JE vokal
    CMP EAX, 69     ; char E
    JE vokal
    CMP EAX, 73     ; char I
    JE vokal
    CMP EAX, 79     ; char O
    JE vokal
    CMP EAX, 85     ; char U
    JE vokal
    
    MOV EAX, KONSONAN
    
end:
    INT 2
    
