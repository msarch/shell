# cookbook filename: func_choose
# Let the user make a choice about something and execute code based on
# the answer
# Called like: choose <default (y or n)> <prompt> <yes action> <no action>
# e.g. choose "y" \
# "Do you want to play a game?" \
# /usr/games/GlobalThermonucularWar \
# 'printf "%b" "See you later Professor Falkin."' >&2
# Returns: nothing


printf  "You chose: "
read -p "$prompt" answer



case "$answer" in [yY1] printf  "Y" ;;

case "$answer" in [nN0] printf  "N" ;;

	;;
printf "%b" "Unexpected answer '$answer'!" >&2 ;;
	esac
	} # end of function choose