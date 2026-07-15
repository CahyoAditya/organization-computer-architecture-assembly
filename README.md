# Organisasi dan Arsitektur Komputer - Pemrograman Assembly

Repository ini berisi kumpulan program bahasa Assembly (x86 dialek simulator) yang dibuat untuk memenuhi tugas mata kuliah **Organisasi dan Arsitektur Komputer**.

Program-program dalam repository ini dirancang dan diuji menggunakan simulator x86 berbasis web: **[Davis Assembly Simulator & Debugger](https://kobzol.github.io/davis/)** oleh Jakub Beránek (Kobzol).

---

## 🖥️ Spesifikasi & Konvensi Simulator Davis

Karena program-program ini berjalan di atas simulator edukasi **Davis**, terdapat beberapa konvensi instruksi dan sistem pemanggilan input/output (I/O) khusus yang didukung oleh simulator ini:

1. **Struktur Program**:
   - `section .data`: Tempat pendefinisian variabel/konstanta input secara statis (menggunakan directive `DD` untuk Double Word / 32-bit integer, dan `DB` untuk Byte / karakter/string null-terminated).
   - `section .text`: Bagian instruksi kode program utama.
2. **Keterbatasan Instruksi**:
   - Simulator Davis **tidak mendukung** instruksi perkalian langsung (`MUL`/`IMUL`) atau pembagian langsung (`DIV`/`IDIV`).
   - Operasi perkalian diimplementasikan secara manual menggunakan **penjumlahan berulang** di dalam loop.
   - Operasi pembagian/modulo diimplementasikan secara manual menggunakan **pengurangan berulang** di dalam loop.
3. **Interrupt Output (I/O)**:
   - `INT 1`: Mencetak nilai integer yang disimpan di dalam register `EAX` ke konsol simulator.
   - `INT 2`: Mencetak string *null-terminated* yang alamat memorinya disimpan di dalam register `EAX` ke konsol simulator.

---

## 📂 Daftar Topik Tugas & Status Implementasi

Berikut adalah daftar 30 topik tugas kuliah beserta status implementasinya di dalam repository ini:

| No | Topik | Deskripsi Program | Input (Expected) | Output (Expected) | Status / Folder |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | Luas Segitiga | Menghitung luas berdasarkan alas & tinggi. | Alas, Tinggi (Integer) | Luas (Integer/Float) | Completed ([topic-1](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-1)) |
| 2 | Volume Kubus | Menghitung volume kubus. | Sisi | Volume | Completed ([topic-2](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-2)) |
| 3 | Luas Persegi Panjang | Perkalian standar panjang dan lebar. | Panjang, Lebar | Luas | Completed ([topic-3](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-3)) |
| 4 | Divisi & Modulo | Menghitung hasil bagi dan sisa pembagian. | Pembilang, Penyebut | Hasil bagi, Sisa | Completed ([topic-4](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-4)) |
| 5 | Celcius ke Fahrenheit | Konversi suhu menggunakan formula F=(C×9/5)+32. | Suhu (C) | Suhu (F) | *Belum Diimplementasikan* |
| 6 | Fahrenheit ke Celcius | Konversi balik menggunakan formula C=(F−32)×5/9. | Suhu (F) | Suhu (C) | *Belum Diimplementasikan* |
| 7 | Sum Kumulatif 1-n | Menghitung total 1+2+3+...+n (Looping). | Nilai n | Total Kumulatif | Completed ([topic-7](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-7)) |
| 8 | Cek Bilangan Ganjil/Genap | Menentukan jenis bilangan dengan AND atau DIV. | Bilangan Bulat | "Genap" / "Ganjil" | Completed ([topic-8](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-8)) |
| 9 | Faktorial (n!) | Menghitung faktorial secara iteratif. | Nilai n | Hasil Faktorial | Completed ([topic-9](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-9)) |
| 10 | Maksimum 3 Bilangan | Membandingkan 3 input dan mencari yang terbesar. | 3 Bilangan Bulat | Bilangan Terbesar | Completed ([topic-10](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-10)) |
| 11 | Konversi Menit ke Jam | Mengubah total menit menjadi format Jam:Menit. | Total Menit | x Jam, y Menit | Completed ([topic-11](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-11)) |
| 12 | Deret Fibonacci | Menampilkan n suku pertama deret Fibonacci. | Nilai n | Deret (misal: 0, 1, 1, 2) | Completed ([topic-12](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-12)) |
| 13 | Kalkulator Sederhana | Operasi +, -, *, / berdasarkan pilihan menu. | Op1, Op2, Pilihan | Hasil Operasi | *Belum Diimplementasikan* |
| 14 | Menghitung Karakter | Menghitung jumlah huruf dalam sebuah string. | String (Input User) | Jumlah Karakter | *Belum Diimplementasikan* |
| 15 | Reverse String | Membalikkan urutan karakter dalam string. | String | String Terbalik | *Belum Diimplementasikan* |
| 16 | Cek Tahun Kabisat | Logika pembagian 400, 100, dan 4. | Tahun | "Kabisat" / "Bukan" | Completed ([topic-16](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-16)) |
| 17 | Luas Lingkaran | Menggunakan pendekatan π=22/7 atau 3.14. | Jari-jari | Luas | *Belum Diimplementasikan* |
| 18 | Perpangkatan (a^b) | Menghitung hasil a pangkat b dengan loop. | Basis, Eksponen | Hasil Pangkat | *Belum Diimplementasikan* |
| 19 | Rata-rata Array | Menghitung rata-rata dari 5 input angka. | 5 Angka | Nilai Rata-rata | *Belum Diimplementasikan* |
| 20 | Konversi Biner ke Desimal | Mengubah string biner menjadi nilai integer. | String Biner (8-bit) | Nilai Desimal | *Belum Diimplementasikan* |
| 21 | Cek Bilangan Prima | Menentukan apakah angka adalah prima / bukan. | Bilangan Bulat | "Prima" / "Bukan" | *Belum Diimplementasikan* |
| 22 | Keliling Trapesium | Menjumlahkan keempat sisi trapesium. | 4 Sisi | Total Keliling | Completed ([topic-22](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-22)) |
| 23 | Diskon Belanja | Menghitung harga akhir setelah diskon 15%. | Harga Total | Harga Setelah Diskon | *Belum Diimplementasikan* |
| 24 | Konversi Detik | Mengubah detik ke format Jam:Menit:Detik. | Total Detik | HH:MM:SS | Completed ([topic-24](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-24)) |
| 25 | Penggajian Sederhana | Gaji = (Jam Kerja * Upah) - Potongan. | Jam, Upah, Potongan | Gaji Bersih | Completed ([topic-25](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-25)) |
| 26 | Cari Nilai Minimum | Mencari angka terkecil dari deret input. | 5 Angka | Nilai Terkecil | *Belum Diimplementasikan* |
| 27 | Luas Permukaan Tabung | Formula: 2πr(r+h). | Jari-jari, Tinggi | Luas Permukaan | *Belum Diimplementasikan* |
| 28 | Pola Bintang | Mencetak segitiga bintang sesuai tinggi n. | Nilai n | Visual Segitiga Bintang | Completed ([topic-28](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-28)) |
| 29 | Penjumlahan Matriks 1x3 | Menjumlahkan dua array berukuran 3. | 2 Array (3 elemen) | Hasil Penjumlahan | *Belum Diimplementasikan* |
| 30 | Deteksi Huruf Vokal | Mengecek apakah input karakter adalah vokal. | 1 Karakter | "Vokal" / "Konsonan" | Completed ([topic-30](file:///home/aditya/Documents/organization-computer-architecture-assembly/topic-30)) |

---

## 🛠️ Cara Menjalankan Program di Simulator Davis

1. Buka browser Anda dan kunjungi halaman **[Davis Assembly Simulator](https://kobzol.github.io/davis/)**.
2. Pilih salah satu folder topik yang berstatus *Completed* di repository ini (misalnya `topic-1`), lalu buka file `main.s`.
3. Salin (*copy*) seluruh kode perakitan di dalam file `main.s`.
4. Tempel (*paste*) kode tersebut ke dalam editor teks besar di halaman simulator Davis.
5. Jika ingin mengubah nilai input, edit nilai pada bagian `section .data` secara langsung di editor simulator.
   *Contoh*:
   ```assembly
   section .data
       ALAS: DD 15     ; Ubah nilai alas di sini sesuai keinginan
       TINGGI: DD 8    ; Ubah nilai tinggi di sini sesuai keinginan
   ```
6. Klik tombol **Assemble** di bawah editor simulator untuk melakukan kompilasi.
7. Setelah kompilasi berhasil, gunakan tombol kontrol jalannya program:
   - **Run** untuk mengeksekusi program secara langsung hingga selesai.
   - **Step** untuk mengeksekusi instruksi baris demi baris secara interaktif sambil mengamati perubahan register dan memori.
8. Hasil output cetakan program akan muncul di panel bagian **Console** pada simulator Davis.
