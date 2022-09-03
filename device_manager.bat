@echo off
title Device Manager Automatic Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
color F0
mode 120,50
@echo off


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
cls

powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/963184076905410560/996011436239237130/DevManView.exe" -OutFile "%temp%/DevManView.exe"

devmanview /disable "System Speaker" && echo Disable "System Speaker"
devmanview /disable "High precision event timer" && echo Disable "High precision event timer"
devmanview /disable "Microsoft Virtual Drive Enumerator" && echo Disable "Microsoft Virtual Drive Enumerator"
devmanview /disable "NDIS Virtual Network Adapter Enumerator" && echo Disable "NDIS Virtual Network Adapter Enumerator"
devmanview /disable "SM Bus Controller" && echo Disable "SM Bus Controller"
devmanview /disable "System timer" && echo Disable "System timer"
devmanview /disable "UMBus Root Bus Enumerator" && echo Disable "UMBus Root Bus Enumerator"
devmanview /disable "Communications Port (COM1)" && echo Disable "Communications Port (COM1)"
devmanview /disable "Programmable Interrupt Controller" && echo Disable "Programmable Interrupt Controller"
devmanview /disable "Microsoft RRAS Root Enumerator" && echo Disable "Microsoft RRAS Root Enumerator"
devmanview /disable "System Speaker" && echo Disable "System Speaker"
devmanview /disable "Plug and Play Software Device Enumerator" && echo Disable "Plug and Play Software Device Enumerator"
devmanview /disable "NVVHCI Enumerator" && echo Disable "NVVHCI Enumerator"
devmanview /disable "Windows Management Interface for ACPI" && echo Disable "Windows Management Interface for ACPI"
devmanview /disable "HID-compliant system controller" && echo Disable "HID-compliant system controller"
devmanview /disable "Amdlog" && echo Disable "Amdlog"
:0
cls
echo                 You are about to disable mssmbios (Microsoft System Management BIOS Driver)
echo             this driver when disabled will break the startup of GTA 5, are you sure to disable it?
echo                              [1] Yes                     [2] No, close the batch
set /p menu=: 

if "%menu%"=="1" goto 1
if "%menu%"=="2" goto 2
goto 0


:2
start https://twitter.com/Matishzz && exit

:1
cls
devmanview /disable "Microsoft System Management BIOS Driver" && echo Disable "Microsoft System Management BIOS Driver"
start https://twitter.com/Matishzz && exit