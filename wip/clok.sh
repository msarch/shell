#!/bin/bash 

function hour() {
 local COUNTER=1
 local HOUR=$(date +'%H')
 while [  $COUNTER -lt $((HOUR + 1)) ]; do
  if [ $((COUNTER % 10)) == "0" ]; then
   DEC=`echo $COUNTER | sed 's/.$//'`
   echo -n "$DEC"
  else
   echo -n "|"
  fi
  COUNTER=$((COUNTER+1))
 done
 echo
}

function minute() {
 local MIN=$(date +'%M')
 local COUNTER=1
 while [  $COUNTER -lt $((MIN + 1)) ]; do
  if [ $((COUNTER % 10)) == "0" ]; then
   DEC=`echo $COUNTER | sed 's/.$//'`
   echo -n "$DEC"
  else
   echo -n "|"
  fi
  COUNTER=$((COUNTER+1))
 done
 COUNTER=1
 echo
}

function second() {
 local SEC=$(date +'%S')
 local COUNTER=1 
 while [  $COUNTER -le $SEC ]; do
  if [ $((COUNTER % 10)) == "0" ]; then
   DEC=`echo $COUNTER | sed s/.$//`
   echo -n $DEC
  else
   echo -n "|"
  fi
  COUNTER=$((COUNTER+1))
 done
 echo
} 

[ $3 ] && {
 while [ 1 ]; do 
  echo -n "$(date +'%H'):"
  echo -n "$(date +'%M'):"
  second
  sleep 1
 done
}

[ $2 ] && hour
[ $1 ] && minute 
second
