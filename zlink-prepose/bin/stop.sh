#!/bin/bash
if [ -e "setEnv.sh" ] ; then
   . ./setEnv.sh
else
   echo "***提示：公共环境设置文件setEnv.sh不存在"
fi

ps -ef | grep ${appName}

PID=$(ps -ef | grep ${appName} | grep -v grep | awk '{ print $2 }')
 
if [ -z "$PID" ] ; then 
    echo "***提示：没有需要停止的[${appName}]进程"
    exit 1
fi

if [ -z "$PID" ]
then
    echo Application is already stopped
else
    echo "***提示：开始执行[kill -9 $PID]关闭[${appName}]进程"
    kill -9 $PID
	echo "进程已停止"
fi
