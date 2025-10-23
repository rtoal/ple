@ECHO OFF
FOR /L %%i IN (0, 1, 10) DO CALL :FOO %%i
GOTO :END

:FOO
SET /A t=(43200 * %1 + 21600) / 11
SET /A h=%t% / 3600
SET /A m=%t% / 60 %% 60
SET /A s=%t% %% 60
IF %h% EQU 0 SET h=12
IF %h% LSS 10 SET h=0%h%
IF %m% LSS 10 SET m=0%m%
IF %s% LSS 10 SET s=0%s%
ECHO %h%:%m%:%s%
:END