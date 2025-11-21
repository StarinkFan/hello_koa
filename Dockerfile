
# 使用官方Node.js 14 LTS作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /usr/src/app

# 复制项目文件到容器中
COPY . .

# 安装项目依赖
RUN npm install

# 暴露端口3000，这是Koa应用默认监听的端口
EXPOSE 3000

# 启动Koa应用
CMD ["npm", "start"]