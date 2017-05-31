

clear 
printf "file ? > "
read FILE
ccrypt -e $FILE 
echo "ok"
