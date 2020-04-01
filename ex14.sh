#!/bin/bash
#Tal Zigdon 313326019
input=$2
#cat $2 | while read line
cat $2 | while read line || [ -n "$line" ];
do
  #check if the line start with the name, if yes print
  if [[ $line == "$1 "* ]]
  then
  echo "$line"
  fi
done