@echo off
chcp 65001 >nul
setlocal
where gradle >nul 2>nul
if errorlevel 1 (
  echo Gradle не найден. Откройте проект в Android Studio и выполните Build ^> Build APK(s).
  pause
  exit /b 1
)
gradle assembleDebug
if errorlevel 1 exit /b 1
echo.
echo APK создан: app\build\outputs\apk\debug\app-debug.apk
pause
