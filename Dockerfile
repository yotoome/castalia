# 使用官方 Node.js 镜像作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装所有依赖
RUN npm install

# 将当前目录下的所有文件复制到工作目录
COPY . .

# 暴露应用程序运行的端口（根据实际情况，这里假设为3000）
EXPOSE 3000

# 指定容器启动时运行的命令
CMD ["npm", "run", "dev"]
