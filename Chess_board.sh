# Sample Execution :
# bash Chess_board.sh
# Output : on terminal a chessboard will be formed

#!/bin/bash
for rows in `seq 8`
do
    for colums in `seq 8`
    do
        if [ $((($rows+$colums)%2)) -eq 0 ]
        then
            echo -e -n "\e[40m" " "
        else
            echo -e -n "\e[47m" " "
        fi
    done
    echo -e -n "\e[0m" " "
    echo
done