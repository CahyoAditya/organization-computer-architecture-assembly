# Topic 24: Konversi Detik

Program ini digunakan untuk mengonversi total durasi dalam detik menjadi format waktu standar `HH:MM:SS` (Jam:Menit:Detik) dengan *zero-padding* untuk angka di bawah 10.

## 📝 Deskripsi Program
Program ini melakukan konversi waktu menggunakan metode pengurangan berulang yang beruntun:
1. **Konversi Jam**: Detik dibagi 3600 (pengurangan 3600 berulang) untuk mendapatkan jumlah Jam (`EAX`).
2. **Konversi Menit**: Sisa detik kemudian dibagi 60 (pengurangan 60 berulang) untuk mendapatkan jumlah Menit (`EAX`).
3. **Konversi Detik**: Sisa detik terakhir menjadi nilai Detik.
4. **Logika Print (*Zero Padding*)**: Program memeriksa apakah nilai jam, menit, atau detik lebih kecil dari `10`. Jika lebih kecil, program akan mencetak karakter `'0'` terlebih dahulu sebelum mencetak angkanya, sehingga menghasilkan format waktu yang konsisten seperti `23:00:23`.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `DETIK`: Total durasi dalam detik (Double Word / Integer) - Contoh: `82823`

## 📤 Output (Expected)
* Format output: `HH:MM:SS`
* Contoh output untuk 82823 detik: `23:00:23`

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    DETIK: DD 82823
    COLON: DB ':', 0
    NEWLINE: DB 10, 0

section .text
    MOV EAX, 0
    MOV EBX, [DETIK]

loop_hour:
    CMP EBX, 3600
    JB logic_print_hour

    ADD EAX, 1
    SUB EBX, 3600
    JMP loop_hour

logic_print_hour:
    CMP EAX, 10
    JAE print_hour
    
    MOV EDX, EAX
    MOV EAX, 0
    INT 1
    MOV EAX, EDX
    JMP print_hour

print_hour:
    INT 1
    MOV EAX, COLON
    INT 2
    MOV EAX, 0
    JMP loop_minute

loop_minute:
    CMP EBX, 60
    JB logic_print_minute

    ADD EAX, 1
    SUB EBX, 60
    JMP loop_minute

logic_print_minute:
    CMP EAX, 10
    JAE print_minute
    
    MOV EDX, EAX
    MOV EAX, 0
    INT 1
    MOV EAX, EDX
    JMP print_minute
    
print_minute:
    INT 1
    MOV EAX, COLON
    INT 2
    MOV EAX, EBX
    JMP logic_print_second
    
logic_print_second:
    CMP EAX, 10
    JAE print_second
    
    MOV EDX, EAX
    MOV EAX, 0
    INT 1
    MOV EAX, EDX
    JMP print_second

print_second:
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
