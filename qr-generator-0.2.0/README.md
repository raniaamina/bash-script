# QR Generator

## Sekilas Tentang QR Generator
QR Generator merupakan perkakas yang dapat membantu Anda membuat gambar Kode QR dalam jumlah banyak secara sekaligus. Perkakas ini membutuhkan berkas *.csv sebagai sumber basis datanya. Paket `qrencode` diperlukan untuk menjalankan perkakas ini.

## Dependensi dan Prasyarat
### Dependensi
- qrencode
`sudo apt install qrencode` (untuk Debian dan turunannya, distribusi lain silakan disesuaikan)
### Prasyarat
- Berkas *.csv 
QR Generator (secara _default_) akan membaca empat kolom data dalam berkas *.csv. Kolom satu sampai tiga tersebut dapat diisi data sesuai dengan kebutuhan Anda, sedangkan kolom keempat merupakan nama berkas yang nantinya akan digunakan untuk menamai berkas hasil ekspor. (lihat contoh berkas csv yang tersedia)

## Penggunaan
1. Unduh berkas `qr-generator`, kemudian salin-tempel ke sebuah direktori kerja Anda
2. Pastikan berkas `qr-generator` telah dapat dieksusi. Jika belum, maka jalankan perintah `sudo chmod +x qr-generator`
3. Pastikan Anda telah membuat berkas csv dengan ketentuan yang telah disebutkan di atas. Simpan berkas csv ke dalam direktori tempat Anda menyalin berkas `qr-generator` 
4. Buka terminal Anda, dan arahkan ke direktori tersebut
5. Jalankan perintah `./qr-generator`, keluaran dari Terminal akan memandu Anda untuk melakukan langkah selanjutnya
6. QR Generator akan membuat direktori 	`Hasil` yang berisi berkas-berkas gambar berisi kode QR.

## Sumber
Perkakas QR Generator merupakan pengembangan dari skrip csv-to-qr (https://gist.github.com/elbym/97e7ed08b0c1e94d826e/revisions)

