#!/bin/bash
# 更简单的连接方式

echo "请输入你的 GitHub 用户名："
read username

if [ -z "$username" ]; then
    echo "❌ 用户名不能为空"
    exit 1
fi

repo_url="https://github.com/$username/lyrics-player.git"

echo "🔗 连接到仓库: $repo_url"
git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"
git branch -M main

echo "📤 推送代码..."
git push -u origin main

echo ""
echo "✅ 完成！"
echo ""
echo "📍 下一步：在 GitHub 仓库页面启用 Pages"
echo "   1. 进入 Settings > Pages"
echo "   2. Source: Deploy from a branch"
echo "   3. Branch: main, Folder: / (root)"
echo "   4. Save"
echo ""
echo "🌐 网站地址：https://$username.github.io/lyrics-player/"
