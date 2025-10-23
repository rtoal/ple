@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /L %%c IN (1, 1, 40) DO (
    FOR /L %%b IN (1, 1, %%c) DO (
        FOR /L %%a IN (1, 1, %%b) DO (
            SET /A legs=%%a * %%a + %%b * %%b
            SET /A hyp=%%c * %%c
            IF !legs! EQU !hyp! ECHO %%a, %%b, %%c
        )
    )
)