@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:main
echo 1�������û�����
echo 2������ϵͳ����
set /p i=��������Ӧ�����֣�
if %i%==1 goto main1
if %i%==2 goto main2
:main1
set /p n=�����û���������
set /p p=�����û�����ֵ��
setx "%n%" "%p%"
goto continue
:main2
set /p n=����ϵͳ��������
set /p p=����ϵͳ����ֵ��
setx /m "%n%" "%p%"
:continue
set /p i=�Ƿ������y:�������������˳�����
if %i%==y (
cls
goto main) else exit