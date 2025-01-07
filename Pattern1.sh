#!/bin/bash
# Sample execution: -
# Test Case 1:
# ./pattern_1.sh
# Enter the number : 4
# 1
# 1 2
# 1 2 3
# 1 2 3 4
read -p "enter a number: " num	#Number of elements
for rows in `seq $num`			#Number of rows to be printed
do
	for colums in `seq $rows`   #Number of colums to be printed
	do
		echo -n  "$colums "	    #Required value for pattern
	done
	echo
done