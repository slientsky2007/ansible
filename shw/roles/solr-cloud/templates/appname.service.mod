[Unit]
Description={{appname}}.service
After=network.target
[Service]
Type=forking
Environment=JAVA_HOME={{java_home}}
Environment=PATH={{java_home}}/bin:{{java_home}}/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/bin
ExecStart={{solr_home}}/bin/solr start -cloud -z {{zk_cluster_list}}
ExecStop={{solr_home}}/bin/solr stop
ExecReload={{solr_home}}/bin/solr restart -cloud -s -z {{zk_cluster_list}}
User=vvic_run
[Install]
WantedBy=multi-user.target
