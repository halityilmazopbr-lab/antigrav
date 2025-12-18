@echo off
title GRAVITY - GitHub Yukleyici 🚀
color 0F

echo ==================================================
echo   GITHUB'A YUKLEME SIHIRBAZI
echo ==================================================
echo.
echo Bu islem projenizi GitHub'a yukleyecek,
echo boylece APK orada (bulutta) otomatik olusturulacak.
echo MEB engeli orada islemez! 😎
echo.

:URL_SOR
echo Otomatik Repo Adresi Tanimlandi.
set REPO_URL=https://github.com/Halit-155/antigrav.git

echo.
echo [1/4] Git kimligi ayarlaniyor...
git config user.email "ogrenci@ykscepte.app"
git config user.name "YKS Cepte Geliştiricisi"

echo.
echo [2/4] Git baslatiliyor ve kayit yapiliyor...
git init
git add .
git commit -m "Gravity v1.0 - Otomatik Yukleme"

echo.
echo [3/4] Dala geciliyor...
git branch -M main

echo.
echo [4/4] Uzak sunucu ekleniyor ve gonderiliyor...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
echo (Bu asamada tarayici acilip giris yapmanizi isteyebilir)
git push -u origin main

if %ERRORLEVEL% == 0 (
    echo.
    echo BASARILI! ✅
    echo Simdi GitHub sayfaniza gidin, "Actions" sekmesine tiklayin.
    echo Orada yesil renkli "Android Release Build" calisiyor olacak.
    echo Bitince APK'yi indirebilirsiniz!
) else (
    echo.
    echo HATA: Gonderilemedi. Linki dogru yazdiginizdan emin olun.
)
pause
