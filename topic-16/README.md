# Topic 16: Cek Tahun Kabisat

Program ini digunakan untuk menentukan apakah suatu tahun merupakan tahun kabisat atau bukan.

## 📝 Deskripsi Program
Program ini menyederhanakan pengecekan tahun kabisat dengan mengecek apakah tahun tersebut habis dibagi 4 (kelipatan 4). Karena arsitektur simulator tidak mendukung pembagian langsung, program menggunakan metode **pengurangan berulang dengan nilai 4** (`recurse`):
- Tahun terus dikurangi 4 hingga nilainya kurang dari 4.
- Jika sisa akhir adalah `0`, tahun tersebut dideklarasikan sebagai **Kabisat**.
- Jika sisa akhir bukan `0`, tahun tersebut dideklarasikan sebagai **Bukan** kabisat.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `TAHUN`: Tahun yang ingin dicek (Double Word / Integer) - Contoh: `12`

## 📤 Output (Expected)
* String `"Kabisat"` atau `"Bukan"` (dicetak di konsol simulator melalui `INT 2`).
* Contoh output untuk tahun 12: `Kabisat`

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    KABISAT: DB 'Kabisat', 10, 0
    BUKAN: DB 'Bukan', 10, 0
    TAHUN: DD 12
    
section .text
    MOV EAX, [TAHUN]
    
recurse:
    CMP EAX, 4
    JB bukan
    
    SUB EAX, 4
    JMP recurse
    
kabisat:
    MOV EAX, KABISAT
    INT 2
    JMP end
    
bukan:
    CMP EAX, 0
    JE kabisat
    
    MOV EAX, BUKAN
    INT 2

end:
```
