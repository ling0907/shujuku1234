@echo off
echo 正在复制文件到GitHub仓库文件夹...

REM 创建目标文件夹（如果不存在）
if not exist "D:\GitHub\data-visualization" (
    echo 创建目标文件夹: D:\GitHub\data-visualization
    mkdir "D:\GitHub\data-visualization"
)

REM 复制所有HTML文件
echo 复制HTML文件...
copy "*.html" "D:\GitHub\data-visualization\"

REM 复制配置文件
echo 复制配置文件...
copy "README.md" "D:\GitHub\data-visualization\"
copy "LICENSE" "D:\GitHub\data-visualization\"

REM 复制静态资源文件夹
echo 复制静态资源...
if not exist "D:\GitHub\data-visualization\static" (
    mkdir "D:\GitHub\data-visualization\static"
)

if not exist "D:\GitHub\data-visualization\static\css" (
    mkdir "D:\GitHub\data-visualization\static\css"
)
if exist "static\css\style.css" (
    copy "static\css\style.css" "D:\GitHub\data-visualization\static\css\"
)

if not exist "D:\GitHub\data-visualization\static\js" (
    mkdir "D:\GitHub\data-visualization\static\js"
)
if exist "static\js\*.js" (
    copy "static\js\*.js" "D:\GitHub\data-visualization\static\js\"
)

REM 复制GitHub Actions配置
echo 复制GitHub Actions配置...
if not exist "D:\GitHub\data-visualization\.github" (
    mkdir "D:\GitHub\data-visualization\.github"
)
if not exist "D:\GitHub\data-visualization\.github\workflows" (
    mkdir "D:\GitHub\data-visualization\.github\workflows"
)
copy ".github\workflows\deploy.yml" "D:\GitHub\data-visualization\.github\workflows\"

echo.
echo 文件复制完成！
echo.
echo 下一步操作：
echo 1. 打开GitHub Desktop
echo 2. 选择仓库文件夹: D:\GitHub\data-visualization
echo 3. 提交更改并推送到GitHub
echo 4. 在GitHub仓库设置中启用GitHub Pages

pause