# BeamMP-Server-Watchdog

## What it is:
A simple batch file to ensure a BeamMP server instantly restarts if it crashes or the server window is manually closed (i.e. after configuration changes, or new mods are added to `...\Resources\Client\`, etc., for fast restarts).

## What it is not:
An error handler.

## What the batch file does:
1. Prints usage info about itself.
2. Does a panic condition check to make sure `BeamMP-Server.exe` is present to prevent command window spam in the event that it is not found.
3. Launches `BeamMP-Server.exe` and waits for it to crash or be manually closed.
4. If the server crashes or is manually closed, logs timestamped notification of crash or close in the command window, and instantly restarts `BeamMP-Server.exe`.

## How to use it:
1. Place `BeamMP-Server-Watchdog.bat` next to `BeamMP-Server.exe`.
2. (OPTIONAL) Create shortcut to `BeamMP-Server-Watchdog.bat` on desktop.
3. Launch the server via the shortcut.
4. To fully exit, first close the batch file command window, and then close the server.

## What it looks like:
Running:
![image](https://user-images.githubusercontent.com/49531350/155889250-20ff3a09-e737-42b6-83cc-dc1b40191eaa.png)

Panic:
![image](https://user-images.githubusercontent.com/49531350/155889262-83d51cca-c208-42e1-a8fe-702bdae36969.png)
