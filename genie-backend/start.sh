#!/bin/bash

# 开始启动后端程序
BASEDIR="./target/genie-backend"
CLASSPATH="$BASEDIR/conf/:$BASEDIR/lib/*"
MAIN_MODULE="com.jd.genie.GenieApplication"
LOGFILE="./genie-backend_startup.log"

echo "starting $APP_NAME :)"
echo "starting $ENV_BASEURL :)"
echo "starting $ENV_APIKEY :)"
echo "starting $ENV_MODEL :)"
echo "starting $ENV_MAXTOKEN :)"
java -Dserver.port=${ENV_PORT} -Dllm.default.base_url=${ENV_BASEURL} -Dllm.default.apikey=${ENV_APIKEY} -Dllm.default.model=${ENV_MODEL} -Dllm.default.max_tokens=${ENV_MAXTOKEN} -classpath "$CLASSPATH" -Dbasedir="$BASEDIR" -Dfile.encoding="UTF-8" ${MAIN_MODULE} > $LOGFILE 2>&1 &
