# Topic 2: Volume Kubus

Program ini digunakan untuk menghitung volume sebuah kubus berdasarkan panjang sisi yang diberikan.

## 📝 Deskripsi Program
Program ini menghitung volume kubus dengan mengalikan sisi sebanyak tiga kali (`Sisi * Sisi * Sisi`). Karena simulator tidak mendukung instruksi perkalian (`MUL`), perkalian dilakukan secara iteratif menggunakan **penjumlahan berulang** yang terstruktur dalam dua tingkatan loop (luas alas dahulu, kemudian dikalikan tinggi/sisi kembali).

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `SISI`: Panjang sisi kubus (Double Word / Integer) - Contoh: `10`

## 📤 Output (Expected)
* Nilai volume kubus: `1000` (ditampilkan di konsol melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    SISI: DD 10
    NEWLINE: DB 10, 0
 
section .text
    MOV EAX, [SISI]
    MOV EDX, 0

recurse:
    MOV EBX, [SISI]
    MOV ECX, EAX
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
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
