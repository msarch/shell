
#open ./Downloads
	
ki = " "
clear
echo $"'d' to open Downloads"
echo $"'p' to open Projects Folder"
echo $"'q' to quit"

while [[ $ki != "q" ]]
do
	read -s -n 1 ki
	if [[ $ki == "d" ]]; then open ./Downloads
		elif
			[[ $ki == "p" ]]; then open "./Documents/(Pro)/"
			#statements
		else
		printf "\a"
	fi
done
exit


