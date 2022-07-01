#!/bin/sh

# バックアップの保存先ディレクトリを指定
bkDir="../backup"

# バックアップの保存先ディレクトリが無い場合は作成
if [ ! -d $bkDir ]
    then
    mkdir $bkDir
fi

# バックアップファイルを作成
cp $1 $bkDir

# 元フォルダからファイルを消去
rm $1

# バックアップファイル数をカウント
fileNum=$(ls -1 $bkDir | wc -l)

# バックアップファイル数が4より多い場合は一番古いバックアップファイルを消去
if [ $fileNum -gt 4 ]
    then
    delFile=$bkDir/$(ls -1tr $bkDir | head -1)
    rm $delFile
fi