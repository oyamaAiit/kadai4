#!/bin/sh

#テスト内容
bash kadai4.sh 3
#自然数の指定が一つだけなのでエラー
bash kadai4.sh test 50
#一つ目の自然数が文字なのでエラー
bash kadai4.sh 20 test
#二つ目の自然数が文字なのでエラー
bash kadai4.sh 465 360
#最大公約数15
bash kadai4.sh 0 5
#最大公約数0
bash kadai4.sh 49 63
#最大公約数7
bash kadai4.sh 15000 30000
#最大公約数15000

#テスト終了
