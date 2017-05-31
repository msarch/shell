# author ms
# tinkerstudio.fr
# 2011-04-28

clear 
printf "how many minits ?";
read T;
T=$(($T*60))
echo "let's go for $T seconds"

sleep $T && echo  "control-V control-G"