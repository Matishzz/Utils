@echo off
title PowerPlans / By @Matishzz / https://discord.io/MatishzzTweaking
color F0
mode 120,50

:: Wow, it wasn't hard at all to see the code, was it? 
:: This file belongs to me and all shameless copies will be taken into account and will go through the famous rat channel. 
:: https://twitter.com/Matishzz Copyright (C) 2022 

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

:Downloading
cls
cd %temp% && if exist "Pows" goto 0
echo Downloading the PowerPlans, please wait.
powershell (new-object System.Net.WebClient).DownloadFile('https://bun.filedit.ch/pVjORzPxeIspRCFCrbry.zip','%temp%\Pows.zip') && powershell Expand-Archive -LiteralPath '%temp%\Pows.zip' -DestinationPath '%temp%' -Force && rmdir /s /q Pows.zip

:0
cls
echo.
echo.                         What do you want to do?
echo.
echo     [1] Install PowerPlans                   [4] Disable IDLE   
echo.    [2] Enable IDLE                          [5] Delete Default PowerPlans
echo     [3] Recovery Default Powerlans
echo                                                                    [0] Exit 
echo.
echo                                                                 -  @Matishzz
echo.
set /p menu=: 

if "%menu%"=="1" goto 1
if "%menu%"=="2" goto 3
if "%menu%"=="3" goto 5
if "%menu%"=="4" goto 2
if "%menu%"=="5" goto 4
if "%menu%"=="0" goto Exit

echo x=msgbox("This command was not recognized, only 1, 2, 3, and 4 are accepted.",DefaultMsgBox+vbCritical+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0


:1
cls
echo.
echo           What PowerPlan do you want to import?
echo.
echo  [1] CalyptoPowerPlan (IDLE OFF)
echo  [2] KernelOS_Performance_v6 (IDLE OFF)
echo  [3] Muren's Low Latency (IDLE OFF)
echo  [4] Zoyata (IDLE OFF) 
echo  [5] Pablerso Low Latency 0.4.2 (IDLE OFF)
echo  [6] Pablerso High Performance 0.3.1 (IDLE ON) 
echo  [7] Nani's Powerplan (IDLE ON)
echo  [8] Little Unixcorn's Powerplan (IDLE ON)
echo  [9] Import all
echo                                                                    [0] Back to 
echo.
echo                                                                 -  @Matishzz
echo.
set /p menu=:

if "%menu%"=="1" powercfg -import "%temp%\Pows\CalyptoPowerPlan.pow" && goto Successfully
if "%menu%"=="2" powercfg -import "%temp%\Pows\KernelOS_Performance_v6.pow" && goto Successfully
if "%menu%"=="3" powercfg -import "%temp%\Pows\Muren.pow" && goto Successfully
if "%menu%"=="4" powercfg -import "%temp%\Pows\Zoyata.pow" && goto Successfully
if "%menu%"=="5" powercfg -import "%temp%\Pows\Pablerso Latency 0.4.2.pow"  && goto Successfully
if "%menu%"=="6" powercfg -import "%temp%\Pows\Pablerso V.3.1.pow" && goto Successfully
if "%menu%"=="7" powercfg -import "%temp%\Pows\Nani.pow" && goto Successfully
if "%menu%"=="8" powercfg -import "%temp%\Pows\Unixcorn.pow" && goto Successfully
if "%menu%"=="9" goto ImportAll
if "%menu%"=="0" goto 0

echo x=msgbox("This command was not recognized, only 1, 2, 3, 4, 5, 6, 7, 8, 9 and 0 are accepted.",DefaultMsgBox+vbCritical+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 1

:ImportAll
cls
powercfg -import "%temp%\Pows\CalyptoPowerPlan.pow"
powercfg -import "%temp%\Pows\KernelOS_Performance_v6.pow"
powercfg -import "%temp%\Pows\Muren.pow"
powercfg -import "%temp%\Pows\Zoyata.pow"
powercfg -import "%temp%\Pows\Pablerso Latency 0.4.2.pow" 
powercfg -import "%temp%\Pows\Pablerso V.3.1.pow"
powercfg -import "%temp%\Pows\Nani.pow"
powercfg -import "%temp%\Pows\Unixcorn.pow"

echo x=msgbox("PowerPlans were applied successfully",DefaultMsgBox+vbQuestion+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:Successfully
cls
echo x=msgbox("The Powerplan has been successfully",DefaultMsgBox+vbQuestion+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 1

:2

cls
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1
powercfg -setactive scheme_current

echo x=msgbox("IDLE has been successfully desactivated",DefaultMsgBox+vbQuestion+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:3
cls
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current

echo x=msgbox("IDLE has been successfully activated",DefaultMsgBox+vbQuestion+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:4
cls
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a

echo x=msgbox("IDLE has been successfully activated",DefaultMsgBox+vbQuestion+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0


:5
cls
powershell (new-object System.Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/999679944286281898/1002275995539230770/Defaults.zip','%temp%\Defaults.zip') && powershell Expand-Archive -LiteralPath '%temp%\Defaults.zip' -DestinationPath '%temp%' -Force
powercfg -import "%temp%\defaults\Ultimate Performance.pow"
powercfg -import "%temp%\defaults\power saver.pow" && powercfg -import "%temp%\defaults\High performance.pow"
powercfg -import "%temp%\defaults\Balanced.pow" 

echo x=msgbox("PowerPlans were applied successfully",DefaultMsgBox+vbCritical+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:Exit
start https://twitter.com/Matishzz && exit