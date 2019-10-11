# 使用官方的python作为父镜像
FROM python:2.7-slim
# 设置工作目录为 /app
WORKDIR /app
# 将当前目录内的内容复制到 /app 目录中
COPY . /app
# 安装 requirements.txt 中的所有内容
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# 开发80端口向外界提供服务
EXPOSE 80
# 定义环境变量
ENV NAME World
# 在容器中使用 python 执行 app.py 
CMD ["python", "app.py"]