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
if errorlevel 9 goto cmd
if errorlevel 8 goto kovaak
if errorlevel 7 goto hitscan
if errorlevel 6 goto obsidian
if errorlevel 5 goto obs
if errorlevel 4 goto discord
if errorlevel 3 goto teamspeak
if errorlevel 2 goto spotify
if errorlevel 1 goto firefox

:gameon
Powershell.exe -executionpolicy Unrestricted -File "C:\GameMode\GameModeon.ps1"
goto mainmenu

:gameoff
Powershell.exe -executionpolicy Unrestricted -File "C:\GameMode\GameModeoff.ps1"
goto mainmenu

:gamenosteamon
Powershell.exe -executionpolicy Unrestricted -File "C:\GameMode\GameModeNoSteamon.ps1"
goto mainmenu

:gamenosteamoff
Powershell.exe -executionpolicy Unrestricted -File "C:\GameMode\GameModeNoSteamoff.ps1"
goto mainmenu

:gamenosteamidleon
Powershell.exe -executionpolicy Unrestricted -File "C:\GameMode\GameModeNoSteamIdleon.ps1"
goto mainmenu

:gamenosteamidleoff
Powershell.exe -executionpolicy Unrestricted -File "C:\GameMode\GameModeNoSteamIdleoff.ps1"
goto mainmenu

:explorer
explorer "C:\Users\Administrator\Documents\Apps"
goto mainmenu

:kovaak
start "" "C:\Users\Administrator\Documents\Apps\kovaak.url"
goto mainmenu

:firefox
start "" "C:\Users\Administrator\Documents\Apps\firefox.lnk"
goto mainmenu

:spotify
start "" "C:\Users\Administrator\Documents\Apps\spotify.lnk"
goto mainmenu

:obs
start "" "C:\Users\Administrator\Documents\Apps\obs.lnk"
goto mainmenu

:hitscan
start "" "C:\Users\Administrator\Documents\Apps\hitscan.lnk"
goto mainmenu

:teamspeak
start "" "C:\Users\Administrator\Documents\Apps\teamspeak.lnk"
goto mainmenu

:discord
start "" "C:\Users\Administrator\Documents\Apps\discord.lnk"
goto mainmenu

:cmd
start "" "C:\Users\Administrator\Documents\Apps\cmd.lnk"
goto mainmenu

:obsidian
start "" "C:\Users\Administrator\Documents\Apps\obsidian.lnk"
goto mainmenu

:exit
exit
