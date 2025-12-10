#!/bin/bash

# 遇到错误立即停止
set -e

echo ">>> 🚀 开始部署 AlphaTrade (Clean Install Mode)..."

# 1. 清理旧环境 (解决版本冲突的核心步骤)
echo ">>> 🧹 清理旧缓存..."
rm -rf node_modules
rm -rf package-lock.json
npm cache clean --force

# 2. 安装依赖
echo ">>> 📦 安装依赖..."
npm install

# 3. 构建
echo ">>> 🛠️ 构建生产版本..."
npm run build

# 4. 启动
echo ">>> ✅ 部署成功! 服务运行在 8080 端口..."
npm run preview -- --host --port 8080