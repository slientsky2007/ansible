[Unit]
Description=zookeeper.service
After=network.target
[Service]
Type=forking
Environment=ZOO_LOG_DIR={{zookeeper_log_dir}}
Environment=PATH={{java_home}}/bin:{{java_home}}/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/bin
ExecStart={{zookeeper_home}}/bin/zkServer.sh start
ExecStop={{zookeeper_home}}/bin/zkServer.sh stop
ExecReload={{zookeeper_home}}/bin/zkServer.sh restart
User=vvic_run
[Install]
WantedBy=multi-user.target
