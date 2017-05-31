
KEYWORD=$1
URL="http://images.google.com/images?q=${KEYWORD}&svnum=100&hl=en&lr=&safe=off&sa=G&imgsz=${SIZE}"
echo "searching google for $words"
open -a Safari $URL
