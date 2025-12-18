@echo off
title GRAVITY - Guvenlik Duvari Kirici 🛡️🔨
color 0D

echo ==================================================
echo   GUVENLIK DUVARI KIRMA MODU
echo   (Java SSL Sertifika Kontrolu Kapatiliyor)
echo ==================================================
echo.

:: Java'ya "Sertifikalara guven" diyerek SSL hatalarini asiyoruz
set JAVA_TOOL_OPTIONS=-Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true -Dfile.encoding=UTF-8

:: MEB/Asya Modu (China Mirrors)
set PUB_HOSTED_URL=https://pub.flutter-io.cn
set FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

echo [0/2] Flutter yolu tanimlaniyor...
set PATH=%PATH%;C:\src\flutter\bin;C:\flutter\bin;C:\Users\%USERNAME%\flutter\bin;C:\Users\%USERNAME%\AppData\Local\Google\flutter\bin

echo [1/2] IP ve Sertifika ayarlari yapildi.
echo.
echo [2/2] APK insasi baslatiliyor...
echo.

echo [2/3] Gradle (God Mode) Baslatiliyor...
echo.
cd android
call gradlew.bat assembleRelease

if %ERRORLEVEL% == 0 (
    echo.
    echo =========================================
    echo   TEBRIKLER! APK HAZIR 🏆
    echo =========================================
    echo Dosya Konumu: android\app\build\outputs\apk\release\app-release.apk
) else (
    echo.
    echo Hata olustu.
)

echo.
echo Islem tamamlandi.
pause
