#!/bin/bash

b=''
i=0
while [ $i -le  100 ]
do
    printf "progress:[%-50s]%d%%\r" $b $i
    sleep 0.1
    i=`expr 2 + $i`        
    b=#$b
done
echo

# processbar <current> <total>  
processbar() {  
  local current=$1; local total=$2;  
  local maxlen=80; local barlen=66; local perclen=14;  
  local format="%-${barlen}s%$((maxlen-barlen))s"  
  local perc="[$current/$total]"  
  local progress=$((current*barlen/total))  
  local prog=$(for i in `seq 0 $progress`; do printf '#'; done)  
  printf "\r$format" $prog $perc  
}  
  
# Usage(Client)  
for i in `seq 1 10`; do  
  processbar $i 10  
  sleep 1  
done  
echo ""


processBar()
{
    now=$1
    all=$2
    percent=`awk BEGIN'{printf "%f", ('$now'/'$all')}'`
    len=`awk BEGIN'{printf "%d", (100*'$percent')}'`
    bar='>'
    for((i=0;i<len-1;i++))
    do
        bar="="$bar
    done
    printf "[%-100s][%03d/%03d]\r" $bar $len 100
}

whole=100
process=0
while [ $process -lt $whole ] 
do
    let process++
    processBar $process $whole
    sleep 0.1
done
printf "\n"