#!/bin/bash
#ファイルの命名規則が分かっている複数のファイルをまとめてダウンロードする
#何番目まで取得するか指定
NUM_SERIAL=10
#ファイル元のURL
BASE_URL="http://xxx.yyy.zzz"
#ファイルの拡張子
BASE_EXT=".mp3"
#ローカルのダウンロードリンク
DL_DIR="your/local/directory"
# seq -f "%04g" によって、変数iは4桁になるように0でパディングされた状態で出力される
for i in `seq -f "%04g" 1 ${NUM_SERIAL}`
do
wget -P $DL_DIR -nc $BASE_URL$i$BASE_EXT
done