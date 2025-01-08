
# Sample execution: -
# Test Case 1:
# bash string_length.sh hello hai how are you?
# Length of string (hello) - 5
# Length of string (hai) - 3
# Length of string (how) - 3
# Length of string (are) - 3
# Length of string (you?) - 4

#!/bin/bash
arr=($@)
n=$((${#arr[*]}-1))
if [ $# -eq 0 ]
then
    echo "Error : Please Pass the Arguments through Command-Line."
else
    for i in `seq 0 $n`
    do
        echo "lenght of string (${arr[$i]}) - ${#arr[$i]}"
    done
fi