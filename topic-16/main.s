section .data
    KABISAT: DB 'Kabisat', 10, 0
    BUKAN: DB 'Bukan', 10, 0
    TAHUN: DD 12
    
section .text
    MOV EAX, [TAHUN]
    
recurse:
    CMP EAX, 4
    JB bukan
    
    SUB EAX, 4
    JMP recurse
    
kabisat:
    MOV EAX, KABISAT
    INT 2
    JMP end
    
bukan:
    CMP EAX, 0
    JE kabisat
    
    MOV EAX, BUKAN
    INT 2

end:
    
