#!/bin/bash
#QR Generator by Rania Amina. Original source https://gist.github.com/elbym/97e7ed08b0c1e94d826e
#Ink-Generator by butesha. https://github.com/butesa/ink-generator-python

clear
printf "==========================
Tulis Nama Berkas CSV Anda
==========================\n
Contoh Penulisan: \nBerkas.csv, /home/user/Berkas.csv, atau ../Berkas.csv\n\n"
# choose the database
read -p "Berkas: " DATACSV

# export option
echo
echo 'Pilih format ekspor yang Anda inginkan?'
select TYPE in svg png eps ascii
do
        case $TYPE in 
        svg|png|eps|ascii)   
                break
                ;;
        *)
                echo "Pilihan salah, ulangi!" 
                ;;
        esac
done
## read csv, and generate QRCode
if [[ $DATACSV != *.csv ]]
then
  clear 
  echo "Maaf, QR Generator hanya mendukung berkas *.csv :("
  echo "Silakan jalankan kembali dan masukkan berkas yang benar!"
  exit 1
else
  i=0
  #create folder
  TEMPAT_QR="/tmp/qr"
  if [ ! -d $TEMPAT_QR ]
  then
      mkdir -p $TEMPAT_QR
  fi
  while read line
  do  
  
    #create and choose variables,
    #file csv yg disiapkan berupa 4 kolom saja, lokasiqr tidak perlu
    #misal: var1 -> nama, var2 -> key, var3 -> nohp, var4 -> koperasi, var5 -> lokasiqr
    var1=$(cut -d ';' -f1 <<< "$line")
    var2=$(cut -d ';' -f2 <<< "$line")
    var3=$(cut -d ';' -f3 <<< "$line")
    var4=$(cut -d ';' -f4 <<< "$line")
    var5=$TEMPAT_QR/$var3.$TYPE
    
    #terminal output
    echo $var1 Ok!
    
    #first, check i value
    if [[ "$i" -eq "0" ]]
    then
      # baca baris pertama untuk baca judul, lalu tulis ke data sementara
      echo $var1,$var2,$var3,$var4,lokasiqr >> /tmp/data-sementara.csv
      i=1
      continue
    else
      echo "$var1",$var2,$var3,$var4,$var5 >> /tmp/data-sementara.csv
      # otherwise, generate QR-code when reach 2nd line
      qrencode -t $TYPE -d 300 -m 1 --background=FFFFFF00 --foreground=000000ff -o "$TEMPAT_QR/$var3".$TYPE "$var2"
    fi    
   #database name
  done < $DATACSV
fi
## end read csv file
##
## do render qr data with ink-generator.py
# parameters:
# --vartype=['COLUMN', 'NAME'] -> untuk baca file csv, pilih salah satu
# --extravars='' -> untuk extra teks yang akan diganti
# --datafile=path/to/csv -> lokasi csv kita berada
# --format=['PDF', 'SVG', 'PS', 'EPS', 'PNG', 'JPG'] -> pilih formatnya apa
# --dpi=90 -> set DPI untuk PNG/JPG
# --output=pattern -> penamaan file output
# file.svg -> nama file svg nya
#
python2 generator.py --vartype="NAME" --datafile=/tmp/data-sementara.csv --extravars="qr-template.png=>lokasiqr" --dpi="300" --format="PNG" --output=/tmp/hasil/%VAR_nama%.png template.svg
echo "Selesai menjalankan ink-generator."
echo "Masukkan nama berkas untuk menyimpan file zip (tanpa imbuhan .zip)"
read -p "Berkas: " NAMA_OUTPUT
read -e -p "Lokasi penyimpanan: " TEMPAT_OUTPUT
echo "Memproses..."
mkdir -p $TEMPAT_OUTPUT
zip -j "$TEMPAT_OUTPUT/$NAMA_OUTPUT.zip" /tmp/hasil/*
# remove temp file
rm -rf $TEMPAT_QR /tmp/hasil /tmp/data-sementara.csv
echo "DONE!"
echo 
read -n 1 -s -r -p "Tekan sembarang tombol untuk mengakhiri sesi..." 
    clear

