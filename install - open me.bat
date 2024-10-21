@echo off
setlocal

:: Get the directory of the running batch file
set scriptDir=%~dp0

:: Check if AutoHotkey is installed
for /f "tokens=3" %%a in ('reg query "HKCU\Software\AutoHotkey" /v Path') do set ahkPath=%%a
if defined ahkPath (
    echo AutoHotkey is already installed at %ahkPath%.
) else (
    echo AutoHotkey not found, downloading and installing...
    
    :: Download AutoHotkey installer for the latest version
    powershell -Command "Invoke-WebRequest -Uri 'https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.37.02_setup.exe' -OutFile '%TEMP%\ahk-install.exe' -ErrorAction Stop"
    
    :: Install AutoHotkey silently
    start /wait "" "%TEMP%\ahk-install.exe" /S
)

:: Open 'pwainstall' and 'chatgptx'
start "" "%scriptDir%pwainstall.ahk"
start "" "%scriptDir%chatgptx.ahk"

:: Copy AHK script to startup folder
echo Copying script to startup folder...
set startupPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
copy /Y "%scriptDir%chatgptx.ahk" "%startupPath%"

echo AHK script has been copied to the startup folder.
pause
