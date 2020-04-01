#!/bin/bash
#Tal Zigdon 313326019
numOfWords=1
for fwd in "$1"/*
do
  endOfFile="${fwd: -4}"
  #check if the end of the name file is .txt
  if [ $endOfFile == ".txt" ]
    then
      echo "$numOfWords $fwd is a file"
      numOfWords=$[$numOfWords+1]
  fi
done
for fwd in $1/*
do
  #check if the end of the name file is'nt .txt
  if [[ -d "$fwd" ]]
    then
      echo "$numOfWords $fwd is a directory"
      numOfWords=$[$numOfWords+1]
  fi
done
  