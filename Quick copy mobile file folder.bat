@echo off
:main
echo 1�����ٸ����ļ�
echo 2�����ٸ����ļ���
echo 3�������ƶ��ļ�
echo 4�������ƶ��ļ���
set /p i=��������Ӧ�����֣�
if %i%==1 goto main1
if %i%==2 goto main2
if %i%==3 goto main3
if %i%==4 goto main4
:main1
set /p a="����ԴĿ¼����������:����d:����"
set /p b="����Ŀ��Ŀ¼����������:����d:����"
set /p c="����Ҫ���Ƶ��ļ�����"
robocopy "%a%" "%b%"\ "%c%" /NS /NC /A-:SH /MT:128
goto continue
:main2
set /p a="����ԴĿ¼����������:����d:����"
set /p b="����Ŀ��Ŀ¼����������:����d:����"
robocopy "%a%" "%b%"\ /NS /NC /A-:SH /E /MT:128
goto continue
:main3
set /p a="����ԴĿ¼����������:����d:����"
set /p b="����Ŀ��Ŀ¼����������:����d:����"
set /p c="����Ҫ�ƶ����ļ�����"
robocopy "%a%" "%b%"\ "%c%" /NS /NC /A-:SH /MOV /MT:128
goto continue
:main4
set /p a="����ԴĿ¼����������:����d:����"
set /p b="����Ŀ��Ŀ¼����������:����d:����"
robocopy "%a%" "%b%"\ /NS /NC /A-:SH /MOVE /E /MT:128
:continue
set /p i=�Ƿ������y:�������������˳�����
if %i%==y (
cls
goto main) else exit