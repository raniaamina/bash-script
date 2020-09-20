#!/bin/bash

#select .data
#sed -i '/data_file .data/s/^#*//g' data-uji
#sed -i '/data_file \/usr\/bin/s/^#*/#/g' data-uji

#select /usr/bin
#sed -i '/data_file .data/s/^#*/#/g' data-uji
#sed -i '/data_file \/usr\/bin/s/^#*//g' data-uji


echo "Silakan pilih opsi yang Anda inginkan"
echo " "
PS3='Enter the number: '
options=(".data" "usr-bin" "cancel")
select opt in "${options[@]}"
do
    case $opt in
        ".data")
            echo
            echo "mengaktfkan .data"
            sed -i '/data_file .data/s/^#*//g' data-uji
            sed -i '/data_file \/usr\/bin/s/^#*/#/g' data-uji
            break
            ;;
        "usr-bin")
            echo
            echo "mengaktfkan /usr/bin"
            sed -i '/data_file .data/s/^#*/#/g' data-uji
            sed -i '/data_file \/usr\/bin/s/^#*//g' data-uji
            break
            ;;
        "cancel")
            exit
            ;;
        *) echo "Salah ndul, Ulangi! $REPLY";;
    esac
done;
echo " "
echo "berikut isi data-uji terbaru:"
cat data-uji
echo " "
