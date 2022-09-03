@echo off
title AMD Tweaked / By @Matishzz / https://discord.io/MatishzzTweaking
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

:0
cls
echo.
echo.                         What do you want to do?
echo.
echo     [1] Apply 0000/UMD Settings               
echo.    [2] Disable irrelevant Services/Drivers   
echo     [3] Change Scaling               
echo     [4] Disable GpuEnergyDrv 
echo     [5] Debloat CNext
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
if "%menu%"=="0" goto Exit

echo x=msgbox("This command was not recognized, only 1, 2, 3, 4 and 0 are accepted.",DefaultMsgBox+vbCritical+vbOKOnly,"PowerPlans / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:1
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LTRSnoopL1Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LTRSnoopL0Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LTRNoSnoopL1Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LTRMaxNoSnoopLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_RpmComputeLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalUrgentLatencyNs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "memClockSwitchLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_RTPMComputeF1Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DGBMMMaxTransitionLatencyUvd" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DGBPMMaxTransitionLatencyGfx" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalNBLatencyForUnderFlow" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalDramClockChangeLatencyNs" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BGM_LTRSnoopL1Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BGM_LTRSnoopL0Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BGM_LTRNoSnoopL1Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BGM_LTRNoSnoopL0Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BGM_LTRMaxSnoopLatencyValue" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "BGM_LTRMaxNoSnoopLatencyValue" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCForFullScreenApp" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableEarlySamuInit" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ActivityTarget" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GCOOPTION_DisableGPIOPowerSaveMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_DownHyst" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_UpHyst" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_MaxUVDSessions" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDirectMemoryAccessTrig" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDPrefSwitchingForGLSync" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "WmAgpMaxIdleClk" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TVEnableOverscan" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AreaAniso" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AdaptiveAAMethod" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ATMS" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASD" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASE" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASTT" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "MLF" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AreaAniso" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AreaAniso_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod_DEF" /t REG_SZ /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_DEF" /t REG_SZ /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "LodAdj" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "NoOSPowerOptions" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TrilinearOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod" /t REG_BINARY /d "31000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt" /t REG_BINARY /d "31000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiStuttering" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /t REG_BINARY /d "3300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f

echo x=msgbox("UMD and 0000 configuration has been successfully applied",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:2 
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AMD Log Utility" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f

echo x=msgbox("Services/drivers have been deactivated successfully",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:3 
cls
echo.
echo                  What scaling do you want to use?
echo.
echo          [1] Center Image [2] Full Screen [3] Aspect Ratio
echo                                                                    [0] Back to 
echo.
echo                                                                 -  @Matishzz
echo.
set /p menu=: 

if "%menu%"=="1" goto CenterImage
if "%menu%"=="2" goto FullScreen
if "%menu%"=="3" goto AspectRatio
if "%menu%"=="0" goto 0

echo x=msgbox("This command was not recognized, only 1, 2, 3, and 4 are accepted.",DefaultMsgBox+vbCritical+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 3

:CenterImage
cls
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /s /f "Scaling"^| findstr "HKEY"') do reg add "%%i" /v "Scaling" /t REG_DWORD /d "1" /f 

echo x=msgbox("Scaling has been successfully changed",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 3

:FullScreen
cls
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /s /f "Scaling"^| findstr "HKEY"') do reg add "%%i" /v "Scaling" /t REG_DWORD /d "3" /f 

echo x=msgbox("Scaling has been successfully changed",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 3

:AspectRatio
cls
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /s /f "Scaling"^| findstr "HKEY"') do reg add "%%i" /v "Scaling" /t REG_DWORD /d "4" /f 

echo x=msgbox("Scaling has been successfully changed",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 3

:4
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f

echo x=msgbox("GpuEnergyDrv has been successfully deactivated",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:exit
start https://twitter.com/Matishzz && exit

:5 
cd %PROGRAMFILES%\AMD\CNext\CNext
if exist "RadeonSoftware.exe" goto Delete

echo x=msgbox("You don't have AMD Software installed",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0

:Delete
cd %PROGRAMFILES%\AMD\CNext\CNext
cls
powershell stop-process -ProcessName cncmd -Force >nul
powershell stop-process -ProcessName Radeonsoftware -Force >nul
powershell stop-process -ProcessName AMDRSServ -Force >nul
powershell stop-process -ProcessName amdow -Force >nul
powershell stop-process -ProcessName QtWebEngineProcess -Force >nul
cls
RMDIR /Q /S facebook
RMDIR /Q /S ffmpeg
RMDIR /Q /S Gfycat
RMDIR /Q /S localisation
RMDIR /Q /S mixer
RMDIR /Q /S models
RMDIR /Q /S resources
RMDIR /Q /S QtCharts
RMDIR /Q /S QtMultimedia
RMDIR /Q /S QtQml
RMDIR /Q /S QtTest
RMDIR /Q /S QtWebEngine
RMDIR /Q /S QtWinExtras
RMDIR /Q /S QuanminTV
RMDIR /Q /S resources
RMDIR /Q /S restream
RMDIR /Q /S sinaWeibo
RMDIR /Q /S streamable
RMDIR /Q /S translations
RMDIR /Q /S twitch
RMDIR /Q /S twitter
RMDIR /Q /S youku
RMDIR /Q /S youtube
del /s /q dvrres_it_IT.dll
del /s /q dvrres_fi_FI.dll
del /s /q DuplicateDesktop.exe
del /s /q 7z.exe
del /s /q amddmlfilters.exe
del /s /q amdow.exe
del /s /q AMDRSServ.exe
del /s /q AMDRSSrcExt.exe
del /s /q ATISetup.exe
del /s /q AutoOverClockGFXCLK.exe
del /s /q CompressionUtility.exe
del /s /q DuplicateDektop.exe
del /s /q EyefinityPro.exe
del /s /q gpuup.exe
del /s /q installShell64.exe
del /s /q MMLoadDrv.exe
del /s /q MMLoadDrvPXDiscrete.exe
del /s /q QtWebEngineProcess.exe
del /s /q RSServCmd.exe
del /s /q videotrim.exe
del /s /q ZipUtility.exe
del /s /q 7z.dll
del /s /q amf-component-ffmpeg64.dll
del /s /q amf-component-ring-buffer64.dll
del /s /q avcodec-58.dll
del /s /q avdevice-58.dll
del /s /q avfilter-7.dll
del /s /q avformat-58.dll 
del /s /q avresample-4.dll
del /s /q avutil-56.dll
del /s /q D3Dcompiler_47.dll
del /s /q dvrres_cs.dll
del /s /q dvrres_da_DK.dll
del /s /q dvrres_de.dll
del /s /q dvrres_el_GR.dll
del /s /q dvrres_en_US.dll
del /s /q dvrres_es_ES.dll
del /s /q dvrresfi_FI.dll
del /s /q dvrres_fr_FR.dll
del /s /q dvrres_hu_HU.dll
del /s /q dvrres_it_IT
del /s /q dvrres_ja.dll
del /s /q dvrres_ko_KR.dll
del /s /q dvrres_nl_NL.dll
del /s /q dvrres_no.dll
del /s /q dvrres_pl.dll
del /s /q dvrres_pt_BR.dll
del /s /q dvrres_ru_RU.dll
del /s /q dvrres_sv_SE.dll
del /s /q dvrres_th.dll
del /s /q dvrres_tr_TR.dll
del /s /q dvrres_zh_CN.dll
del /s /q dvrres_zh_TW.dll
del /s /q freeglut.dll
del /s /q glew32.dll
del /s /q MediaInfo.dll
del /s /q Qt5Multimedia.dll
del /s /q Qt5MultimediaQuick.dll
del /s /q Qt5QuickTest.dll
del /s /q Qt5SerialPort.dll
del /s /q Qt5Test.dll
del /s /q Qt5WebEngineWidgets.dll
del /s /q RadeonImageFilters64.dll
del /s /q RadeonML-DirectML.dll
del /s /q swresample-3.dll
del /s /q swscale-5.dll
del /s /q xerces-c_2_6.dll
del /s /q branding.bmp
del /s /q brandingRSX.bmp
del /s /q brandingWS_RSX.bmp
del /s /q atiacmLocalisation.ini
del /s /q radeonimagefilters64.dl_
del /s /q radeonml-directml.dl_
del /s /q ModularMonet.dtd
del /s /q branding_pro_rsx.ico
del /s /q branding_rsx.ico
del /s /q workstation.rcc
del /s /q amddvr.reg
del /s /q EyefinityPro.reg
del /s /q license.txt
del /s /q StartCN.xml
del /s /q StartCNBM.xml
del /s /q StartDVR.xml
del /s /q wProfile.xsd
del /s /q ModularMonet.xml

cd %programfiles%\AMD\CNext\CNext\plugins
RMDIR /Q /S audio
RMDIR /Q /S bearer
RMDIR /Q /S iconengine
RMDIR /Q /S imageformats
RMDIR /Q /S mediaservice
RMDIR /Q /S platforminputcontexts
RMDIR /Q /S playlistformats
RMDIR /Q /S position
RMDIR /Q /S qmltooling
RMDIR /Q /S scenegraph
RMDIR /Q /S sqldrivers
RMDIR /Q /S styles
RMDIR /Q /S virtualkeyboard
RMDIR /Q /S iconengines

echo x=msgbox("CNext has been successfully debloated.",DefaultMsgBox+vbQuestion+vbOKOnly,"AMD Tweaked / By @Matishzz") > %tmp%\tmp.vbs
cscript //nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs && goto 0