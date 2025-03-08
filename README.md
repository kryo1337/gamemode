## Gamemode

A personal batch program for boosting FPS when gaming on Windows by optimizing system resources and providing a customizable program launcher.

### Features

- **GameMode Variants**:
  - `GameMode`: Standard mode for general gaming.
  - `GameModeNoSteam`: Optimized for games running through Steam.
  - `GameModeNoSteamIdle`: A lighter mode that skips idle state adjustments.
- **Process and Service Management**:
  - Suspends or resumes non-essential processes and services to free up system resources.
- **System Tweaks**:
  - Kills and revives Windows Explorer to reduce background activity.
  - Adjusts power settings to disable CPU idle states.
  - Trims working set memory for all processes to optimize RAM usage.
- **Customizable Program Launcher**:
  - Launches user-defined programs from the `/Apps` folder via a menu.

### Requirements

- **Operating System**: Windows (tested on Windows 10/11).
- **PowerShell**: Version 5.1 or higher (comes with Windows).
- **Administrator Privileges**: Required to modify system settings, suspend processes, and stop services.
- **Directory Structure**:
  - `C:\gamemode\`: Main directory for the project.
  - `C:\gamemode\GameMode\`: Contains PowerShell scripts and XML configuration files.
  - `C:\gamemode\Apps\`: Stores user-defined program shortcuts (`.lnk`) and URLs (`.url`).

### Setup

1. **Clone the Repository to C:**:
  - clone the repository:
  ```bash
  git clone https://github.com/kryo1337/gamemode.git
  ```
2. **Create a shortcut for game.bat**
  - drag it to desktop
3. **Prepare Configuration Files**:
  - populate the XML files (`procsuspendlist.xml`, `procsuspendlistnosteam.xml`, `svcstoplist.xml`, `svcsuspendlist.xml`) with the processes and services you want to suspend or stop.
4. **Set Up Program Shorcuts**:
  - place shortcuts (`.lnk`) or URL files (`.url`) for programs you want to launch in `C:\gamemode\Apps\`.
  - edit `:launchprogram` and `:runprograms` in `game.bat` for your shourcuts
5. **Run as Administrator**:
  - Right-click `game.bat` and select "Run as administrator" to ensure the script can modify system settings.

### Credits

repo