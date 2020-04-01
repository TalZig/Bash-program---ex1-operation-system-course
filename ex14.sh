#!/bin/bash
#Tal Zigdon 313326019
input=$2
balance=0
#cat $2 | while read line
#cat $2 | while read line || [ -n "$line" ];
while read  line|| [ -n "$line" ]; do
    name="$line"
  #check if the line start with the name, if yes print
  if [[ $line == "$1 "* ]]
  then
  for name in $line
  do
    if  [[ $name == ?(-)+([0-9]) ]] ; then
      #balance=$(($balance+$name))
      #balance=$[$balance+$name]
      balance=$[balance+name] 
    fi
  done
  echo $line
  fi
done < $2
echo "Total balance: $balance"