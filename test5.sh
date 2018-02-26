#!/bin/bash
# bash shell的if语句会运行if后面的那个命令。如果该命令的退出状态码是0 (该命令成功运行)，
# 位于then部分的命令就会被执行。如果该命令的退出状态码是其他，then部分的命令就不会被执行，
# bash shell会继续执行脚本中的下一个命令。fi用来表示if-then到此结束 。

if pwd
then 
    echo "It worked"
fi


# if IamNotACommand
# then
#     echo "it worked"
# fi

testUser=zhaoliang
if grep $testUser /etc/passwd
then  
    echo "This is my first command"
    echo "This is my second command"
    echo "I can even put in other commands besides echo:"
    ls -a /home/$testuser/.b* 
fi

# if..then..else..fi
if pwd
then
    echo "It worked"
else
    echo "else"
    if who
    then
        echo "haha"   
    fi
fi

# if command1 
# then
#     command set 1 
# elif command2
# then
#     command set 2 
# elif command3 
# then
#     command set 3 
# elif command4 
# then
#     command set 4
# fi


# test命令可以判断三类条件：
# 数值比较
# 字符串比较
# 文件比较
# false
if test
then
    echo "true"
else
    echo "false"
fi

my_variable="Full"

if test $my_variable
then
    echo "$my_variable true"
else 
    echo "$my_variable false"
fi

# 数值比较
# -eq 等于
# -ge 大于等于
# -gt 大于
# -le 小于等于
# -lt 小于
# -ne 不等于
value1=10
value2=12
# [] 里面外面都要挨着一个空格
if [ $value1 -gt 5 ]
then 
    echo "$value1 大于 5"
elif [ $value1 -le $value2 ]
then
    echo "$value1 小于等于 $value2"
fi

# 字符串比较
# str1 = str2 检查字符串是否相等
# str1 ！= str2 检查字符串是否不等
# str1 < str2 检查str1是否比str2小
# str1 > str2 检查str1是否比str2大
# -n str1 检查str1的长度是否不为0
# -z str1 检查str1的长度是否为0

var1=baseball
var2=eadas
if [$var1 > $var2]
then
    echo "var1 > var2"
else
    echo "var1 <= var2"
fi

var1=testing
var2=''
if [ -n $var1 ] # true
if [ -z $var2 ] # true
if [ -z $notDefind ] # true

# 文件比较
# -d file  存在&&目录
# -e file  存在
# -f file  存在&&文件
# -r file  存在&&可读
# -s file  存在&&非空
# -w file  存在&&可写
# -x file  存在&&可执行
# -O file  存在&&并属于当前用户
# -G file  存在&&默认组与当前用户相同
# file1 -nt file2  file1比file2新
# file1 -ot file2  file1比file2老

# 复合条件查询
# [ condition1 ] && [ condition2 ]
# [ condition1 ] || [ condition2 ]

# (( expression )) 数学赋值或比较表达式。(( 10 ** 2 > 90))
# [[ expression ]] 提供了针对字符串比较的高级特性。 [[ "asdfsdf" == a*]]

#### case

# case variable in
# pattern1 | pattern2) commands1;; pattern3) commands2;;
# *) default commands;;
# esac

case $USER in
rich | barbara)
    echo "Welcome, $USER"
    echo "Please enjoy your visit";;
testing)
    echo "Special testing account";;
jessica)
    echo "Do not forget to log off when you're done";;
*)
    echo "Sorry, you are not allowed here";;
esac