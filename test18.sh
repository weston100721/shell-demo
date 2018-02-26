#!/bin/bash

i=0
string=">"
while [ $i -le 20 ]
do
    printf "[%-20s][%2d/%2d]\r" $string $i 20
    # echo $i
    i=$[ $i + 1 ]
    string="="$string
    sleep 0.1
done
echo