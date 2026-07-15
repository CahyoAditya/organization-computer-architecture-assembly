# Topic 22: Keliling Trapesium

Program ini digunakan untuk menghitung total keliling trapesium dengan menjumlahkan seluruh sisinya.

## 📝 Deskripsi Program
Program ini menghitung keliling trapesium menggunakan penjumlahan langsung keempat sisinya yang didefinisikan secara statis di `section .data`. Sisi-sisi yang dijumlahkan meliputi sisi alas, sisi atas, sisi tinggi (sebagai perwakilan sisi tegak lurus), dan sisi miring.

## 📥 Input (Expected)
Didefinisikan di `section .data`:
* `ALAS`: Panjang sisi alas trapesium (Double Word / Integer) - Contoh: `12`
* `ATAS`: Panjang sisi atas trapesium (Double Word / Integer) - Contoh: `8`
* `TINGGI`: Panjang salah satu sisi tegak trapesium (Double Word / Integer) - Contoh: `3`
* `MIRING`: Panjang sisi miring trapesium (Double Word / Integer) - Contoh: `5`

## 📤 Output (Expected)
* Nilai keliling trapesium (Alas + Atas + Tinggi + Miring): `28` (dicetak di konsol simulator melalui `INT 1`).

## 💻 Struktur Kode (`main.s`)
```assembly
section .data
    ALAS: DD 12
    ATAS: DD 8
    TINGGI: DD 3
    MIRING: DD 5
    NEWLINE: DB 10, 0
    
section .text
    MOV EAX, [ALAS]
    MOV EBX, [ATAS]
    MOV ECX, [TINGGI]
    MOV EDX, [MIRING]
    
    ADD EAX, EBX
    ADD EAX, ECX
    ADD EAX, EDX
    
    INT 1
    MOV EAX, NEWLINE
    INT 2
```
