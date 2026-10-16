#启动脚本
java -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m -Dloader.path=../conf -jar "../lib/zefu-portals-prepose.jar"
pause;