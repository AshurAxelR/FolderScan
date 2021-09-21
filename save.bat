@ECHO off
SETLOCAL

SET /P OK="Overwrite the database [Y/N]?"
IF /I "%OK%" NEQ "Y" GOTO END

java -jar folderscan.jar -save -nocmp -nogui

:END
ENDLOCAL
