@echo off
:return
cls
color D
echo [1] GameMode
echo [2] GameModeNoSteam
echo [3] GameModeNoSteamIdle
echo [4] Run Programs
echo [5] Explorer
echo [0] Exit

SET choice=
SET /p choice=What do you want to do? (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO game
IF '%choice%'=='2' GOTO gamenosteam
IF '%choice%'=='3' GOTO gamenoidle
IF '%choice%'=='4' GOTO runprograms
IF '%choice%'=='5' GOTO explorer
IF '%choice%'=='0' GOTO exit
IF '%choice%'=='' GOTO return

:game
cls
color D
echo [1] GameMode On
echo [2] GameMode Off
echo [0] Back to Main Menu

SET choice=
SET /p choice=What do you want to do? (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO gameon
IF '%choice%'=='2' GOTO gameoff
IF '%choice%'=='0' GOTO return
IF '%choice%'=='' GOTO game

:gamenosteam
cls
color D
echo [1] GameModeNoSteam On
echo [2] GameModeNoSteam Off
echo [0] Back to Main Menu

SET choice=
SET /p choice=What do you want to do? (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO gamenosteamon
IF '%choice%'=='2' GOTO gamenosteamoff
IF '%choice%'=='0' GOTO return
IF '%choice%'=='' GOTO gamenosteam

:gamenosteamidle
cls
color D
echo [1] GameModeNoSteamIdle On
echo [2] GameModeNoSteamIdle Off
echo [0] Back to Main Menu

SET choice=
SET /p choice=What do you want to do? (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO gamenosteamidleon
IF '%choice%'=='2' GOTO gamenosteamidleoff
IF '%choice%'=='0' GOTO return
IF '%choice%'=='' GOTO gamenoidle

:gameon
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeon.ps1
GOTO return 

:gameoff
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeoff.ps1
GOTO return

:gamenosteamon
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeNoSteamon.ps1
GOTO return 

:gamenosteamoff
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeNoSteamoff.ps1
GOTO return

:gamenosteamidleon
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeNoSteamIdleon.ps1
GOTO return 

:gamenosteamidleoff
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeNoSteamIdleoff.ps1
GOTO return

:explorer
explorer "C:\Users\Administrator\Documents\Apps"
GOTO return

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

SET choice=
SET /p choice=Select a program to run (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO firefox
IF '%choice%'=='2' GOTO spotify
IF '%choice%'=='3' GOTO teamspeak
IF '%choice%'=='4' GOTO discord
IF '%choice%'=='5' GOTO obs
IF '%choice%'=='6' GOTO obsidian
IF '%choice%'=='7' GOTO hitscan
IF '%choice%'=='8' GOTO kovaak
IF '%choice%'=='9' GOTO cmd
IF '%choice%'=='0' GOTO return
IF '%choice%'=='' GOTO runprograms

:kovaak
start "" "C:\Users\Administrator\Documents\Apps\kovaak.url"
GOTO return

:firefox
start "" "C:\Users\Administrator\Documents\Apps\firefox.lnk"
GOTO return

:spotify
start "" "C:\Users\Administrator\Documents\Apps\spotify.lnk"
GOTO return

:obs
start "" "C:\Users\Administrator\Documents\Apps\obs.lnk"
GOTO return

:hitscan
start "" "C:\Users\Administrator\Documents\Apps\hitscan.lnk"
GOTO return

:teamspeak
start "" "C:\Users\Administrator\Documents\Apps\teamspeak.lnk"
GOTO return

:discord
start "" "C:\Users\Administrator\Documents\Apps\discord.lnk"
GOTO return

:cmd
start "" "C:\Users\Administrator\Documents\Apps\cmmd.lnk"
GOTO return

:obsidian
start "" "C:\Users\Administrator\Documents\Apps\obsidian.lnk"
GOTO return

:exit
exit
