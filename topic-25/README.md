# Topic 25: Penggajian Sederhana

Program ini digunakan untuk menghitung gaji bersih pegawai berdasarkan jumlah jam kerja, upah per jam, dan potongan gaji.

## 📝 Deskripsi Program
Program ini menghitung gaji bersih pegawai menggunakan rumus:
`Gaji Bersih = (Jam Kerja * Upah) - Potongan`

Karena arsitektur simulator tidak mendukung instruksi perkalian langsung (`MUL`), proses perkalian `Jam Kerja * Upah` dilakukan secara manual menggunakan **penjumlahan berulang** (`perkalian`) di dalam loop. Hasil perkalian kemudian dikurangi dengan nilai potongan (`pengurangan`) sebelum akhirnya dicetak.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `JAM`: Jumlah jam kerja (Double Word / Integer) - Contoh: `173`
* `UPAH`: Nilai upah per jam kerja (Double Word / Integer) - Contoh: `26000`
* `POTONGAN`: Potongan gaji pegawai (Double Word / Integer) - Contoh: `1000000`

## 📤 Output (Expected)
* Gaji bersih pegawai: `3498000` (untuk input di atas, dicetak di konsol simulator melalui `INT 1`).
* Perhitungan: `(173 * 26000) - 1000000 = 4498000 - 1000000 = 3498000`.

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    JAM: DD 173
    UPAH: DD 26000
    POTONGAN: DD 1000000
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [UPAH]
    MOV EBX, [JAM]
    MOV ECX, EAX
    MOV EDX, [POTONGAN]
    
perkalian:
    CMP EBX, 1
    JE pengurangan
    
    ADD EAX, ECX
    SUB EBX, 1
    JMP perkalian
    
pengurangan:
    SUB EAX, EDX
    
end:
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
