#!/bin/sh

# the for-loop goes over a list of words 
# it uses the do-done keywords just like the while loop


# count how many lines each shell script contains
for file in *.sh; do
    # backticks are used for command substitution
    # the command in the backticks are executed and
    # the output is returned back 
    lines=`wc $file | tr -s ' ' | cut -f2 -d' '`
    echo "$file has $lines lines"
done

# exercise: Loop over some type of files and use the 
# "grep" UNIX command to find snippets of strings in them.
echo "Counting finished!"

# New feature: count even
for i in {1..10}
do
    if (( i % 2 == 0 ))
    then 
        echo "Even: $i"
    fi
done