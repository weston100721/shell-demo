#!/bin/bash

if [ $# -eq 2 ]
then
    sum=$[ $1 + $2 ]
    workplace=`pwd`
    script=$(basename $0)
    echo $workplace/$script
    echo $sum
else
    echo "you should offer two params"
fi