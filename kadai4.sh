#!/bin/bash

if [ $# -ne 2 ];then
	echo "Error:自然数が一つしか指定されていません。自然数は二つ必要です。"
	exit
fi
if echo "$1" | grep -q "^[0-9]\+$";then
	echo "1つ目の自然数は$1"
else
	echo "Error:1つ目の自然数エラー…自然数を指定してください。"
	exit
fi

if echo "$2" | grep -q "^[0-9]\+$";then
	echo "二つ目の自然数は$2"
else
	echo "Error:2つ目の自然数エラー…自然数を指定してください。"
	exit
fi

if [ $1 -eq 0 -o $2 -eq 0 ];then
	echo "最大公約数は 0 です。"
	exit
fi

m=$1
n=$2
r=1

until [ $r == 0 ]
do
	let "r =$m % $n"
	m=$n
	n=$r
done

echo "最大公約数は $m です。"






