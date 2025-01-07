#!/bin/bash
<<Documentation
Name:Syed Affan Mubeen
Date:20/09/2023
Description:Write a script for arithmetic calculator using command line arguments
Sample Input: 1. ./arithmatic_calc.sh 25 + 41
2. ./arithmatic_calc.sh 10 x 5
3. ./arithmatic_calc.sh 25 / 5
4. ./arithmatic_calc.sh 10.2 – 5.6
Sample Output:1. 25 + 41 = 66
2. 10 x 5 = 50
3. 25 / 5 = 5.00
4. 10.2 – 5.6 = 4.6
Documentation
if [ $# -eq 0 ] #check for the command line argument
then
echo "Error : Please pass the arguments through command line.
Usage:./arithmatic_calc.sh 2.3 + 6.7"
elif [ $# -eq 3 ] #check for command line argument whether 3 argument passed or not
then
	case $2 in #case statement to get basic calculation
		+)
			add=`echo $1 + $3 | bc`  #Addition of two number
			echo "$1 $2 $3 = $add"
			;;
		-)
			sub=`echo $1 - $3 | bc` #Subtraction of two number
			echo "$1 $2 $3 = $sub"
			;;
		x)	
			mul=`echo $1 \* $3 | bc` #Multiplication of Two Number
			echo "$1 $2 $3 = $mul"
			;;
		/)
			div=`echo "scale=2; $1 / $3" |bc` #Division of Two Number
			echo "$1 $2 $3 = $div"
			;;
		*)
			echo "Give a valid operator"
			;;
	esac
	else
	echo "Error:Please pass 3 arguments.
Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi