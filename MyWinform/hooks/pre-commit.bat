setlocal
set REPOS=%1
set TXN=%2
rem check that logmessage contains at least 5 characters
svnlook log "%REPOS%" -t "%TXN%" | findstr ".........." > nul
if %errorlevel% gtr 0 goto err
exit 0
:err
echo �ύ����д��־!�ύ����д��־!�ύ����д��־!�ύ����д��־!�ύ����д��־!>&2
exit 1