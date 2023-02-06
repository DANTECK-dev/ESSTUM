@echo off
echo Пакетный файл для перезаписи файлов документов (*.doc, *.txt) из одного каталога в другой с обновлением
echo (стундент 2 курса Немеров А. П. Б761-2)
echo:

:Start
@echo Введите абсолютный адресс из которого будет производится копирование (*.doc и *.txt) файлов
set /p inAddress=%~dp1
if -"%inAddress%"==-"" goto NoParam
if -"%inAddress%"==-"/?" goto NoParam
if not exist "%inAddress%" goto Existed

@echo Введите абсолютный адресс в который будет производится копирование (*.doc и *.txt) файлов
set /p outAddress=%~dp1
if -"%outAddress%"==-"" goto NoParam
if -"%outAddress%"==-"/?" goto NoParam
if not exist "%outAddress%" goto Existed


for /R "%inAddress%" %%h in (*.doc) do xcopy "%%h" /d /c "%outAddress%\*.doc"
if not %errorlevel%==0 echo Error %errorlevel%
for /R "%inAddress%" %%h in (*.txt) do xcopy "%%h" /d /c "%outAddress%\*.txt"
if not %errorlevel%==0 echo Error %errorlevel%
goto End

:NoParam
echo Пакетный файл для перезаписи файлов документов (*.doc, *.txt) из одного каталога в другой.
echo:
echo [drive:][path]
echo: 
pause
goto Start

:Existed
echo Ошибка не найден путь!
pause
goto Start

:End
echo Готово
pause
