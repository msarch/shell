

#!/bin/bash

MY_STRING="http://toys.tumblrist.com/imageview/wheremyhouse/"
START_VALUE=0
END_VALUE=43
x=$START_VALUE;     # initialize x to start value


while [ "$x" -le $END_VALUE ]; do
    # increment the value of x:
    x=$(expr $x + 1)
	echo $MY_STRING$x
done