#!/bin/bash

name=$(dirname "$0");
echo $name;
cd "$name";
var2=`pwd`;
var3="$(dirname $var2)";
echo $var3;

var="$(dirname "$(cd "$(dirname "$0")"; "pwd")")";
echo $var;
