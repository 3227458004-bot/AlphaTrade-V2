#!/bin/bash

echo "=== 🚀 GitHub 一键上传助手 ==="

# 1. 清除旧的 git 记录，防止冲突
rm -rf .git

# 2. 初始化新仓库
git init
git add .
git commit -m "Deploy: Fix server dependencies and UI"
git branch -M main

# 3. 设置远程地址
echo "🔗 正在关联仓库..."
# 这里填入您刚才说的新地址
REPO_URL="https://github.com/3227458004-bot/AlphaTrade-V2.git"
git remote add origin "$REPO_URL"

# 4. 推送
echo "📤 正在强制推送代码..."
git push -u origin main --force

echo "✅ 上传完成！现在请去服务器执行部署脚本。"