
#!/usr/bin/env bash
# author ms
# 
# 2013-10-13

clear
printf "url? >"
read URL

printf "pdf file name? >"
read OUT


DESTDIR="/Users/MS/Desktop/pdf/"
mkdir $DESTDIR

echo "converting url : $QUERY to pdf ..."
echo""
echp "   MMM     MMM "               
echp " MM   MM MM   MM "
echp "M       M       M "
echp "M               M "
echp " M             M "             
echp "  MM         MM "
echp "    MM     MM "
echp "      MM MM  "
echo "        M"

wkpdf --source "$URL" --stylesheet-media screen --paper A4 --orientation portrait  --print-background yes --paginate no --output "$DESTDIR/$OUT.pdf"

# --paper A4 --orientation portrait --margin 50

printf "done"
open $DESTDIR

exit


	

