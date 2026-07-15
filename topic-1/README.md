# Topic 1: Luas Segitiga

Program ini digunakan untuk menghitung luas segitiga berdasarkan nilai alas dan tinggi yang diberikan.

## 📝 Deskripsi Program
Program ini menggunakan variabel alas dan tinggi yang didefinisikan secara statis di `section .data`. Karena arsitektur simulator ini tidak mendukung instruksi perkalian langsung (`MUL`), proses perkalian `Alas * Tinggi` dilakukan secara manual menggunakan operasi **penjumlahan berulang** menggunakan loop (`recurse`).

> [!NOTE]
> Meskipun secara matematis rumus luas segitiga adalah `(Alas * Tinggi) / 2`, implementasi kode saat ini baru mencakup perkalian `Alas * Tinggi` saja secara iteratif.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `ALAS`: Nilai alas segitiga (Double Word / Integer) - Contoh: `10`
* `TINGGI`: Nilai tinggi segitiga (Double Word / Integer) - Contoh: `5`

## 📤 Output (Expected)
* Nilai perkalian Alas dan Tinggi: `50` (ditampilkan di konsol simulator melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    ALAS: DD 10
    TINGGI: DD 5
    NEWLINE: DB 10, 0
   
section .text
    MOV EAX, [ALAS]
    MOV EBX, [TINGGI]
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
