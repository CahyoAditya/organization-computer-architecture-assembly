# Topic 11: Konversi Menit ke Jam

Program ini digunakan untuk mengonversi total durasi menit menjadi representasi waktu format Jam dan Sisa Menit.

## 📝 Deskripsi Program
Program melakukan pembagian manual terhadap total menit dengan nilai `60` menggunakan metode **pengurangan berulang** (`recurse`):
- Setiap kali total menit berhasil dikurangi dengan `60`, register `EBX` (menyimpan jumlah jam) akan bertambah `1`.
- Sisa nilai menit yang kurang dari `60` pada register `EAX` akan menjadi sisa menit.
- Program kemudian mencetak output berformat teks dengan memadukan angka integer dan string.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `N`: Total durasi dalam satuan menit (Double Word / Integer) - Contoh: `1119`

## 📤 Output (Expected)
* Format output: `x JAM, y MENIT`
* Contoh output untuk 1119 menit: `18 JAM, 39 MENIT`

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    N: DD 1119
    JAM: DB ' JAM, ', 0
    MENIT: DB ' MENIT', 10, 0
    
section .text
    MOV EAX, [N]
    MOV EBX, 0

recurse:
    CMP EAX, 60
    JB end
    
    ADD EBX, 1
    SUB EAX, 60
    JMP recurse
    
end:
    MOV [N], EAX
    MOV EAX, EBX
    INT 1
    MOV EAX, JAM
    INT 2
    MOV EAX, [N]
    INT 1
    MOV EAX, MENIT
    INT 2
```
