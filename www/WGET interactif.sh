#!/usr/bin/env bash
# author ms
# tinkerstudio.fr
# 2012-11-19

clear
printf "url? >"
read URL
printf "filetypes? >"
read TYPE
printf "number of recurse levels? >"
read RECURSE

DESTDIR="/Users/MS/Desktop/dl/"
mkdir $DESTDIR
echo "downloading url : $QUERY"
echo " recurse levels : $RECURSE"
echo " to : $DESTDIR"

wget -P $DESTDIR --user-agent=Mozilla -E  --convert-links --page-requisites --no-directories --recursive --level=$RECURSE --accept= "$TYPE" --cookies=off robots=off --span-hosts --tries=1 $URL

printf "done"
open $DESTDIR

exit
