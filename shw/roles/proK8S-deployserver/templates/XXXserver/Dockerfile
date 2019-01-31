from centosjdkenv:{{ centosjdkenv }}
copy lib {{ server_dir }}
ENV loglevel='{{ loglevel }}'
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENTRYPOINT java -Duser.timezone=GMT+08 ${DEFULT_JAVA_OPTS} -jar ${loglevel} -Denv=${environment} -D${urlenv} {{server_dir}}/{{ jar_name }}
