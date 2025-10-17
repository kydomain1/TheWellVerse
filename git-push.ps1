# Git推送脚本
Write-Host "开始推送到GitHub..." -ForegroundColor Green

# 设置git不使用分页器
$env:GIT_PAGER = ""

# 添加文件
Write-Host "`n1. 添加文件..." -ForegroundColor Yellow
git add vercel.json push_to_github.bat

# 提交
Write-Host "`n2. 提交修改..." -ForegroundColor Yellow
git commit -m "Fix vercel.json: use rewrites instead of routes"

# 推送
Write-Host "`n3. 推送到GitHub..." -ForegroundColor Yellow
git push origin main

Write-Host "`n✅ 推送完成！" -ForegroundColor Green
Write-Host "`n按任意键退出..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

