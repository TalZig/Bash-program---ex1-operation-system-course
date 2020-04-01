#!/bin/bash
#Tal Zigdon 313326019
numOfLine=1
numOfWords=0
isWordInLine=0
# move line by line
#cat $1 | while read line
cat $1 | while read line || [ -n "$line" ];
do
#  echo "$line"
   for word in $line:
   do
   #for the last work in the line
	temp=$(echo $word | rev | cut -c 2- | rev)
	numOfWords=$[$numOfWords+1]
	if [ "$word" == "$2" ]
	then
    #sign that the work is in line and the line should be print.
		isWordInLine=1
	fi
  #check if that the last word in the line
	if [ "${word: -1}" == ":" ]
	then
		if [ "$temp" == "$2" ]
		then
			isWordInLine=1	
		fi
	fi
	done
	if [ $isWordInLine == 1 ]
	then
		echo "$numOfLine $numOfWords"
	fi
	numOfLine=$[$numOfLine+1]
	numOfWords=0
	isWordInLine=0
done

