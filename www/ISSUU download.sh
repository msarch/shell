#!/usr/bin/env bash
# author ms
# tintouen.fr
# 2013-06-23

clear
printf "please provide the ISSUU doc ID : "
printf "search page source for the string 'documentId'"
printf "ex : documentId : \"090409124522-f5d6aed3b38548dcab8257cbf6487852\""
printf :"Copy the ID (minus the quotes) and paste it here : "
read ID
printf "start page nb? >"
read FIRST
printf "end page nb? >"
read LAST

DESTDIR="/Users/MS/Desktop/$ID/"

mkdir $DESTDIR
for (( i=$FIRST; i <= $LAST; i++ ))
do wget -P $DESTDIR --user-agent=Mozilla --no-directories  "http://image.issuu.com/$ID/jpg/page_$i.jpg"
done


printf "done"

open $DESTDIR
exit
