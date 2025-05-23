@echo off
:: Читаем версию из version.txt
for /f "delims=" %%v in (version.txt) do set VERSION=%%v

:: Создаем version_config.iss
echo #define AppVersionFromTxt "%VERSION%" > version_config.iss

:: Компилируем Inno Setup-скрипт
"C:\Program Files (x86)\Inno Setup 5\ISCC.exe" setup.iss

pause

del version_config.iss