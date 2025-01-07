# Example : File.txt
#     Content of file :
# Syed
                        
# Affan

# Mubeen
# Sample Execution :
# ./Delete_empty_lines.sh
# Empty lines are deleted
# Syed
# Affan
# Mubeen

# Code
#!/bin/bash
a=$1
if [ $# -eq 1 ]
then
    `sed -i /^[[:blank:]]*$/d $a`
    echo "Empty Lines are deleted."
    cat "$a"
    echo
else
    echo "ERROR : Pass the file name through command line."
fi