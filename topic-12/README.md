# Topic 12: Deret Fibonacci

Program ini digunakan untuk menghasilkan dan menampilkan `N` suku pertama dari barisan deret Fibonacci (misal: `0, 1, 1, 2, 3, ...`).

## 📝 Deskripsi Program
Program ini menggunakan teknik iterasi untuk menghasilkan deret Fibonacci.
- Register `EBX` diinisialisasi dengan angka pertama (`0`).
- Register `ECX` diinisialisasi dengan angka kedua (`1`).
- Pada setiap iterasi loop (`print`), nilai `EBX` saat ini dicetak ke layar, lalu program menghitung suku berikutnya (`EAX = EBX + ECX`), memperbarui nilai `EBX` dengan `ECX`, dan memperbarui `ECX` dengan nilai baru `EAX`.
- Perulangan dilakukan sebanyak `N` kali sesuai input yang ditentukan.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `N`: Jumlah elemen deret Fibonacci yang ingin dicetak (Double Word / Integer) - Contoh: `5`

## 📤 Output (Expected)
* Deret Fibonacci terpisah dengan tanda koma `, `.
* Contoh output untuk N = 5: `0, 1, 1, 2, 3, `

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    N: DD 5
    TEMP: DB ', ', 0
    NEWLINE: DB 10, 0
    
section .text
    MOV EBX, 0
    MOV ECX, 1
    MOV EDX, [N]
    
print:
    CMP EDX, 0
    JE end
    
    MOV EAX, EBX
    INT 1
    MOV EAX, TEMP
    INT 2
    
    MOV EAX, EBX
    ADD EAX, ECX
    MOV EBX, ECX
    MOV ECX, EAX
    SUB EDX, 1
    JMP print
    
end:
    MOV EAX, NEWLINE
    INT 2
```
