# Topic 7: Sum Kumulatif 1-n

Program ini digunakan untuk menghitung jumlah kumulatif dari angka `1` hingga `N` (yaitu `1 + 2 + 3 + ... + N`).

## 📝 Deskripsi Program
Program ini menggunakan teknik perulangan (*looping*) untuk menambahkan nilai secara kumulatif. Proses penambahan dilakukan secara mundur (*countdown*) dari nilai `N` hingga mencapai `0`. Nilai akumulasi disimpan di register `EAX`.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `N`: Batas akhir penjumlahan kumulatif (Double Word / Integer) - Contoh: `10`

## 📤 Output (Expected)
* Nilai penjumlahan kumulatif: `55` (untuk N = 10, ditunjukkan di konsol melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    N: DD 10
    NEWLINE: DB 10
    
section .text
    MOV EAX, 0
    MOV EBX, [N]
    
recurse:
    CMP EBX, 0
    JE end

    ADD EAX, EBX
    SUB EBX, 1
    JMP recurse
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
