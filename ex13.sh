#!/bin/bash
#Tal Zigdon 313326019
cd "$1"
files=$(ls | sort -V)
for fwd in $files
do
  #check if fwd is directory.
  if [[ -d "$fwd" ]]
  then
    #if yes, we need to get in and move on the files in the directory.
    cd "$fwd"
    lsTemp=$(ls | sort -V)
    for i in $lsTemp
    do
      #check if the name file equals to $2
      if [ $i == $2 ]
      then
        #if yes, print the data in file.
        cat $i
        echo ''
      fi
    done
    cd ..
  #if that not a directory
  else
  if [ "$fwd" == $2 ]
  then
    cat $fwd
    echo ''
  fi
  fi
done