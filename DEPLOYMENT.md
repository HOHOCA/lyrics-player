# 部署指南

## 推送到 GitHub

```bash
# 替换下面的 URL 为你的 GitHub 仓库地址
git remote add origin https://github.com/你的用户名/仓库名.git
git branch -M main
git push -u origin main
```

## 启用 GitHub Pages

1. 打开你的 GitHub 仓库页面
2. 点击 Settings（设置）
3. 在左侧菜单中找到 Pages
4. 在 Source 下选择 "Deploy from a branch"
5. 选择 "main" 分支
6. 选择 "/ (root)" 文件夹
7. 点击 Save（保存）

## 访问网站

部署完成后（通常需要几分钟），你的网站将可以通过以下地址访问：

`https://你的用户名.github.io/仓库名/`

例如：`https://username.github.io/lyrics-player/`

## 更新内容

如果你修改了文件，使用以下命令更新网站：

```bash
git add .
git commit -m "更新内容"
git push
```

GitHub Pages 会自动重新部署（通常需要1-2分钟）。
