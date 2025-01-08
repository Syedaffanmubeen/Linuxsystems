# Sample Input:./sorting.sh -a 5 4 6 2 3 8 9 7 1
# /sorting.sh -d 5 4 6 2 3 8 9 7 1
# Sample Output:Ascending order of array is 1 2 3 4 5 6 7 8 9
# Descending order of array is 9 8 6 5 4 3 2 1

#!/bin/bash
if [ $# -eq 0 ] #check the command-line arguments
then
	echo "Error : Please pass the argument through command line.
	Usage : ./sorting -a/-d 4 23 5 6 3"							#print error if arguments are not passed in CL.
else
	arr=($@)			#store all the arguments in an array
		len=${#arr[@]}		#store the length of an array
		op=$1				#store 1st argument in a operator
		case $op in			#case statements to choose -a/-d
			-a)
				for i in `seq $(($len-1))` #outer for loop
				do
					for j in `seq $(($len-$i-1))` #inner for loop to compare number
					do
						if [ ${arr[$j]} -ge ${arr[$(($j+1))]} ]  #check condition for swapping
						then
							temp=${arr[$j]}						 #storing the value in an temporary variable
							arr[$j]=${arr[$(($j+1))]}			 #swapping the values
							arr[$(($j+1))]=$temp
						fi
					done
				done
				echo "Ascending order of array is ${arr[@]:1}" 	#printing the array ascending order
				;;
			-d)
				for i in `seq $(($len-1))`						#outer for loop
				do
					for j in `seq $(($len-$i-1))`				#inner for loop to compare
					do
						if [ ${arr[$j]} -le ${arr[$(($j+1))]} ]	#check condition for swapping
						then
							temp=${arr[$j]}						#storing the value in an temporary variable
							arr[$j]=${arr[$(($j+1))]}			#swaping the values
							arr[$(($j+1))]=$temp
						fi
					done
				done
				echo "Descending order of array is ${arr[@]:1}"  #print the array in descending order
				;;
			*)
				echo "Error : Please pass the choice.
				Usage: ./sorting -a/-d 4 23 5 6 3"							#print error if the choice is other than -a/-d
				;;
		esac
fi