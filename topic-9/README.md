# Topic 9: Faktorial (n!)

Program ini digunakan untuk menghitung nilai faktorial dari sebuah bilangan bulat `N` secara iteratif (misalnya `4! = 4 * 3 * 2 * 1 = 24`).

## 📝 Deskripsi Program
Program ini menghitung nilai faktorial secara iteratif dengan nested loop. Karena simulator tidak mendukung instruksi perkalian langsung (`MUL`), program melakukan perkalian antar deret faktorial menggunakan loop **penjumlahan berulang** (`recurse`) untuk mensimulasikan perkalian yang terjadi pada setiap langkah iterasi faktorial (`main`).

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `N`: Bilangan bulat positif yang dicari nilai faktorialnya (Double Word / Integer) - Contoh: `4`

## 📤 Output (Expected)
* Nilai faktorial dari N: `24` (untuk N = 4, dicetak di konsol simulator melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    N: DD 4
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [N]
    MOV EBX, EAX
    MOV EDX, EAX
    
main:
    CMP EDX, 1
    JE end
    
    MOV ECX, EAX
    SUB EDX, 1
    MOV EBX, EDX

recurse:
    CMP EBX, 1
    JE main

    ADD EAX, ECX
    SUB EBX, 1
    JMP recurse

end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
