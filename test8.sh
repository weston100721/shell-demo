#!/bin/bash
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "found -a option";;
        -b) echo "found -b option";;
        *) echo "$1 is not an option";;
    esac
    shift
done
