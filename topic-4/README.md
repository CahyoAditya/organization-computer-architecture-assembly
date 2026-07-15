# Topic 4: Divisi & Modulo

Program ini digunakan untuk menghitung hasil bagi (division) dan sisa pembagian (modulo) dari dua buah bilangan bulat positif.

## 📝 Deskripsi Program
Program ini menghitung hasil bagi dan sisa pembagian dari pembilang (*dividend*) dan penyebut (*divisor*). Karena simulator tidak mendukung instruksi pembagian langsung (`DIV`), pembagian dihitung dengan melakukan **pengurangan berulang** menggunakan loop (`recurse`) hingga sisa nilai pembilang lebih kecil dari penyebut.
- Jumlah pengurangan yang terjadi disimpan sebagai hasil bagi (quotient).
- Sisa nilai pembilang yang tidak dapat dikurangi lagi disimpan sebagai sisa bagi (remainder/modulo).

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `PEMBILANG`: Angka yang akan dibagi (Double Word / Integer) - Contoh: `10`
* `PENYEBUT`: Angka pembagi (Double Word / Integer) - Contoh: `3`

## 📤 Output (Expected)
* Format output: `Hasil_Bagi Sisa_Bagi`
* Contoh output untuk 10 dibagi 3: `3 1` (dicetak menggunakan `INT 1` dan spasi `INT 2`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    PEMBILANG: DD 10
    PENYEBUT: DD 3
    NEWLINE: DB 10, 0
    SPACE: DB 32, 0

section .text
    MOV EAX, [PEMBILANG]
    MOV EBX, [PENYEBUT]
    MOV ECX, 0

    JMP recurse

recurse:
    CMP EAX, EBX
    JB selesai

    SUB EAX, EBX
    ADD ECX, 1
    JMP recurse

selesai:
    MOV EDX, EAX
    MOV EAX, ECX
    INT 1
    MOV EAX, SPACE
    INT 2
    MOV EAX, EDX
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
