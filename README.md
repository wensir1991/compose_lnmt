# compose_lnmt
基于cetos7镜像构建openresty(nginx)+tomcat环境

1.如果需要构建镜像，将build字段#去掉，image前面加上#注释掉代码，构建之前osce.conf和Dockerfile_nginx_php_tomcat配置文件提到的的https证书，
证书所存放的路径、域名；要更改成自己的https证书名称和证书存放路径，以及该称自己的域名
2.构建方法
# docker-compose up -d #既可一键自动构建镜像并部署
