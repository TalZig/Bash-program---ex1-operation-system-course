#!/bin/bash
#Tal Zigdon 313326019
numOfWords=1
#cd $1
for fwd in "$1"/*
do
  endOfFile="${fwd: -4}"
  #check if the end of the name file is .txt
  if [ $endOfFile == ".txt" ]
    then
    printf "$numOfWords "
    echo "$fwd is a file"| sed "s/.*\///"
      #echo "$numOfWords $fwd is a file"
      numOfWords=$[$numOfWords+1]
  fi
done
for fwd in $1/*
do
  #check if the end of the name file is'nt .txt
  if [[ -d "$fwd" ]]
    then
      printf "$numOfWords "
      echo "$fwd is a directory"| sed "s/.*\///"
      numOfWords=$[$numOfWords+1]
  fi
done
  