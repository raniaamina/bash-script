# Eksporter Kartu Sakti

Eksporter Kartu Sakti (EKS) merupakan perkakas bantu untuk membuat membuat kartu sakti edisi siap cetak. Perkakas ini meringkas beberapa pekerjaan antara lain;
- Membuat berkas QR
- Mengimplementasikan QR dan data pada kartu untuk dicetak

Untuk dapat menjalankan perkakas EKS ini, Anda perlu memastikan beberapa dependensi dan prasyarat di bawah ini terpenuhi.

### Dependensi
- python2
- imagemagick
- unzip
- inkscape
- qrencode

Debian [<=9] / Ubuntu [<=18.04] : `sudo apt install python imagemagick inkscape qrencode unzip`

### Prasyarat
- Berkas CSV berisi data yang hendak ditulis di kartu
- Template desain dalam bentuk format SVG yang telah diatur variabel isiannya sesuai dengn berkas CSV
- Berkas (generator.py)[https://github.com/butesa/ink-generator-python]

Ketiga prasyarat di atas sudah tersedia di dalam repositori ini, Anda hanya perlu mengsisi berkas template.csv sesuai dengan isian yang dibutuhkan.

Catatan: data yang akan diubah menjadi QR merupakan data yang isikan pada kolom kedua, atau dalam hal ini kolom bernama _key_


### Cara penggunaan
Pastikan berkas Eksporter.sh, template.csv, template.svg dan generator.py berada dalam satu direktori/folder yang sama. kemudian jalankan berkas Eksporter.sh melalui terminal `bash eksporter.sh`. Langkah-langkah selanjutnya silakan ikuti petunjuk yang tampil di layar terminal.

Eksporter kartu sakti ini dapat dimanfaatkan untuk beberapa keperluan lain, misalnya mengekspor tiket yang mengharuskan ada QR kode atau hal-hal sejenisnya. 

```
note:
- baris pertama di template.csv merupakan nama kolom, tidak perlu diapit tanda petik dua
- Pemisah kolom dalam berkas csv dipisahkan dengan tanda titik koma 
- Jika dalam satu kolom ada karakter-karakter khusus seperti ''',',','-' apitlah dengan tanda petik dua, contoh:
"Sapidi , S.Pd., M.Pd.";89328340aaeb8ced2;0812 345 678 921;Kantor Keuangan

- eksporter.sh saat ini support untuk 4 kolom, jika ingin menambah kolom lagi, silakan bereksperimen :)
```
