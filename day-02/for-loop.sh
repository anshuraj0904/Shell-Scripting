#!/bin/bash


if [[ -n "$1" &&  -n "$2" && -n "$3" ]];
# Note:-  -n returns true if the $1, or any variable is not empty, but -z returns true if that variable/argument is empty!
then
	if [[ "$3" -lt "$2" ]];
        then
              echo "Please pass the valid numbers!"
              exit 1
        else
	      for (( i=$2 ; i<=$3;i++ ))
              do
                  mkdir $1-$i
              done
	fi      

else    
  echo "Please pass all the arguments!"
  exit 1

fi    
