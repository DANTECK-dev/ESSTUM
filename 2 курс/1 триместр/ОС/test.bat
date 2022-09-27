@echo off
::set /p inDevice="Введите устройство: "
::set /p outDevice="Enter in device: "
::set /p inAddress="Enter the absolute address of the directory from which the overwrite (*.doc and *.txt) will take place: "
::set /p outAddress="Enter the absolute address of the directory to which the overwrite (*.doc and *.txt) will take place: "
set /p inAddress="Введите абсолютный адресс из которого будет производится перезапись (*.doc and *.txt): "
set /p outAddress="Введите абсолютный адресс в который будет производится перезапись (*.doc and *.txt): "
::echo "Finded files:"
C:
::cd C:\Users\%USERNAME%\Documents
pause
for /R "%inAddress%" %%h IN (*.doc) DO copy "%%h" "%outAddress%\*.doc"
::for /R "%userprofile%\Documents" %%h IN (*.doc) DO copy "%%h" "%userprofile%\Documents\copys\*.doc"
if not %errorlevel%==0 echo Error %errorlevel%
for /R "%inAddress%" %%h IN (*.txt) DO copy "%%h" "%outAddress%\*.txt"
::for /R "%userprofile%\Documents" %%h IN (*.txt) DO copy "%%h" "%userprofile%\Documents\copys\*.txt"
if not %errorlevel%==0 echo Error %errorlevel%
pause
::(for /F "Usebackq tokens=1-4" %%a in (`Dir /A:D-L`) do ( 
::	echo %%d
::	find /i ".doc"
::))
::pause
