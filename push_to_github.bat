@echo off
cd /d D:\TheWellVerse
git add vercel.json
git commit -m "Fix vercel.json: use rewrites instead of routes"
git push origin main
echo.
echo 推送完成！
pause

