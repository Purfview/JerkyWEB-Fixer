@echo off
REM Remove "REM" from the line below if you want an output placed in the same folder as "JerkyWEB Fixer.bat".
REM cd /d "%~dp0" >nul
cls
title JerkyWEB Fixer v1.4 - ENTER Selected FPS
color 0C
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                     JerkyWEB Fixer v1.4                       €
echo        x                                                               x
echo        €         Fix borked WEB files - no more jerky playback.        €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
echo        ENTER Selected FPS: 1=23.976 ^| 2=24 ^| 3=25 ^| 4=29.97 ^| 5=30
echo.
set /p z=
IF %z%==1 (SET fps=24000/1001p & goto START0)
IF %z%==2 (SET fps=24fps & goto START0)
IF %z%==3 (SET fps=25fps & goto START0)
IF %z%==4 (SET fps=30000/1001p & goto START0)
IF %z%==5 (SET fps=30fps & goto START0)
GOTO FOUR

:START0
setlocal
set PATH=%PATH%;c:\Program Files (x86)\mkvtoolnix
set PATH=%PATH%;c:\Program Files\mkvtoolnix
if exist "c:\Program Files\mkvtoolnix\" goto START1
if exist "c:\Program Files (x86)\mkvtoolnix\" goto START1
goto TOOLNIX

:START1
for %%a in (%*) do (
    mkvinfo %%a >nul
    if errorlevel 2 goto START3
    if errorlevel 1 goto ONE )
GOTO START2

:START2
cls
title JerkyWEB Fixer v1.4 - 10%%
color 0C
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                     JerkyWEB Fixer v1.4                       €
echo        x                                                               x
echo        €         Fix borked WEB files - no more jerky playback.        €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
echo   Fixing... €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 10%%
echo.

for %%a in (%*) do (
    mkvextract %%a tracks 0:"%%~na.avc" --abort-on-warnings >nul
    if errorlevel 1 goto TWO )

cls
title JerkyWEB Fixer v1.4 - 40%%
color 0C
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                     JerkyWEB Fixer v1.4                       €
echo        x                                                               x
echo        €         Fix borked WEB files - no more jerky playback.        €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
echo   Fixing... €€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤ 40%%
echo.

for %%a in (%*) do (
    mkvmerge -o "%%~na_fixed.mkv" --default-duration 0:%fps% --fix-bitstream-timing-information 0:1 "%%~na.avc" -D --sync 1:-150 --no-global-tags %%a --generate-chapters interval:300s >nul
    if errorlevel 1 goto TWO )
for %%a in (%*) do mkvpropedit "%%~na_fixed.mkv" --edit info --set "writing-application=JerkyWEB Fixer v1.4" >nul
for %%a in (%*) do del /F /Q "%%~na.avc" >nul
GOTO END

:START3
cls
title JerkyWEB Fixer v1.4 - 10%%
color 0C
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                     JerkyWEB Fixer v1.4                       €
echo        x                                                               x
echo        €         Fix borked WEB files - no more jerky playback.        €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
echo   Fixing... €€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 10%%
echo.

for %%a in (%*) do (
    mkvmerge -o "%%~na.tmp" %%a --abort-on-warnings >nul
    if errorlevel 1 goto THREE )

cls
title JerkyWEB Fixer v1.4 - 30%%
color 0C
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                     JerkyWEB Fixer v1.4                       €
echo        x                                                               x
echo        €         Fix borked WEB files - no more jerky playback.        €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
echo   Fixing... €€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 30%%
echo.

for %%a in (%*) do (
mkvextract "%%~na.tmp" tracks 0:"%%~na.avc" >nul
    if errorlevel 1 goto THREE )

cls
title JerkyWEB Fixer v1.4 - 60%%
color 0C
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                     JerkyWEB Fixer v1.4                       €
echo        x                                                               x
echo        €         Fix borked WEB files - no more jerky playback.        €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
echo   Fixing... €€€€€€€€€€€€≤≤≤≤≤≤≤≤ 60%%
echo.

for %%a in (%*) do del /F /Q "%%~na.tmp" >nul
for %%a in (%*) do (
    mkvmerge -o "%%~na_fixed.mkv" --default-duration 0:%fps% --fix-bitstream-timing-information 0:1 "%%~na.avc" -D --sync 1:-150 --no-global-tags %%a --generate-chapters interval:300s >nul
    if errorlevel 1 goto THREE )
for %%a in (%*) do mkvpropedit "%%~na_fixed.mkv" --edit info --set "writing-application=JerkyWEB Fixer v1.4" >nul
for %%a in (%*) do del /F /Q "%%~na.avc" >nul
GOTO END

:TOOLNIX
cls
title JerkyWEB Fixer v1.4 - MKVToolNix not found!
color 07
ECHO.
ECHO.
ECHO          MKVToolNix not found! Install it from there:
ECHO.
ECHO           https://mkvtoolnix.download/downloads.html
ECHO.
ECHO.
pause
exit
:FOUR
for %%a in (%*) do del /F /Q "%%~na.avc" >nul
for %%a in (%*) do del /F /Q "%%~na.tmp" >nul
for %%a in (%*) do del /F /Q "%%~na_fixed.mkv" >nul
cls
title JerkyWEB Fixer v1.4 - ERROR 4
color 07
ECHO.
ECHO.
ECHO                   ==ERROR 4==
ECHO                 Wrong selection!
ECHO.
pause
exit
:THREE
for %%a in (%*) do del /F /Q "%%~na.avc" >nul
for %%a in (%*) do del /F /Q "%%~na.tmp" >nul
for %%a in (%*) do del /F /Q "%%~na_fixed.mkv" >nul
cls
title JerkyWEB Fixer v1.4 - ERROR 3
color 07
ECHO.
ECHO.
ECHO                   ==ERROR 3==
ECHO.
ECHO.
pause
exit
:TWO
for %%a in (%*) do del /F /Q "%%~na.avc" >nul
for %%a in (%*) do del /F /Q "%%~na_fixed.mkv" >nul
cls
title JerkyWEB Fixer v1.4 - ERROR 2
color 07
ECHO.
ECHO.
ECHO                   ==ERROR 2==
ECHO.
ECHO.
pause
exit
:ONE
cls
title JerkyWEB Fixer v1.4 - ERROR 1
color 07
ECHO.
ECHO.
ECHO                   ==ERROR 1==
ECHO.
ECHO.
pause
exit
:END
cls
title JerkyWEB Fixer v1.4 - Operation completed!
color 0A
echo.
echo.
echo       8                        8  8  8 8""" 8""8      8"""
echo       8  eeee eeee  e  e  e  e 8  8  8 8    8  8      8    e  e   e eeee eeee
echo       8e 8    8  8  8  8  8  8 8e 8  8 8eee 8ee8ee    8eee 8   8 8  8    8  8
echo       88 8eee 8ee8e 8ee8e 8ee8 88 8  8 88   88   8    88   8e  eee  8eee 8ee8e
echo    e  88 88   88  8 88  8  88  88 8  8 88   88   8    88   88 88  8 88   88  8
echo    8ee88 88ee 88  8 88  8  88  88e8ee8 88ee 88eee8    88   88 88  8 88ee 88  8
echo.
echo.
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo        x                                                               x
echo        €                                                               €
echo        x                                                               x
echo        €                    Operation completed!                       €
echo        x                                                               x
echo        €                                                               €
echo        x                                                               x
echo        €x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€x€
echo.
echo.
pause
color 07
