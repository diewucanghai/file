#!/bin/bash
if [ -e "stop.sh" ] ; then
   echo "[`pwd`]调用[stop.sh]停止进程..."
   sh stop.sh
else
   echo "***提示：文件stop.sh不存在"
fi

if [ -e "start.sh" ] ; then
   echo "[`pwd`]调用[start.sh]启动进程..."
   sh start.sh
else
   echo "***提示：文件start.sh不存在"
fi
