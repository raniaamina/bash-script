# Android Asset Exporter
Mempermudah proses ekspor berkas-berkas aset untuk Android ke beberapa ukuran tertentu (daripada ekspor satu-satu :p). Terdapat dua skrip di sini, `aspor` dan `icspor`. `aspor` digunakan untuk mengekspor berkas gambar, semisal ilustrasi, aset gambar, dll, sedang `icspor`digunakan untuk melakukan ekspor ikon. Berkas sumber yang dapat dibaca kedua skrip ini adalah SVG.

## Dependensi
Skrip ini menggunakan perkakas rsvg-converter sebagai eksporter SVG-nya, silakan pasang paket-paket berikut agar dapat menjalankan perkakas ini;
- librsvg2-2
- librsvg2-bin
- librsvg2-common

## Rincian ukuran
Ikon
mdpi 24x24
hdpi 36x36
xhdpi 48x48
xxhdpi 72x72
xxxhdpi 96x96

Gambar
(khusus untuk gambar ini, saya hanya mengatur tingginya, sedang lebarnya menyesuaikan)
mdpi 210
hdpi 315
xhdpi 420
xxhdpi 630
xxxhdpi 840

## Cara menggunakan
Unduh dan salin skrip `aspor` dan `icspor` ke dalam direktori `/usr/bin`. Kemudian siapkan berkas-berkas svg yang akan di ekspor.
Untuk berkas ikon, simpan ke dalam direktori bernama `svg-icons` sedangkan untuk berkas gambar/ilustrasi, simpan di direktori bernama `svg-image`.
Saya asumsikan kedua folder tersebut disimpan di direktori bernama 	`project` yang terdapat di home. Maka langkah-langkahnya adalah; buka terminal, lalu jalankan perintah berikut

```bash
$ cd project
$ aspor
$ icspor
```

Jika berhasil, maka akan muncul dua dorektori bernama `icons` dan `image` yang di dalamnya telah tertata dan terisi ikon dan gambar yang telah diekspor ke dalam ukuran-ukuran yang disebutkan di atas.

## Peringatan
Skrip ini masih sangat amatir dan perlu banyak perbaikan, gunakan dengan kesadaran penuh bahwa risiko ditanggung oleh Anda sendiri. Saran dan masukan sangat diperbolehkan untuk menyempurnakan perkakas sederhan (banget) ini :)


Semoga Bermanfaat :)
