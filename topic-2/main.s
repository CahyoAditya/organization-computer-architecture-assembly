section .data
    SISI: DD 10
    VOLUME: DD 0
    
section .text
    MOV EAX, [SISI]
    MOV EDX, 0

recurse:
    MOV [VOLUME], EAX
    MOV EBX, [VOLUME]
    MOV ECX, [VOLUME]
    ADD EDX, 1
    
    CMP EDX, 3
    JNE multiply
    JMP selesai
    
multiply:
    CMP EBX, 1
    JE recurse
    
    ADD EAX, ECX
    SUB EBX, 1
    JMP multiply
    
selesai:
    MOV ECX, 0
    MOV EDX, 0
    
    MOV EAX, 0
    MOV EBX, 1
