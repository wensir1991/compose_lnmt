# nginx_tomcat
基于cetos7镜像构建openresty(nginx)+tomcat环境
1.构建之前osce.conf和Dockerfile_nginx_tomcat配置文件提到的的https证书，证书所存放的路径、域名；
要更改成自己的https证书名称和证书存放路径，以及该称自己的域名
2.构建方法
将所有相关文件放在同一目录下，然后docker build -t [镜像名称]:[标签] -f  Dockerfile_nginx_tomcat .
例如:docker build -t nginx_tomcat:v1 -f  Dockerfile_nginx_tomcat .
3.用构建的nginx_tomcat:v1镜像启动容器
首先创建一个自定义网络lnmt
#docker create network lnmt
然后构建的nginx_tomcat:v1启动容器一个名为tomcat的容器,并用宿主机80 443 8080端口转发容器 80 443 8080端口，并将容器的
/usr/local/openresty/nginx/html和/usr/local/tomcat/webapps目录持续化到nginx_php数据卷中(nginx_php数据卷如果没有，则会在启动容器的时候自动创建)
#docker run -itd --name=tomcat  --net lnmt -p 80:80 -p 443:443 -p 8080:8080 --mount src=nginx_tomcat,dst=/usr/local/openresty/nginx/html 
--mount src=tomcat_webapps,dst=/usr/local/tomcat/webapps  nginx_tomcat:v1
