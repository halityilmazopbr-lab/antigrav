@echo off
title GRAVITY - Otomatik APK Olusturucu
color 0A

echo ==================================================
echo   GRAVITY APLIKASYON SIHIRBAZI 🧙‍♂️📱
echo ==================================================
echo.
echo [1/3] Sistem ayarlari yapilandiriliyor...
:: Flutter yolunu tanimla
set PATH=%PATH%;C:\src\flutter\bin;C:\flutter\bin;C:\Users\%USERNAME%\flutter\bin;C:\Users\%USERNAME%\AppData\Local\Google\flutter\bin
:: SSL guvenlik duvarini as
set JAVA_TOOL_OPTIONS=-Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true

echo.
echo [2/3] Dosyalar kontrol ediliyor...
call flutter create .
echo.
echo [2/3] Gerekli kutuphaneler yukleniyor...
call flutter pub get
echo.
echo [3/3] APK dosyasi insa ediliyor (Bu islem biraz surebilir)...
call flutter build apk
echo.
echo ==================================================
echo   ISLEM BASARIYLA TAMAMLANDI! ✅
echo ==================================================
echo.
echo APK Dosyaniz surada hazir:
echo build\app\outputs\flutter-apk\app-release.apk
echo.
echo Bu pencereyi kapatabilirsiniz.
pause
