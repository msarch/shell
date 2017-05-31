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
var=$1
echo $var
var=${var%/*}
echo $var

cd $var
mkdir _converted

index=1          # Initialize count.
for i in "$@"
do
  echo "converting #$index = $i"
  echo ""
  sips -s format jpeg $i --out _converted
  let "index+=1"
done    

echo "done converting"

