#!/bin/bash
# shell脚本还允许在脚本中定义和使用自己的变量。

# 用户变量可以是任何由字母、数字或下划线组成的文本字符串;
# 长度不超过20个;
# 用户变量区分大小写，所以变量Var1和变量var1是不同的
var1=10
var2=-24
var3=testing
var4="string more testing"

# shell脚本会自动决定变量值的数据类型。
# 在脚本的整个生命周期里，shell脚本中定义的变量会一直保持着它们的值，但在shell脚本结束时会被删除掉。
age=10
guest="zhaoliang"
echo "$guest is $age years old."

name=$guest
echo "the value of name is : $name"

# 获取命令返回值的两种方式
theDate=`date`
echo "the time : $theDate"
theUser=$(who)
echo "the user : $theUser"

# bash shell为了保持跟Bourne shell的兼容而包含了expr命令，
# 但它同样也提供了一种更简单的方法来执行数学表达式。在bash中，
# 在将一个数学运算结果赋给某个变量时，可以用美元符和 方括号($[ operation ])将
# 数学表达式围起来。
var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo The final result is $var4

# 浮点解决方案
# 有几种解决方案能够克服bash中数学运算的整数限制。最常见的方案是用内建的bash计算器， 叫作bc。
var1=$(echo "scale=4; 3.44 / 5" | bc)
echo The answer is $var1

var1=100
var2=45
var3=$(echo "scale=4; $var1 / $var2" | bc)
echo The answer for this is $var3

var1=10.46
var2=43.67
var3=33.2
var4=71
var5=$(bc << EOF
scale = 4
a1 = ( $var1 * $var2)
b1 = ($var3 * $var4)
a1 + b1
EOF
)
echo The final answer for this mess is $var5
