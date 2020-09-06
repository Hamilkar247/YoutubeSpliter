#!/bin/bash
namefile = ''
function parting_video()
{
  rozdzialy_timestamp="rozpiska-rozdzialow.txt"
  while IFS= read -r line
  do
    echo "witam"
    IFS='-' read -ra tablica <<< "$line"
    echo "${tablica[0]}"
    starttime="${tablica[0]}"
    endtime="${tablica[1]}"
    nameoutput="${tablica[2]}"" $namefile"
    echo "${tablica[1]}"
    echo "${tablica[2]}"
    ffmpeg -ss $starttime -i "$namefile" -to $endtime -c copy "$nameoutput"
  done < "$rozdzialy_timestamp"
}

youtube-dl -i --verbose --extract-audio --audio-format  mp3 "$1"
echo "Skończyłem pobierać"
namefile="$(find . -name "*.mp3" -exec basename {} .po \;)"
echo "$namefile"
parting_video
rm $namefile
mv *.mp3 $MP3_Folder
#var="$(awk 'NR==1 {print; exit}' parts.txt)"
##ffmpeg -ss "00:00:00" -i "$namefile" -to "00:05:00" -c copy output.mp3
#IFS='-' read -ra ADDR <<< "$var"
#
#for number_line in
#var="$(awk "NR==$number_line {print; exit}" parts.txt)"
#echo "${ADDR[1]}"
#echo "${ADDR[0]}"
#for i in "${ADDR[@]}"; do
#      echo $i" kurczem"
#done