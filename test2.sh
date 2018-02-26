#!/bin/bash
# 显示系统变量的值

# 注意，echo命令中的环境变量会在脚本运行时替换成当前值。
echo 用户ID： $UID
echo 用户目录：$HOME

# 另外，在第一个字符串中可 以将$USER系统变量放置到双引号中
echo "用户ID： $UID"

# 要显示美元符，你必须在它 前面放置一个反斜线。
echo "苹果手机要\$399"