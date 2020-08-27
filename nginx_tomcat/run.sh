#!/bin/bash

  nginx
 /etc/init.d/php-fpm start
 /usr/local/zookeeper/bin/zkServer.sh start
 /usr/local/tomcat/bin/startup.sh
 tail -f /dev/null
