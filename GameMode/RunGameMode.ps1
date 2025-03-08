param (
    [Parameter(Mandatory=$true)]
    [ValidateSet("GameMode-On", "GameMode-Off", "GameModeNoSteam-On", "GameModeNoSteam-Off", "GameModeNoSteamIdle-On", "GameModeNoSteamIdle-Off")]
    [string]$Mode
)

Import-Module "C:\gamemode\GameMode\GameMode.ps1" -Force

switch ($Mode) {
    "GameMode-On" { GM-GameMode-On }
    "GameMode-Off" { GM-GameMode-Off }
    "GameModeNoSteam-On" { GM-GameModeNoSteam-On }
    "GameModeNoSteam-Off" { GM-GameModeNoSteam-Off }
    "GameModeNoSteamIdle-On" { GM-GameModeNoSteamIdle-On }
    "GameModeNoSteamIdle-Off" { GM-GameModeNoSteamIdle-Off }
}