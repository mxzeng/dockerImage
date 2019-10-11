# 导入运行环境
FROM ubuntu
# 创建文件夹
RUN mkdir ./myTool

COPY myTool MYTOOL2

RUN ls