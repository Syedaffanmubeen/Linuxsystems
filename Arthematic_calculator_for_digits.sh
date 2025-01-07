# Sample execution: -
# Test Case 1:
# ./operator_dependent.sh 1234+
# Sum of digits = 10
# Test Case 2: 
# ./operator_dependent.sh 8312-
# Subtraction of digits = 2

#!/bin/bash
var=$1
op=${var: -1} #store the operator in a variable
len=${#var}
if [ $# -eq 0 ]
then
    echo "Error : Please pass the arguments through command-line.
    Usage : bash file.sh 2346-"
else
    res=${var:0:1}
    case $op in
        +)
            for i in `seq $(($len-2))`
            do
                res=$(($res+${var:$i:1}))
            done
            echo "Sum of Digits = $res"
            ;;
        -)
            for i in `seq $(($len-2))`
            do
                res=$(($res-${var:$i:1}))
            done
            echo "Subtraction of Digits = $res"
            ;;
        /)
            for i in `seq $(($len-2))`
            do
                res=$(($res/${var:$i:1}))
            done
            echo "Division of Digits = $res"
            ;;
        x)
            for i in `seq $(($len-2))`
            do
                res=$(($res*${var:$i:1}))
            done
            echo "Multiplication of Digits = $res"
            ;;
        *)
            echo "Error : Operator invalid or Missing,Please pass the Operator at the last.
            Usage : bash file.sh 1234/."
            ;;
    esac
fi