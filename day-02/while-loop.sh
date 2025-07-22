#!/bin/bash

num=0

while [[ $num -le 5 ]]
do
	echo "Hello $num times"
	((num=num+1))
done

while [[ $((num % 2)) -eq 0 && $num -le 10  ]]
do
	echo "$num"
	((num=num+2))
done



# There're three ways to incerement the num :- 1. ((num=num+1)) 2. let num=num+1 3. num=$((num+1))
