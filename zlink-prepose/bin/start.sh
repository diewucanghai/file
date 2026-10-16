#!/bin/bash
if [ -e "setEnv.sh" ] ; then
   . ./setEnv.sh
else
   echo "***提示：公共环境设置文件setEnv.sh不存在"
fi

LAUNCHER_CMD="java -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=512m -Dloader.path=../conf -jar ../lib/${appName}"

echo =====================================================================================
echo 程序启动路径：[`pwd`]
echo 启动命令行[${LAUNCHER_CMD}]
echo =====================================================================================

### ==============================================================
#默认以后台方式运行
export appBackgroundMode=true

if [ "$1" = "console" ] ; then
   export appBackgroundMode=false
else
   echo "***提示：可以增加参数console禁止以后台的方式运行程序,例如: sh start.sh console"
fi

if [ "${appBackgroundMode}" = "true" ] ; then

   echo "开始启动(后台模式)..."
   nohup ${LAUNCHER_CMD} >/dev/null 2>&1 &
   echo "启动完成"
   exit 0
   
else

   echo "***提示：可以在环境变量中设置[appBackgroundMode=true]以后台的模式运行程序"
   echo 开始启动...
   ${LAUNCHER_CMD}
   
fi
