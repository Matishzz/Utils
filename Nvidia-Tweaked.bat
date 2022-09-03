@echo off
title Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
color F0
mode 120,50

:: Wow, it wasn't hard at all to see the code, was it? 
:: This file belongs to me and all shameless copies will be taken into account and will go through the famous rat channel. 
:: https://twitter.com/Matishzz

echo.
echo.
echo           __    __     ______     ______   __     ______     __  __     ______     ______    
echo          /\ "-./  \   /\  __ \   /\__  _\ /\ \   /\  ___\   /\ \_\ \   /\___  \   /\___  \   
echo          \ \ \-./\ \  \ \  __ \  \/_/\ \/ \ \ \  \ \___  \  \ \  __ \  \/_/  /__  \/_/  /__  
echo           \ \_\ \ \_\  \ \_\ \_\    \ \_\  \ \_\  \/\_____\  \ \_\ \_\   /\_____\   /\_____\ 
echo            \/_/  \/_/   \/_/\/_/     \/_/   \/_/   \/_____/   \/_/\/_/   \/_____/   \/_____/ 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout 3 /nobreak >nul

:0
cls
echo.
echo.                         What do you want to do?
echo.
echo     [1] Delete NvTelemetry                 [8] Disable NvidiaContainer 
echo.    [2] Disable Uvm                        [9] Open overclock guide
echo     [3] Apply Matishzz dwords              
echo     [4] Disable GpuEnergyDrv 
echo     [5] Revert Uvm                         
echo     [6] Disable HDCP
echo     [7] Enable NvidiaContainer 
echo                                                                    [0] Exit 
echo.
echo                                                                 -  @Matishzz
echo.


set /p menu=: 

if "%menu%"=="1" goto 1
if "%menu%"=="2" goto 2
if "%menu%"=="3" goto 3
if "%menu%"=="4" goto 4
if "%menu%"=="5" goto 5
if "%menu%"=="6" goto 6
if "%menu%"=="7" goto 7
if "%menu%"=="8" goto 8
if "%menu%"=="9" start https://docs.google.com/document/d/14ma-_Os3rNzio85yBemD-YSpF_1z75mZJz1UdzmW8GE/edit
if "%menu%"=="0" goto Exit
goto 0

====================================================================================================================================================================================================================================================================================

:1
cls
echo   Removing NvTelemetry will cause breakage in Nvidia Geforce Experience, are you sure to remove it?
echo                        [1] Yes                   [2] No, go back
echo.
echo.
echo                                                                 -  @Matishzz
echo.

set /p menu=: 
if "%menu%"=="2" goto 0
if "%menu%"=="1" goto 1-5

:1-5
cls
cd /d "%PROGRAMFILES%\NVIDIA Corporation\"
dir NvTelemetry64.dll /a /b /s
del NvTelemetry64.dll /a /s

cd /d "SYSTEM32\DriverStore\FileRepository\"
dir NvTelemetry64.dll /a /b /s
del NvTelemetry64.dll /a /s

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=NVTelemetry.dll has been successfully eliminated @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0

====================================================================================================================================================================================================================================================================================

:2
cls
echo   Disabling Uvm will cause NVENC H.265 to break in OBS, are you sure to disable it?
echo                        [1] Yes                   [2] No, go back
echo.
echo.
echo                                                                 -  @Matishzz
echo.
set /p menu=: 
if "%menu%"=="2" goto 0
if "%menu%"=="1" goto 2-5
goto 2

:2-5
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=Uvm has been deactivated, Reboot the pc to get changes @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0


====================================================================================================================================================================================================================================================================================

:3
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=Matishzz Dword has been applied successfully @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0


====================================================================================================================================================================================================================================================================================

:4
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=GpuEnergyDrv successfully disabled @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0


====================================================================================================================================================================================================================================================================================

:5
cls
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "UvmDisable" /f

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=Uvm was successfully reversed @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0

====================================================================================================================================================================================================================================================================================

:6
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0001" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=HDCP was successfully disabled @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0

====================================================================================================================================================================================================================================================================================

:7
cls
sc config NVDisplay.ContainerLocalSystem start= demand
net start NVDisplay.ContainerLocalSystem

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=NvidiaContainer successfully activated @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0

====================================================================================================================================================================================================================================================================================

:8
cls
sc config NVDisplay.ContainerLocalSystem start= disabled
net stop NVDisplay.ContainerLocalSystem

SET msgboxTitle=Nvidia Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
SET msgboxBody=NvidiaContainer successfully disabled @Matishzz 
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto 0

===================================================================================================================================================================================================================================================================================

:Exit
start https://twitter.com/Matishzz
exit
