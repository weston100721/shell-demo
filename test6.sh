#!/bin/bash
for test in a b c d e f g
do
    echo $test
done


echo the last item is $test

IFS_OLD=$IFS
echo "$IFS" |od -b


IFS=' '

IFS='+:-;'
IFS=$'\n'

for test in I don\'t know if "this'll" work
do
    echo "word:$test"
done
IFS=$IFS_OLD

for file in /Users/zhaoliang/* /Users/zhaoliang/learning/shell/*.sh
do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done

for (( i=1; i <= 10; i++))
do
    echo "the next number is $i"
done


var=10
while [ $var -gt 0 ]
do
    echo $var
    var=$[ $var - 1 ]
done

var1=100
until [ $var1 -eq 0 ]
do
    echo $var1
    var1=$[ $var1 - 25 ]
done