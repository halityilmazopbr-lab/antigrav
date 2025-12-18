@echo off
title GRAVITY - Derin Temizlik Araci 🧨
color 0C

echo ==================================================
echo   DERIN TEMIZLIK MODU ACILDI (Daha Guclu)
echo ==================================================
echo [0/3] Ortam Degiskenleri Ayarlaniyor...
set PATH=%PATH%;C:\src\flutter\bin;C:\flutter\bin;C:\Users\%USERNAME%\flutter\bin;C:\Users\%USERNAME%\AppData\Local\Google\flutter\bin

echo.
echo [1/3] Gradle on bellegi kokten temizleniyor...
echo Hedef: %USERPROFILE%\.gradle\wrapper\dists\gradle-8.10.2-all
rd /s /q "%USERPROFILE%\.gradle\wrapper\dists\gradle-8.10.2-all"

echo.
echo [2/3] Proje on bellegi temizleniyor (Flutter Clean)...
call flutter clean

echo.
echo [3/3] APK insasi tekrar baslatiliyor...
echo Bu islem internet hizina gore 5-10 dakika surebilir.
echo Lutfen indirme bitene kadar BEKLEYIN.
echo.

call flutter build apk

echo.
echo Islem tamamlandi.
pause
