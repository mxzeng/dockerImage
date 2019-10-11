#基于ubuntu
FROM ubuntu:18.04
#维护者
MAINTAINER zeng

#工作目录
WORKDIR /usr/local/tool
#使用root用户
USER root

#更新数据源，安装curl工具
RUN apt update && \
    apt install -y curl
#在Oracle 官网下载 Ubuntu的mysql deb包
RUN curl -o mysql.deb.tar https://cdn.mysql.com//Downloads/MySQL-8.0/mysql-server_8.0.16-1ubuntu18.04_amd64.deb-bundle.tar
#解压mysql.tar包
RUN tar -xvf  mysql.deb.tar
#安装mysql
#RUN dpkg -i mysql.deb