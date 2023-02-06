@echo off
echo ������ 䠩� ��� ��१���� 䠩��� ���㬥�⮢ (*.doc, *.txt) �� ������ ��⠫��� � ��㣮� � �����������
echo (��㭤��� 2 ���� ����஢ �. �. �761-2)
echo:

:Start
@echo ������ ��᮫��� ����� �� ���ண� �㤥� �ந�������� ����஢���� (*.doc � *.txt) 䠩���
set /p inAddress=%~dp1
if -"%inAddress%"==-"" goto NoParam
if -"%inAddress%"==-"/?" goto NoParam
if not exist "%inAddress%" goto Existed

@echo ������ ��᮫��� ����� � ����� �㤥� �ந�������� ����஢���� (*.doc � *.txt) 䠩���
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
echo ������ 䠩� ��� ��१���� 䠩��� ���㬥�⮢ (*.doc, *.txt) �� ������ ��⠫��� � ��㣮�.
echo:
echo [drive:][path]
echo: 
pause
goto Start

:Existed
echo �訡�� �� ������ ����!
pause
goto Start

:End
echo ��⮢�
pause
