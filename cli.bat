@ECHO OFF

SET man1=%1
SHIFT

:loop
IF NOT "%1"=="" (
    IF "%1"=="-username" (
        SET user=%2
        SHIFT
    )
    IF "%1"=="-otheroption" (
        SET other=%2
        SHIFT
    )
    SHIFT
    GOTO :loop
)

ECHO Man1 = %man1%
ECHO Man2 = %man2%
ECHO Username = %user%
ECHO Other option = %other%

REM ...do stuff here...

:theend