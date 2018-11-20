#!/bin/bash

source /etc/profile
/usr/local/jdk1.8.0_112/bin/java -jar /data/services/jenkins.war --httpPort=9090
