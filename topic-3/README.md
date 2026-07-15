# Topic 3: Luas Persegi Panjang

Program ini digunakan untuk menghitung luas persegi panjang berdasarkan panjang dan lebar yang ditentukan.

## 📝 Deskripsi Program
Program ini menghitung luas persegi panjang dengan rumus `Panjang * Lebar`. Karena simulator tidak memiliki instruksi perkalian (`MUL`), perkalian ini dihitung menggunakan loop **penjumlahan berulang** (`recurse`) sebanyak nilai lebar yang diberikan.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `PANJANG`: Panjang persegi panjang (Double Word / Integer) - Contoh: `10`
* `LEBAR`: Lebar persegi panjang (Double Word / Integer) - Contoh: `5`

## 📤 Output (Expected)
* Nilai luas persegi panjang: `50` (ditampilkan di konsol melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    PANJANG: DD 10
    LEBAR: DD 5
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [PANJANG]
    MOV EBX, [LEBAR]
    MOV ECX, EAX

recurse:
    CMP EBX, 1
    JE end

    ADD EAX, ECX
    SUB EBX, 1
    JMP recurse
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
