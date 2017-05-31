

clear 
printf "file ? > "
read FILE
cd p%
gs -dNOPAUSE -sDEVICE=jpeg -r144 -sOutputFile=./Desktop/p%03d.jpg "$FILE"
echo "ok"

