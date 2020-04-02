#!/bin/bash
#Tal Zigdon 313326019
input=$2
balance=0
#tell me when i stop to count the number of words of the name
stop1=0
#count the number of words in name
str1=( $1 )
str1=${#str1[@]}
while read  line|| [ -n "$line" ]; do
    stop1=0
    name="$line"
    numOfWordsInName=0
  #check if the line start with the name, if yes print
  if [[ $line == "$1 "* ]]
  then
  for name in $line
  do
    if  [[ $name == ?(-)+([0-9]) ]] ; then
      if [ $numOfWordsInName == $str1 ] ; then
      balance=$[balance+name] 
      stop1=1
      fi
    fi
    #counting the number of words in the name
    if [ $stop1 == 0 ]
    then
    numOfWordsInName=$[$numOfWordsInName+1]
    fi
  done
  #check if the number of words in the name equal before printing the line
  if [[ $numOfWordsInName == $str1 ]] ; then
    echo $line
  fi
  fi
done < $2
echo "Total balance: $balance"