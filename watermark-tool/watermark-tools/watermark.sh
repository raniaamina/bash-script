#!/bin/bash
#simple Watermark Exporter for LibreOffice

[ ! -d watermarked ] && mkdir -p watermarked

PS3='Please enter your choice: '
options=("Watermark Only" "Watermark for IG" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Watermark Only")
            echo "Watermarking Your Image"
            for i in *.jpg; 
            do composite -gravity SouthWest watermark.png "$i" "watermarked/${i%.*}.jpg"; 
            done
            echo "Watermarking Done!"
            exit
            ;;
        "Watermark for IG")
            echo "Watermarking & Converting Your Image to Square Form"
            for i in *.jpg; 
                do composite -gravity SouthWest watermark.png "$i" "watermarked/${i%.*}.jpg"; 
            done
            cd watermarked
            for i in *.jpg; 
                do montage -geometry 720x720+0+0 "$i" "${i%.*}.jpg"; 
            done
            echo "Watermarking & Converting Done!"
            exit
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done