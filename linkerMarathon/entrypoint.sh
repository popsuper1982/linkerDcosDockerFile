#!/bin/bash
if [ -z "$ENNAME" ];then
    ENNAME=eth0
fi
localip=`ip addr show $ENNAME|grep "inet.*brd.*$ENNAME"|awk '{print $2}'|awk -F/ '{print $1}'`
export MARATHON_HTTP_ADDRESS=$localip
export MARATHON_HTTPS_ADDRESS=$localip
marathon --no-logger
