@echo off

cd /D "%~dp0"
color a
TITLE NSOSDownloader 4pda.ru / dashke
goto menu

:menu
cls
echo  _  _ ___  ___  ___ ___                  _              _         
echo ^| \^| / __^|/ _ \/ __^|   \ _____ __ ___ _ ^| ^|___  __ _ __^| ^|___ _ _ 
echo ^| .` \__ \ (_) \__ \ ^|) / _ \ V  V / ' \^| / _ \/ _` / _` / -_) '_^|
echo ^|_^|\_^|___/\___/^|___/___/\___/\_/\_/^|_^|^|_^|_\___/\__,_\__,_\___^|_^|  
echo                                                    4pda.ru / dashke
echo -------------------------------------------------------------------
echo       Скачать последную версию: / Download the latest version:
echo -------------------------------------------------------------------
Echo: [1]  Clean Atmosphere + Hekate + Sigpatches
Echo: [2]  Kefir
Echo: [3]  AMS by 933
Echo: [4]  SXOS by Cooler3D
echo.
Echo: [5]  Special thanks

Set /P optm=^>^> 
If "%optm%"=="1" (Goto :clean)
If "%optm%"=="2" (Goto :kefir)
If "%optm%"=="3" (Goto :ams)
If "%optm%"=="4" (Goto :sxos)
If "%optm%"=="5" (Goto :thanks)

:thanks
cls
echo  _  _ ___  ___  ___ ___                  _              _         
echo ^| \^| / __^|/ _ \/ __^|   \ _____ __ ___ _ ^| ^|___  __ _ __^| ^|___ _ _ 
echo ^| .` \__ \ (_) \__ \ ^|) / _ \ V  V / ' \^| / _ \/ _` / _` / -_) '_^|
echo ^|_^|\_^|___/\___/^|___/___/\___/\_/\_/^|_^|^|_^|_\___/\__,_\__,_\___^|_^|  
echo                                                    4pda.ru / dashke
echo -------------------------------------------------------------------
echo       Special thanks to
echo -------------------------------------------------------------------
echo.
echo 933, Cooler3D, batmanman, lion_st, F1a5H, ighor, Rashevskyv
echo.
pause 0
goto menu

:clean
cls
echo  _  _ ___  ___  ___ ___                  _              _         
echo ^| \^| / __^|/ _ \/ __^|   \ _____ __ ___ _ ^| ^|___  __ _ __^| ^|___ _ _ 
echo ^| .` \__ \ (_) \__ \ ^|) / _ \ V  V / ' \^| / _ \/ _` / _` / -_) '_^|
echo ^|_^|\_^|___/\___/^|___/___/\___/\_/\_/^|_^|^|_^|_\___/\__,_\__,_\___^|_^|  
echo                                                    4pda.ru / dashke
echo -------------------------------------------------------------------
echo       Clean Atmosphere + Hekate + Sigpatches
echo - Чистая Атмосфера без плагинов и модификаций
echo -------------------------------------------------------------------
echo - Clean Atmosphere without any plugins or modifications
echo -------------------------------------------------------------------
Echo: [1]  Скачать на рабочий стол (clean_atmosphere) / Download to your Desktop (clean_atmosphere)
Echo: [2]  Назад / Go back
Set /P optm=^>^> 
If "%optm%"=="1" (Goto :cleandownload)
If "%optm%"=="2" (Goto :menu)
goto menu

:cleandownload
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
mkdir %USERPROFILE%\desktop\clean_atmosphere
%~dp0\bin\INetGet.x64.exe https://sx.xecuter.com/download/SX_Gear_v1.1.zip %~dp0\tmp\sxgear.zip
%~dp0\bin\7za x %~dp0\tmp\*.zip -aoa -o%USERPROFILE%\desktop\clean_atmosphere
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
mkdir %USERPROFILE%\desktop\clean_atmosphere
%~dp0\bin\fetch_windows_amd64.exe --repo="https://github.com/Atmosphere-NX/Atmosphere" --tag=">0.17.0" --release-asset="atmosphere.*" %~dp0\tmp
%~dp0\bin\7za x %~dp0\tmp\*.zip -aoa -o%USERPROFILE%\desktop\clean_atmosphere
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
%~dp0\bin\fetch_windows_amd64.exe --repo="https://github.com/CTCaer/hekate" --tag=">5.5.2" --release-asset="hekate_ctcaer.*" %~dp0\tmp
%~dp0\bin\7za x %~dp0\tmp\*.zip -aoa -o%USERPROFILE%\desktop\clean_atmosphere
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
%~dp0\bin\fetch_windows_amd64.exe --repo="https://github.com/ITotalJustice/patches" --tag=">11.0.1-0.17.0" --release-asset="hekate.zip" %~dp0\tmp
%~dp0\bin\7za x %~dp0\tmp\*.zip -aoa -o%USERPROFILE%\desktop\clean_atmosphere
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
rename %USERPROFILE%\desktop\clean_atmosphere\hekate_ctcaer_*.bin payload.bin
%~dp0\bin\INetGet.x64.exe https://pastebin.com/raw/zWKtjaG5 %USERPROFILE%\desktop\clean_atmosphere\bootloader\hekate_ipl.ini
%~dp0\bin\INetGet.x64.exe https://pastebin.com/raw/77CpWWiB %USERPROFILE%\desktop\clean_atmosphere\exosphere.ini
echo .
echo .
echo .
echo .
echo Завершено! / Completed!
pause 0
goto clean

:kefir
cls
echo  _  _ ___  ___  ___ ___                  _              _         
echo ^| \^| / __^|/ _ \/ __^|   \ _____ __ ___ _ ^| ^|___  __ _ __^| ^|___ _ _ 
echo ^| .` \__ \ (_) \__ \ ^|) / _ \ V  V / ' \^| / _ \/ _` / _` / -_) '_^|
echo ^|_^|\_^|___/\___/^|___/___/\___/\_/\_/^|_^|^|_^|_\___/\__,_\__,_\___^|_^|  
echo                                                    4pda.ru / dashke
echo -------------------------------------------------------------------
echo       Kefir
echo - Это сборка, которая позволит вам выбрать одну из двух основных кастомных прошивок:
echo   Atmosphere или SX OS (или поставить обе!) и установить её на карту памяти
echo   вместе с комплектом необходимых программ, нажав буквально пару кнопок.
echo -------------------------------------------------------------------
echo - This is a bundle that will allow you to choose one of the two main CFWs:
echo   Atmosphere or SX OS (or you can choose both!) and install it to your SD card
echo   togerther with must-have apps, in just a few clicks.
echo -------------------------------------------------------------------
Echo: [1]  Запустить кефир / Start kefir
Echo: [2]  GitHub
Echo: [3]  Назад / Go back
Set /P optm=^>^> 
If "%optm%"=="1" (Goto :kefirdownload)
If "%optm%"=="2" (Goto :kefirpost)
If "%optm%"=="3" (Goto :menu)
goto menu

:kefirpost
start "" https://github.com/rashevskyv/kefir
goto kefir

:kefirdownload
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
%~dp0\bin\fetch_windows_amd64.exe --repo="https://github.com/rashevskyv/kefir" --branch="master" %~dp0\tmp
%~dp0\tmp\install.bat
goto kefir

:ams
cls
echo  _  _ ___  ___  ___ ___                  _              _         
echo ^| \^| / __^|/ _ \/ __^|   \ _____ __ ___ _ ^| ^|___  __ _ __^| ^|___ _ _ 
echo ^| .` \__ \ (_) \__ \ ^|) / _ \ V  V / ' \^| / _ \/ _` / _` / -_) '_^|
echo ^|_^|\_^|___/\___/^|___/___/\___/\_/\_/^|_^|^|_^|_\___/\__,_\__,_\___^|_^|  
echo                                                    4pda.ru / dashke
echo -------------------------------------------------------------------
echo       AMS by 933
echo - Установка простая как три копейки: 
echo - Распаковать содержимое архива на карту, предварительно удалив все кроме папки Nintendo и EmuMMC (если EmuMMC у вас есть).
echo -------------------------------------------------------------------
echo - Installation is pretty straightforward:
echo - Remove everything except the folders Nintendo and EmuMMC (if you are using EmuMMC) and extract the archive content to your SD card.
echo -------------------------------------------------------------------
Echo: [1]  Скачать на рабочий стол (atmo-*.zip) / Download to your Desktop (atmo-*.zip)
echo Откроется страничка проекта так как имя файла меняется / Project website will be opened as the filename is changing
Echo: [2]  Оригинальный пост / Original post
Echo: [3]  Назад / Go back
Set /P optm=^>^> 
If "%optm%"=="1" (Goto :amsdownload)
If "%optm%"=="2" (Goto :amspost)
If "%optm%"=="3" (Goto :menu)
goto menu

:amsdownload
start "" https://santa-atmo.ru/
goto ams

:amspost
start "" "https://4pda.ru/forum/index.php?showtopic=900987&st=16380#entry89607442"
goto ams


:sxos
cls
echo  _  _ ___  ___  ___ ___                  _              _         
echo ^| \^| / __^|/ _ \/ __^|   \ _____ __ ___ _ ^| ^|___  __ _ __^| ^|___ _ _ 
echo ^| .` \__ \ (_) \__ \ ^|) / _ \ V  V / ' \^| / _ \/ _` / _` / -_) '_^|
echo ^|_^|\_^|___/\___/^|___/___/\___/\_/\_/^|_^|^|_^|_\___/\__,_\__,_\___^|_^|  
echo                                                    4pda.ru / dashke
echo -------------------------------------------------------------------
echo       SXOS by Cooler3D
echo - Распаковываем в корень карты памяти содержимое данного архива.
echo - Запускаем на Switch приложение Альбом. Вместо альбома откроется меню SX OS.
echo - Переходим во вкладку Homebrew, и запускаем приложение DB Installer.
echo - Выбираем Browse SD Card, затем games, затем Tinfoil.nsp, затем Start install.
echo - Перезагружаем устройство. Готово.
echo -------------------------------------------------------------------
echo - Extract the archive content to the root of your SD card.
echo - Start the Album app on your Switch. Instead of the Album, SX OS menu will open.
echo - Go to the Homebrew tab and start DB Installer.
echo - Choose Browse SD Card, then games, then Tinfoil.nsp, after that Start install.
echo - Restart your device. That's it.
echo -------------------------------------------------------------------
Echo: [1]  Скачать на рабочий стол (sxos.zip) / Download to your Desktop (sxos.zip)
Echo: [2]  Оригинальный пост / Original post
Echo: [3]  Назад / Go back
Set /P optm=^>^> 
If "%optm%"=="1" (Goto :sxosdownload)
If "%optm%"=="2" (Goto :sxospost)
If "%optm%"=="3" (Goto :menu)
goto menu

:sxosdownload
rmdir %~dp0\tmp /Q /S >nul 2>&1
mkdir %~dp0\tmp >nul 2>&1
%~dp0\bin\INetGet.x64.exe https://sintez.io/4pda.zip %USERPROFILE%\desktop\sxos.zip
goto sxos

:sxospost
start "" "https://4pda.ru/forum/index.php?showtopic=900987&st=22080#entry99194094"
goto sxos

pause 0
