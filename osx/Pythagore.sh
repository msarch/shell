echo "pythagore needs 2 values (base and height)"
echo "and will return hypothenuse"
printf "b? >"
read base
printf "h? >"
read hauteur


echo "scale=2; 
             hypothenuse= sqrt(($hauteur^2)+($base^2));
             hypothenuse"\
          | bc
echo "hit return key to exit"
read q

