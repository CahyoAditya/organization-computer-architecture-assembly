section .data
    BIL: DD 10
    GANJIL: DB 'GANJIL', 10, 0
    GENAP: DB 'GENAP', 10, 0
    
section .text
    MOV EAX, [BIL]
    AND EAX, 1
    
    CMP EAX, 1
    JE ganjil
    
    MOV EAX, GENAP
    JMP end

ganjil:
    MOV EAX, GANJIL
    JMP end

end:
    INT 2
