#!/bin/bash

# 厦门亲像一首歌 - 自动部署脚本

echo "🚀 开始部署歌词播放器..."

# 检查是否有未提交的更改
if [[ -n $(git status -s) ]]; then
    echo "📝 检测到文件更改，正在提交..."
    git add .
    git commit -m "更新内容: $(date '+%Y-%m-%d %H:%M:%S')"
fi

# 检查远程仓库是否已配置
if ! git remote | grep -q "^origin$"; then
    echo "❌ 未配置远程仓库，请先运行以下命令："
    echo "   git remote add origin https://github.com/你的用户名/仓库名.git"
    exit 1
fi

# 推送到 GitHub
echo "📤 推送代码到 GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo "✅ 部署成功！"
    echo ""
    echo "📍 请稍等几分钟，然后访问："
    echo "   https://$(git config --get remote.origin.url | sed 's/.*github.com[:/]\(.*\)\.git/\1/')"
    echo ""
    echo "💡 提示：如果 GitHub Pages 未启用，请在仓库 Settings > Pages 中启用"
else
    echo "❌ 推送失败，请检查错误信息"
    exit 1
fi
