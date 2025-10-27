# 使用说明

这是"厦门亲像一首歌"歌词播放器。

## 📁 文件说明

- `index.html` - 主播放器页面（直接用浏览器打开）
- `lyrics.md` - 歌词文本文件（参考用）
- `20251026_214808.m4a` - 音频文件

## 🚀 快速开始

### 方法一：直接打开
1. 双击 `index.html` 文件
2. 浏览器会自动打开播放器

### 方法二：使用本地服务器（推荐）
```bash
# 使用 Python
python -m http.server 8000

# 使用 Node.js (需要安装 http-server)
npx http-server

# 然后在浏览器访问
# http://localhost:8000
```

## 🎵 功能特点

- ✅ 音频播放控制
- ✅ 歌词自动高亮和滚动
- ✅ 点击歌词跳转播放位置
- ✅ 响应式设计，支持移动端
- ✅ 歌词注音显示（闽南语拼音）

## 🌐 在线部署

### GitHub Pages

1. 将项目推送到 GitHub
2. 在仓库设置中启用 GitHub Pages
3. 选择根目录作为源
4. 访问地址：`https://你的用户名.github.io/仓库名/`

### 其他静态托管服务

- Netlify
- Vercel
- Cloudflare Pages
- 阿里云 OSS / 腾讯云 COS

## 🔧 自定义

### 修改歌词

编辑 `index.html` 中的 `lyrics` 数组：
```javascript
const lyrics = [
  { text: "歌词内容", pinyin: "拼音内容", start: 0, end: 8 },
  // ...更多歌词
];
```

### 修改音频文件

1. 替换 `20251026_214808.m4a` 文件
2. 确保格式为 `.m4a` 或 `.mp3`
3. 修改 `index.html` 中的音频路径（如果需要）

### 自定义样式

编辑 `index.html` 中的 `<style>` 标签部分。

## 📱 浏览器兼容性

- Chrome / Edge ✅
- Firefox ✅
- Safari ✅
- 移动端浏览器 ✅

## 💡 注意事项

- 音频文件较大（1.9MB），首次加载可能需要一些时间
- 建议使用 HTTPS 部署，避免浏览器安全限制
- 如果部署到 GitHub Pages，文件名保持小写字母和连字符

## 📞 问题反馈

如有问题，请查看项目根目录的 README.md 或提交 Issue。
