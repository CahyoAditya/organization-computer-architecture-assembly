# Topic 30: Deteksi Huruf Vokal

Program ini digunakan untuk menentukan apakah sebuah karakter input merupakan huruf vokal (`A`, `I`, `U`, `E`, `O`) atau huruf konsonan.

## 📝 Deskripsi Program
Program memuat sebuah karakter dari memori:
1. **Normalisasi Case (Huruf Kecil ke Huruf Besar)**: Pertama-tama program memeriksa apakah karakter tersebut merupakan huruf kecil (nilai ASCII >= `97`). Jika ya, program menguranginya dengan `32` (`SUB EAX, 32`) untuk mengubahnya menjadi huruf kapital.
2. **Pembandingan Vokal**: Program membandingkan karakter yang sudah dinormalisasi tersebut dengan nilai ASCII huruf vokal kapital:
   - `65` (A)
   - `69` (E)
   - `73` (I)
   - `79` (O)
   - `85` (U)
3. Jika karakter cocok dengan salah satu di atas, program mencetak string `"Vokal"`. Jika tidak cocok dengan semua huruf vokal, program mencetak string `"Konsonan"`.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `CHAR`: Karakter tunggal yang didefinisikan sebagai string null-terminated - Contoh: `'o', 0`

## 📤 Output (Expected)
* `"Vokal"` atau `"Konsonan"` (dicetak di konsol simulator melalui `INT 2`).
* Contoh output untuk karakter 'o': `Vokal`

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    VOKAL: DB 'Vokal', 10, 0
    KONSONAN: DB 'Konsonan', 10, 0
    CHAR: DB 'o', 0
    
section .text
    MOV EAX, [CHAR]
    
    CMP EAX, 97
    JB compare
    
    SUB EAX, 32
    JMP compare

vokal:
    MOV EAX, VOKAL
    JMP end
    
compare:
    CMP EAX, 65     ; char A
    JE vokal
    CMP EAX, 69     ; char E
    JE vokal
    CMP EAX, 73     ; char I
    JE vokal
    CMP EAX, 79     ; char O
    JE vokal
    CMP EAX, 85     ; char U
    JE vokal
    
    MOV EAX, KONSONAN
    
end:
    INT 2
```
