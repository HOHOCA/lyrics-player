#!/bin/bash
echo "======================================"
echo "🔗 连接到 GitHub 仓库并推送代码"
echo "======================================"
echo ""
echo "请将你的 GitHub 仓库地址粘贴到下面："
echo "示例: https://github.com/username/repo.git"
echo ""
read -p "GitHub 仓库地址: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ 未输入仓库地址"
    exit 1
fi

git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"
git branch -M main
git push -u origin main

echo ""
echo "✅ 代码已推送到 GitHub！"
echo ""
echo "接下来的步骤："
echo "1. 访问你的 GitHub 仓库页面"
echo "2. 进入 Settings > Pages"
echo "3. 选择 main 分支和 / (root) 文件夹"
echo "4. 保存后等待几分钟即可访问你的网站"
