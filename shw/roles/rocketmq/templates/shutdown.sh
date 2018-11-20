#!/bin/sh

source /etc/profile

{{rocketmqhome}}/bin/mqshutdown namesrv

{{rocketmqhome}}/bin/mqshutdown broker
