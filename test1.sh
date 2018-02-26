#!/bin/bash
# this script displays the date and who's logged on

# 但如果想把文本字符串和命令输出显示在同一行中，该怎么办呢?可以用echo语句 的-n参数。只要将第一个echo语句改成这样就行:
echo -n "当前时间为："
date
echo "Let's see if this'll work"