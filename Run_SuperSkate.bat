@echo off
cd /d "%~dp0"
echo Super Skate በመክፈት ላይ...
where npx >nul 2>nul
if %errorlevel% neq 0 (
  echo Node.js አልተገኘም። እባክዎ ከ https://nodejs.org ይጫኑ።
  pause
  exit /b
)
start "" http://localhost:5000
npx --yes serve -l 5000 .
