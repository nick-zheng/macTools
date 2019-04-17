#!/bin/sh  

if [ ! -n "$1" ] ;then
	echo ""
	echo "==============================================="
    echo "请输入要删除.svn目录的路径！"
    echo "使用方法："
    echo "点+空格+脚本路径+空格+要删除的目标路径"
    echo "例如："
    echo ". ./sh/rm_svn.sh Users/xxxx/Documents/test"
    echo "==============================================="
    echo ""
else
  	echo ""

	cd $1
	pwd

	echo ""
	echo "==============================================="
	echo "开始删除.svn目录..."

	find . -type d -name ".svn" |xargs rm -rvf

	echo "已删除: $1 目录下的所有.svn目录"
	echo "==============================================="
	echo ""

	cd ~
fi
