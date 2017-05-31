#!/usr/bin/env bash
# author ms
# tintouen.fr
# 2015-06-23

clear
echo "............................................."
echo ".   find in SCRIBD document'spage source :  ." 
echo ".            'document_id= ...' :           ."
echo ".            'access_key= ... '             ."
echo "............................................."
echo ""
printf "paste the document_id (ie : '108992419') : "
read ID
printf "paste the access_key (ie : '13davbcdewnewn9m5w02' : "
read KEY

DESTDIR="/Users/MS/Desktop/$ID/"

mkdir $DESTDIR
open -a Safari "http://d1.scribdassets.com/ScribdViewer.swf?document_id=$ID&access_key=key-$KEY"
echo ""
echo "done"

open $DESTDIR
exit
