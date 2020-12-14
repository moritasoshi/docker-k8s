FROM  centos:7

COPY  docker-entrypoint.sh /var/tmp

# ; \でコマンド連続実行
RUN   mv /var/tmp/docker-entrypoint.sh /usr/local/bin; \   
  chmod +x /usr/local/bin/docker-entrypoint.sh;

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "echo", "HelloWorld!!" ]