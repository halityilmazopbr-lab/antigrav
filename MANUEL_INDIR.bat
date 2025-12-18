@echo off
title GRAVITY - Manuel Gradle Indirici 📥
color 0B

echo ==================================================
echo   MANUEL INDIRME BASLATILIYOR...
echo   (Gradle downloader hata verdigi icin bunu yapiyoruz)
echo ==================================================
echo.

set "TARGET_DIR=%USERPROFILE%\.gradle\wrapper\dists\gradle-8.10.2-bin\40in6k8eka1p9a0wo95j9psbg"
set "ZIP_URL=http://services.gradle.org/distributions/gradle-8.10.2-bin.zip"

echo [1/3] Hedef klasor temizleniyor...
if exist "%TARGET_DIR%" rmdir /s /q "%TARGET_DIR%"
mkdir "%TARGET_DIR%"

echo.
echo [2/3] Dosya PowerShell ile indiriliyor...
echo Lutfen bekleyin, bu islem internet hizina gore zaman alir.
powershell -Command "Invoke-WebRequest -Uri '%ZIP_URL%' -OutFile '%TARGET_DIR%\gradle-8.10.2-bin.zip'"

if %ERRORLEVEL% == 0 (
    echo.
    echo [3/3] INDIRME BASARILI! ✅
    echo Dosya yerine koyuldu. Simdi APK olusturulabilir.
    echo.
    echo Lutfen bu pencereyi kapatin ve tekrar 'flutter build apk' deneyin.
) else (
    echo.
    echo HATA: Indirme basarisiz oldu. Internet baglantinizi kontrol edin.
)
pause
