#!/bin/sh
source /etc/profile

cd {{rocketmqhome}}/bin
nohup sh mqnamesrv &

{{rocketmqhome}}/bin/mqbroker -c {{rocketmqhome}}/conf/2m-noslave/{{brokerName}}.properties >/dev/null 2>&1 &
