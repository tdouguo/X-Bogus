# 使用官方的Python基础镜像
FROM python:3.9-slim

# 设定工作目录
WORKDIR /app

# 将当前目录的内容复制到容器的 /app 目录下
COPY . /app

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 开放容器的 8787 端口
EXPOSE 8787

# 运行Flask应用
CMD ["python", "./app.py"]