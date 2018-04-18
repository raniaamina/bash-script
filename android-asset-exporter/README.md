# Android Asset Exporter
Mempermudah proses ekspor berkas-berkas aset untuk Android ke beberapa ukuran tertentu (daripada ekspor satu-satu :p). Berkas sumber yang dapat dibaca skrip ini adalah SVG.

## Dependensi
Skrip ini menggunakan perkakas rsvg-converter sebagai eksporter SVG-nya, silakan pasang paket-paket berikut agar dapat menjalankan perkakas ini;
- librsvg2-2
- librsvg2-bin
- librsvg2-common

## Rincian ukuran
Ikon
- mdpi 24x24
- hdpi 36x36
- xhdpi 48x48
- xxhdpi 72x72
- xxxhdpi 96x96

Gambar
(khusus untuk gambar ini, saya hanya mengatur tingginya, sedang lebarnya menyesuaikan)
- mdpi 210
- hdpi 315
- xhdpi 420
- xxhdpi 630
- xxxhdpi 840

## Cara menggunakan
Unduh dan salin skrip `ran` ke dalam direktori `/usr/local/bin`. Kemudian siapkan berkas-berkas svg yang akan di ekspor. 

__Jalankan__
- `ran -i direktori` digunakan untuk melakukan ekspor ikon
- `ran -m direktori` digunakan untuk mengekspor berkas gambar, semisal ilustrasi, aset gambar, dll.

Jika berhasil, maka akan muncul dua direktori bernama `icons` dan `image` yang di dalamnya telah tertata dan terisi ikon dan gambar yang telah diekspor ke dalam ukuran-ukuran yang disebutkan di atas.

## Peringatan
Skrip ini masih sangat amatir dan perlu banyak perbaikan, gunakan dengan kesadaran penuh bahwa risiko ditanggung oleh Anda sendiri. Saran dan masukan sangat diperbolehkan untuk menyempurnakan perkakas sederhana (banget) ini :)

Semoga Bermanfaat :)
