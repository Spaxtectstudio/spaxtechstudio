@echo off
cls
echo SpaxTech Studio Launcher v1.0.1 beta
echo.

setlocal enabledelayedexpansion

rem Loading bar settings
set /a max=50
set /a total=20

for /L %%i in (0,1,%total%) do (
    set /a percent=%%i*100/%total%
    set /a bars=%%i*%max%/%total%
    set "bar="
    for /L %%j in (1,1,!bars!) do set "bar=!bar!#"
    for /L %%k in (!bars!,1,%max%) do set "bar=!bar!."
    cls
    echo SpaxTech Studio Launcher v1.0.1 beta
    echo.
    echo Loading... [!bar!] !percent!%%
    timeout /t 1 >nul
)

echo Launching Roblox now!
start roblox-player:
exit
