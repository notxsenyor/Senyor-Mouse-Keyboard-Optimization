@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
@echo off
::Made and distributed by SENYOR TWEAKS, S.R.O. ® 2025

:: Color Codes
set w=[97m
set g=[90m
set p=[95m
set b=[96m
set o=[1m

:: Enabling ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul
cls 

for /f %%i in ('wmic path Win32_UserAccount where name^="%username%" get sid ^| findstr "S-"') do set "USER_SID=%%i"

::Enabling Restore points 
chcp 437 >nul 2>&1
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
chcp 65001 >nul 2>&1
cls 


:: Restore Point
:restorepoint
cls
echo.
echo.
echo.
echo.
echo.                                                  
echo.                                                    %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗         
echo.                                                    %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝        
echo.                                                    %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║            
echo.                                                    %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║           
echo.                                                    %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║           
echo.                                                    %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝           
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                                    %w% Do you want to Create a Restore Point?  
echo. 
echo. 
echo.                                                              %p%[%w%1%p%]%w% Make A restore Point                                  %p%[%w%2%p%]%w% Use a restore point 
echo.
echo. 
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                         %W% Allows you to revert your PC to the configuartion when the restore point was made      
echo.                                           %b%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
set /p input=:
if /i %input% == 1 goto createRP
if /i %input% == 2 goto restore
::secretskiptomenu
if /i %input% == m goto menu
) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu

:RedirectMenu
goto restorepoint

:createRP
cls 
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║   
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║   
echo.                                                                  %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║   
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   
echo.
echo. %w% Enabling Restore points ... %b%                                                       
chcp 437 >nul 2>&1
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
chcp 65001 >nul 2>&1
cls 

echo. %w% Creating a restore point... %b%                                                       
chcp 437 >nul
powershell "Checkpoint-Computer -Description 'EXM Tweaks Restore Point'
powershell "&  {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Restore point completed successfully, press "OK" to continue', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to exit...          %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
exit

:restore
cls 
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗████████╗ █████╗ ██████╗ ███████╗  ██████╗  █████╗ ██╗███╗  ██╗████████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██║████╗ ██║╚══██╔══╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗    ██║   ██║  ██║██████╔╝█████╗    ██████╔╝██║  ██║██║██╔██╗██║   ██║   
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗   ██║   ██║  ██║██╔══██╗██╔══╝    ██╔═══╝ ██║  ██║██║██║╚████║   ██║   
echo.                                                                  %p%██║  ██║███████╗██████╔╝   ██║   ╚█████╔╝██║  ██║███████╗  ██║     ╚█████╔╝██║██║ ╚███║   ██║   
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝    ╚════╝ ╚═╝  ╚═╝╚══════╝  ╚═╝      ╚════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   
echo.
rstrui.exe
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to exit...          %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.
pause > nul
exit
