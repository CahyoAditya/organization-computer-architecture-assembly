# Topic 28: Pola Bintang

Program ini digunakan untuk mencetak visual pola segitiga siku-siku menggunakan karakter bintang (`*`) dengan tinggi tertentu.

## 📝 Deskripsi Program
Program ini menggunakan teknik nested loop untuk mencetak segitiga bintang ke layar simulator:
- Loop luar (`triangle`) mengontrol baris dan perpindahan ke baris baru (`NEWLINE`), berjalan sebanyak `N - 1` kali.
- Loop dalam (`recurse`) mencetak karakter bintang (`*`) sebanyak nomor baris saat ini (register `EBX`).
- Karakter bintang dicetak satu per satu menggunakan system call output string (`INT 2` dengan alamat buffer `STAR`).

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `N`: Nilai penentu tinggi segitiga bintang (Double Word / Integer) - Contoh: `5`

## 📤 Output (Expected)
Pola segitiga bintang dengan tinggi `N-1` (untuk N = 5):
```
*
**
***
****
```

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    N: DD 5
    STAR: DB '*', 0
    NEWLINE: DB 10, 0
    
section .text
    MOV EBX, 1
    MOV ECX, [N]
    MOV EDX, 0
    
triangle:
    CMP EDX, 0
    JE recurse
    CMP EBX, ECX
    JE end
    
    MOV EAX, NEWLINE
    INT 2
    ADD EBX, 1
    MOV EDX, 0
    
recurse:
    CMP EBX, EDX
    JE triangle

    MOV EAX, STAR
    INT 2
    ADD EDX, 1
    JMP recurse
    
end:
    MOV EAX, NEWLINE
    INT 2
```
