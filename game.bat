@echo off
:return
cls
color D
echo [1] GameMode
echo [2] GameModeNoSteam
echo [3] GameModeNoIdle
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

:gamenoidle
cls
color D
echo [1] GameModeNoIdle On
echo [2] GameModeNoIdle Off
echo [0] Back to Main Menu

SET choice=
SET /p choice=What do you want to do? (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO gamenoidleon
IF '%choice%'=='2' GOTO gamenoidleoff
IF '%choice%'=='0' GOTO return
IF '%choice%'=='' GOTO gamenoidle

:gameon
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\GameModeon.ps1
GOTO return 

:gameoff
Powershell.exe -executionpolicy Unrestricted -File  C:\GameMode\Gamemodeoff.ps1
GOTO return

:gamenosteamon
Powershell.exe -executionpolicy Unrestricted -File  C:\GameModenoSteam\GameModeon.ps1
GOTO return 

:gamenosteamoff
Powershell.exe -executionpolicy Unrestricted -File  C:\GameModenoSteam\Gamemodeoff.ps1
GOTO return

:gamenoidleon
Powershell.exe -executionpolicy Unrestricted -File  C:\GameModeNoIdle\GameModeon.ps1
GOTO return 

:gamenoidleoff
Powershell.exe -executionpolicy Unrestricted -File  C:\GameModeNoIdle\Gamemodeoff.ps1
GOTO return

:explorer
explorer "C:\Users\Administrator\Documents\Apps"
GOTO return

:runprograms
cls
color D
echo [1] Run chrome
echo [2] Run spotify
echo [3] Run valorant
echo [4] Run teamspeak
echo [5] Run discord
echo [6] Run kovaak
echo [7] Run replay obs
echo [8] Run endgame
echo [9] Run obsidian
echo [0] Back to Main Menu

SET choice=
SET /p choice=Select a program to run (pick a number): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO chrome
IF '%choice%'=='2' GOTO spotify
IF '%choice%'=='3' GOTO valorant
IF '%choice%'=='4' GOTO teamspeak
IF '%choice%'=='5' GOTO discord
IF '%choice%'=='6' GOTO kovaak
IF '%choice%'=='7' GOTO replay
IF '%choice%'=='8' GOTO endgame
IF '%choice%'=='9' GOTO obsidian
IF '%choice%'=='0' GOTO return
IF '%choice%'=='' GOTO runprograms

:kovaak
start "" "C:\Users\Administrator\Documents\Apps\kovaak.url"
GOTO return

:chrome
start "" "C:\Users\Administrator\Documents\Apps\chrome.lnk"
GOTO return

:spotify
start "" "C:\Users\Administrator\Documents\Apps\spotify.lnk"
GOTO return

:replay
start "" "C:\Users\Administrator\Documents\Apps\replay.lnk"
GOTO return

:endgame
start "" "C:\Users\Administrator\Documents\Apps\endgame.lnk"
GOTO return

:teamspeak
start "" "C:\Users\Administrator\Documents\Apps\teamspeak.lnk"
GOTO return

:discord
start "" "C:\Users\Administrator\Documents\Apps\discord.lnk"
GOTO return

:valorant
start "" "C:\Users\Administrator\Documents\Apps\valorant.lnk"
GOTO return

:obsidian
start "" "C:\Users\Administrator\Documents\Apps\obsidian.lnk"
GOTO return

:exit
exit