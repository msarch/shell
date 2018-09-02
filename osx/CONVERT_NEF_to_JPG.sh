#!/bin/bash
# play1.sh
# Plays music files
# Invoke this script with several arguments".

E_BADARGS=65

if [ ! -n "$1" ]
then
  echo "Usage: `basename $0` argument1 argument2 etc."
  exit $E_BADARGS
fi  
echo ""
index=1          # Initialize count.

for arg in "$@"
do
  filename="${arg%.*}"
  echo "converting #$index : $arg"
#  convert "$arg" -quality 100% "$filename.jpg"
# too dark, see : https://www.imagemagick.org/discourse-server/viewtopic.php?t=29340
  convert  "$arg" -set colorspace RGB -colorspace sRGB -quality 100% "$filename.jpg"
  echo "converted to $filename.jpg"
  convert  "$arg" "$filename.tiff"
  echo "converted to $filename.tiff"
  echo ""
  let "index+=1"
done            
