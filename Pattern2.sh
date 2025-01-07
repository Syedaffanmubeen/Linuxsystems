#!/bin/bash
# Sample execution: -
# 1. ./pattern_2.sh
# Enter the number : 4
# 1
# 2 3
# 4 5 6
# 7 8 9 10
read -p "enter a number: " n #Number of elements
count=1						 #initialize count to get pattern
for rows in `seq $n`		 #Number of rows to be printed
do
	for colum in `seq $rows` #Number of colum to be printed
	do
		echo -n "$count "	 #Required value for pattern
		count=$(($count+1))
	done
	echo
done