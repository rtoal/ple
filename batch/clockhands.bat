@ECHO OFF
FOR /L %%i IN (0, 1, 10) DO CALL :FOO %%i
GOTO :END

:FOO
SETLOCAL ENABLEDELAYEDEXPANSION
SET /A t=(43200 * %1 + 21600) / 11
SET /A h=%t% / 3600
SET /A m=%t% / 60 %% 60
SET /A s=%t% %% 60
IF %h% EQU 0 SET h=12
SET h=0%h%
SET m=0%m%
SET s=0%s%
SET h=!h:~-2!
SET m=!m:~-2!
SET s=!s:~-2!
ECHO %h%:%m%:%s%
ENDLOCAL
:END