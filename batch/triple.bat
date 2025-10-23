@ECHO OFF

FOR /L %%c IN (1, 1, 40) DO CALL :FIRST %%c
GOTO :END

:FIRST
FOR /L %%b IN (1, 1, %1) DO CALL :SECOND %1 %%b
GOTO :END

:SECOND
FOR /L %%a IN (1, 1, %2) DO CALL :THIRD %1 %2 %%a
GOTO :END

:THIRD
SET /A legs=%3 * %3 + %2 * %2
SET /A hyp=%1*%1
IF %legs% EQU %hyp% ECHO %3, %2, %1

:END