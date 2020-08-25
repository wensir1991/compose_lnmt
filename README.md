# compose_lnmt
基于cetos7镜像构建openresty(nginx)+php7.3.36+tomcat环境
nginx_php_tomcat文件夹中jdk-8u45-linux-x64.tar.gz zookeeper-3.4.14.tar.gz apache-tomcat-8.5.31.tar.gz 因受github上传文件大小限制，需自行进行下载或者用其它类似包代替
1.构建之前osce.conf和Dockerfile_nginx_php_tomcat配置文件提到的的https证书，证书所存放的路径、域名；
要更改成自己的https证书名称和证书存放路径，以及该称自己的域名
