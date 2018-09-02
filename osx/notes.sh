#!/bin/bash
if [ -z "$1" ]; then
    echo "Put search term on command line"
    exit 1
fi

# Set this to:
#  0 to only show matching notes
#  1 to show matches lines in context first, before printing matching notes
PRINT_MATCHES_IN_CONTEXT=0

# Find matches
LIST=/tmp/notelist.$$.txt
grep -r -i -l "$1" /Volumes/notebook > $LIST
if [ $PRINT_MATCHES_IN_CONTEXT -eq 1 ]; then
    grep -r -i --color "$1" /Volumes/notebook
    echo ""
fi

# Display list of matching files
exec<$LIST
COUNTER=1
echo "[0] abort"
while read LINE
do
    FILE=`basename "$LINE"`
    echo "[$COUNTER] $FILE"
    ((COUNTER=COUNTER + 1))
done

# Ask for selection
exec<&1
echo -n "Selection: "
read SELECTION

# Find file that matches selection and display it
exec<$LIST
COUNTER=1
while read LINE
do
    if [ "$COUNTER" == "$SELECTION" ]; then
        less -i -p "$1" "$LINE"
    fi
    ((COUNTER=COUNTER + 1))
done

# Clean up temp file
rm -f $LIST


#“Notes” Script Overview

#The script itself is called “notes” and lets you place a search term on the command line. 
# I can enter “notes apple” and it responds with a list of all notes mentioning the term “apple” (in upper or lowercase).

#Given this list, I can then select one and bring up the content of the note with my search term highlighted.



#Requirements

#The “notes” script is a Bash shell script.  This means it will run on Unix or any Unix-like operating system. 
# These include the stock Linux and OS X installs. 
# To install, you just need to create the script, mark it as executable (chmod 755), and put it somewhere in your path (/usr/local/bin). 
# If your Dropbox folder is in a different place than your home directory or if you’re syncing with a Trunk Notes folder
# other than trunksync, then you’ll have to make the appropriate modifications.
