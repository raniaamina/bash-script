## inkporter

Perkakas sederhana untuk mengekspor berkas svg dari Inkscape berdasarkan pattern objek ID yang telah ditentukan. Perkakas ini dapat juga disebut dengan *SVG extractor*.

### Dependensi

- Inkscape

### Cara Penggunaan

#### Persiapan
1. Unduh berkas `inkporter` (saya asumsikan berkas disimpan di home Anda)
2. Atur izin berkas agar menjadi executable
Buka terminal Anda, kemudian jalankan perintah 
```bash
sudo chmod +x ~/inkporter
```
3. Supaya dapat dijalankan di mana saja, silakan salin berkas tersebut ke folder /usr/local/bin dengan perintah;
```bash
sudo cp ~/inkporter /usr/local/bin/inkporter
```

#### Penggunaan
Untuk dapat menggunakan inkporter ini, Anda diharuskan untuk mengeset objek ID pada masing-masing objek yang Anda inginkan. Objek ID di Inkscape dapat di set melalui dialog objek yang dapat dipanggil dengan pintasan ctrl+shift+o.

Pilih nama objek dengan menggunakan pattern atau pola tertentu, misalnya hlm-1, hlm-2, atau ic_home ic_back, dan seterusnya. Simpan berkas SVG tersebut (saya asumsikan di simpan di home dengan nama tes-file.svg)

Buka terminal Anda, kemudian jalankan inkporter dengan format perintah sebagai berikut.
```bash
inkporter /lokasi/file.svg objectID
```

Sehingga untuk berkas yang telah dibuat tadi format perintahnya menjadi
```bash
inkporter tes-file.svg hlm

# atau

inkporter tes-file.svg ic
```
Saat pemrosesan berlangsung Anda akan diminta untuk memilih format output (PNG, PDF, atau SVG) dan menentukan folder untuk menyimpan hasil ekspor.

Tunggu sampai proses selesai, dan ... selamat, objek-objek dalam berkas svg Anda berhasil diekspor sesuai dengan ID yang telah Anda tentukan.

### Kegunaan
Skrip ini memanglah sangat sederhana, namun semoga dapat membantu untuk menuntaskan beberapa pekerjaan Anda semisal;
- ekspor ikon (baik untuk keperluan personal maupun dijual ke pasar kreatif)
- ekspor halaman-halaman buku 
- dan hal-hal lainnya

agar menjadi lebih lebih efisien dan cepat.

### Lain-Lain
Skrip ini bebas untuk dimodifikasi dan sebarkan dengan atau tanpa memberikan keterangan tentang kreator untuk tujuan apapun. 
Untuk berdiskusi seputar inkporter ini, silakan hubungi @raniaamina di Telegram atau via surel di alamat me@raniaamina.id.