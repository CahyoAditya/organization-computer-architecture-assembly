# Topic 10: Maksimum 3 Bilangan

Program ini digunakan untuk membandingkan tiga buah bilangan bulat dan mencari bilangan yang memiliki nilai paling besar.

## 📝 Deskripsi Program
Program memuat ketiga angka `A`, `B`, dan `C` ke dalam register, kemudian melakukan proses pembandingan beruntun:
1. Membandingkan `EAX` (nilai `A`) dengan `EBX` (nilai `B`).
2. Jika `EAX` lebih kecil dari `EBX` (`JB less`), maka `EAX` diganti dengan nilai `EBX`.
3. Setelah itu membandingkan kembali dengan `ECX` (nilai `C`).
4. Jalur perulangan mematikan sisa pemeriksaan dengan mengatur register ke `0` untuk keluar dari loop `compare`. Nilai terbesar akhirnya akan berada di register `EAX`.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `A`: Bilangan pertama (Double Word / Integer) - Contoh: `100`
* `B`: Bilangan kedua (Double Word / Integer) - Contoh: `50`
* `C`: Bilangan ketiga (Double Word / Integer) - Contoh: `15`

## 📤 Output (Expected)
* Bilangan terbesar dari ketiga input: `100` (dicetak di konsol simulator melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    A: DD 100
    B: DD 50
    C: DD 15
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [A]
    MOV EBX, [B]
    MOV ECX, [C]

compare:
    CMP EAX, EBX
    JB less
    
    CMP ECX, 0
    JE end
    
    MOV EBX, ECX
    MOV ECX, 0
    JMP compare
    
less:
    MOV EAX, EBX
    MOV EBX, ECX
    MOV ECX, 0
    JMP compare
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
