# Topic 8: Cek Bilangan Ganjil/Genap

Program ini digunakan untuk menentukan apakah sebuah bilangan bulat termasuk bilangan ganjil atau genap.

## 📝 Deskripsi Program
Program ini mengecek bit paling belakang (Least Significant Bit / LSB) dari suatu bilangan menggunakan operasi bitwise `AND` dengan konstanta `1`:
- Jika bit LSB bernilai `1` (`EAX & 1 == 1`), maka bilangan tersebut adalah **GANJIL**.
- Jika bit LSB bernilai `0` (`EAX & 1 == 0`), maka bilangan tersebut adalah **GENAP**.
Cara ini jauh lebih efisien dibandingkan melakukan pembagian modulo 2 di tingkat instruksi prosesor.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `BIL`: Bilangan bulat yang akan dicek (Double Word / Integer) - Contoh: `10`

## 📤 Output (Expected)
* `"GENAP"` atau `"GANJIL"` (dicetak di konsol simulator sebagai string melalui `INT 2`).
* Contoh output untuk 10: `GENAP`

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    BIL: DD 10
    GANJIL: DB 'GANJIL', 10, 0
    GENAP: DB 'GENAP', 10, 0
    
section .text
    MOV EAX, [BIL]
    AND EAX, 1
    
    CMP EAX, 1
    JE ganjil
    
    MOV EAX, GENAP
    JMP end

ganjil:
    MOV EAX, GANJIL
    JMP end

end:
    INT 2
```
