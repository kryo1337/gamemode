@echo off
:mainmenu
cls
color D
echo [1] GameMode
echo [2] GameModeNoSteam
echo [3] GameModeNoSteamIdle
echo [4] Run Programs
echo [5] Explorer
echo [0] Exit

choice /C 123450 /N /M "What do you want to do? (pick a number): "

if errorlevel 6 goto exit
if errorlevel 5 goto explorer
if errorlevel 4 goto runprograms
if errorlevel 3 goto gamenoidle
if errorlevel 2 goto gamenosteam
if errorlevel 1 goto game

:game
cls
color D
echo [1] GameMode On
echo [2] GameMode Off
echo [0] Back to Main Menu

choice /C 120 /N /M "What do you want to do? (pick a number): "
if errorlevel 3 goto mainmenu
if errorlevel 2 goto gameoff
if errorlevel 1 goto gameon

:gamenosteam
cls
color D
echo [1] GameModeNoSteam On
echo [2] GameModeNoSteam Off
echo [0] Back to Main Menu

choice /C 120 /N /M "What do you want to do? (pick a number): "
if errorlevel 3 goto mainmenu
if errorlevel 2 goto gamenosteamoff
if errorlevel 1 goto gamenosteamon

:gamenoidle
cls
color D
echo [1] GameModeNoSteamIdle On
echo [2] GameModeNoSteamIdle Off
echo [0] Back to Main Menu

choice /C 120 /N /M "What do you want to do? (pick a number): "
if errorlevel 3 goto mainmenu
if errorlevel 2 goto gamenosteamidleoff
if errorlevel 1 goto gamenosteamidleon

:runprograms
cls
color D
echo [1] Run firefox
echo [2] Run spotify
echo [3] Run teamspeak
echo [4] Run discord
echo [5] Run obs
echo [6] Run obsidian
echo [7] Run hitscan
echo [8] Run kovaak
echo [9] Run cmd
echo [0] Back to Main Menu

choice /C 1234567890 /N /M "Select a program to run (pick a number): "
if errorlevel 10 goto mainmenu
call :launchprogram %ERRORLEVEL%
goto mainmenu

:launchprogram
set "basepath=C:\gamemode\Apps\"
if "%1"=="1" start "" "%basepath%firefox.lnk"
if "%1"=="2" start "" "%basepath%spotify.lnk"
if "%1"=="3" start "" "%basepath%teamspeak.lnk"
if "%1"=="4" start "" "%basepath%discord.lnk"
if "%1"=="5" start "" "%basepath%obs.lnk"
if "%1"=="6" start "" "%basepath%obsidian.lnk"
if "%1"=="7" start "" "%basepath%hitscan.lnk"
if "%1"=="8" start "" "%basepath%kovaak.url"
if "%1"=="9" start "" "%basepath%cmd.lnk"
exit /b

:runpowermode
set "mode=%1"
Powershell.exe -executionpolicy Unrestricted -File "C:\gamemode\GameMode\RunGameMode.ps1" -Mode "%mode%"
goto mainmenu

:gameon
call :runpowermode "GameMode-On"
goto :eof

:gameoff
call :runpowermode "GameMode-Off"
goto :eof

:gamenosteamon
call :runpowermode "GameModeNoSteam-On"
goto :eof

:gamenosteamoff
call :runpowermode "GameModeNoSteam-Off"
goto :eof

:gamenosteamidleon
call :runpowermode "GameModeNoSteamIdle-On"
goto :eof

:gamenosteamidleoff
call :runpowermode "GameModeNoSteamIdle-Off"
goto :eof

:exit
exit
