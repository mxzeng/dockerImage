# 基于 alpine
FROM alpine
# 指定用户
USER root

# 工作目录
ENV jdkWork /usr/local/task/java
# jdk tar 下载名称
ENV jdkTarName jdk_ri-8u40-b25-linux-x64-10_feb_2015.tar.gz
# jdk 解压后文件名称
ENV jdkDirName java-se-8u40-ri
# java Home 环境
ENV JAVA_HOME ${jdkWork}/${jdkDirName}
# 设置环境变量
ENV PATH $JAVA_HOME/bin:$PATH
# 工作目录
WORKDIR ${jdkWork}

# 设置时期
RUN apk update && \
    apk add -U tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    date

# 安装 Bash
RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    bash-doc \
    bash-completion \
    && rm -rf /var/cache/apk/*

# Alpine安装 Glibc(C运行库) https://github.com/sgerrand/alpine-pkg-glibc
RUN apk --no-cache add ca-certificates wget && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk && \
    apk add glibc-2.29-r0.apk && \
    rm glibc-2.29-r0.apk

# 下载，安装 openjdk8 URL: http://192.168.10.104:8080/${jdkTarName} && https://download.java.net/openjdk/jdk8u40/ri/
RUN wget https://download.java.net/openjdk/jdk8u40/ri/${jdkTarName} && \
    tar -zxvf ${jdkTarName} && \
    rm ${jdkTarName}