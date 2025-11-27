@echo off
title ASCII.live Viewer
color 0A

:menu
cls
echo ================================================
echo              ASCII.LIVE VIEWER
echo ================================================
echo.
echo  1. bnr              13. forrest
echo  2. knot             14. nyan
echo  3. earth            15. torus-knot
echo  4. batman           16. purdue
echo  5. coin             17. bomb
echo  6. donut            18. india
echo  7. hes              19. can-you-hear-me
echo  8. spidyswing       20. clock
echo  9. maxwell          21. parrot
echo  10. kitty           22. playstation
echo  11. batman-running  23. rick
echo  12. dvd             24. as
echo.
echo  Type 'exit' or '0' to quit
echo.
echo ================================================
echo  You can enter a NUMBER or NAME
echo  Just CLOSE the animation window to return here
echo ================================================
set /p choice=">> "

REM Exit options
if /i "%choice%"=="exit" exit
if "%choice%"=="0" exit

REM Number selections
if "%choice%"=="1" set anim=bnr
if "%choice%"=="2" set anim=knot
if "%choice%"=="3" set anim=earth
if "%choice%"=="4" set anim=batman
if "%choice%"=="5" set anim=coin
if "%choice%"=="6" set anim=donut
if "%choice%"=="7" set anim=hes
if "%choice%"=="8" set anim=spidyswing
if "%choice%"=="9" set anim=maxwell
if "%choice%"=="10" set anim=kitty
if "%choice%"=="11" set anim=batman-running
if "%choice%"=="12" set anim=dvd
if "%choice%"=="13" set anim=forrest
if "%choice%"=="14" set anim=nyan
if "%choice%"=="15" set anim=torus-knot
if "%choice%"=="16" set anim=purdue
if "%choice%"=="17" set anim=bomb
if "%choice%"=="18" set anim=india
if "%choice%"=="19" set anim=can-you-hear-me
if "%choice%"=="20" set anim=clock
if "%choice%"=="21" set anim=parrot
if "%choice%"=="22" set anim=playstation
if "%choice%"=="23" set anim=rick
if "%choice%"=="24" set anim=as

REM Name selections (case insensitive)
if /i "%choice%"=="bnr" set anim=bnr
if /i "%choice%"=="knot" set anim=knot
if /i "%choice%"=="earth" set anim=earth
if /i "%choice%"=="batman" set anim=batman
if /i "%choice%"=="coin" set anim=coin
if /i "%choice%"=="donut" set anim=donut
if /i "%choice%"=="hes" set anim=hes
if /i "%choice%"=="spidyswing" set anim=spidyswing
if /i "%choice%"=="maxwell" set anim=maxwell
if /i "%choice%"=="kitty" set anim=kitty
if /i "%choice%"=="batman-running" set anim=batman-running
if /i "%choice%"=="dvd" set anim=dvd
if /i "%choice%"=="forrest" set anim=forrest
if /i "%choice%"=="nyan" set anim=nyan
if /i "%choice%"=="torus-knot" set anim=torus-knot
if /i "%choice%"=="purdue" set anim=purdue
if /i "%choice%"=="bomb" set anim=bomb
if /i "%choice%"=="india" set anim=india
if /i "%choice%"=="can-you-hear-me" set anim=can-you-hear-me
if /i "%choice%"=="clock" set anim=clock
if /i "%choice%"=="parrot" set anim=parrot
if /i "%choice%"=="playstation" set anim=playstation
if /i "%choice%"=="rick" set anim=rick
if /i "%choice%"=="as" set anim=as

if defined anim goto colormenu

echo.
echo Invalid choice! Press any key to try again...
pause >nul
goto menu

:colormenu
cls
echo ================================================
echo              SELECT COLOR
echo ================================================
echo.
echo  BACKGROUND COLORS:        TEXT COLORS:
echo  0 = Black                 0 = Black
echo  1 = Blue                  1 = Blue
echo  2 = Green                 2 = Green
echo  3 = Aqua                  3 = Aqua
echo  4 = Red                   4 = Red
echo  5 = Purple                5 = Purple
echo  6 = Yellow                6 = Yellow
echo  7 = White                 7 = White
echo  8 = Gray                  8 = Gray
echo  9 = Light Blue            9 = Light Blue
echo  A = Light Green           A = Light Green
echo  B = Light Aqua            B = Light Aqua
echo  C = Light Red             C = Light Red
echo  D = Light Purple          D = Light Purple
echo  E = Light Yellow          E = Light Yellow
echo  F = Bright White          F = Bright White
echo.
echo ================================================
echo  Enter 2 characters: [background][text]
echo  Example: 0A = Black background, Light Green text
echo  Press ENTER for default (0A)
echo ================================================
set /p colorChoice=">> "

if "%colorChoice%"=="" set colorChoice=0A

goto run

:run
set anim_to_play=%anim%
set color_to_use=%colorChoice%
set anim=
set colorChoice=
start /max "ASCII: %anim_to_play%" cmd /c "color %color_to_use% && curl ascii.live/%anim_to_play%"
goto menu