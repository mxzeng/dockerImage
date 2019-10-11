# 基于 mxzeng/open-jdk8:1
FROM mxzeng/open-jdk8:1
# 指定用户
USER root

# 工作目录
ENV jdkWork /usr/local/task/tomcat
# Tomcat tar文件名
ENV tomcatTarName apache-tomcat-9.0.21.tar.gz
# Tomcat解压后的名称
ENV tomcatDirName apache-tomcat-9.0.21
# TOMCAT_HOME
ENV TOMCAT_HOME ${jdkWork}/${tomcatDirName}
# 设置Tomcat环境变量
ENV PATH $TOMCAT_HOME/bin:$PATH
# 设置工作目录
WORKDIR ${jdkWork}

# 下载解压Tomcat
RUN wget http://us.mirrors.quenda.co/apache/tomcat/tomcat-9/v9.0.21/bin/${tomcatTarName} && \
    tar -zxvf ${tomcatTarName} && \
    rm ${tomcatTarName}

# 开放8080端口
EXPOSE 8080

# 启动Tomcat
CMD ["catalina.sh", "run"]