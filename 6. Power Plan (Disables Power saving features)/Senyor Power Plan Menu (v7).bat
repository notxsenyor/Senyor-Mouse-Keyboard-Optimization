@echo off
::Senyor free power plan v6 | Made and distributed by SENYOR TWEAKS, S.R.O. ® 2025
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
@echo off
:: Color Codes
set w=[97m
set p=[95m
set b=[96m
set o=[1m

:: Enabling ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul
cls 
chcp 65001 >nul 2>&1

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                  %p%██████╗ ███████╗ ██████╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗ ██████╗
echo.                                                                  %p%██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██╔════╝
echo.                                                                  %p%██████╔╝█████╗  ╚█████╗ ██║  ██║██║   ██║██████╔╝██║  ╚═╝█████╗  ╚█████╗ 
echo.                                                                  %p%██╔══██╗██╔══╝   ╚═══██╗██║  ██║██║   ██║██╔══██╗██║  ██╗██╔══╝   ╚═══██╗
echo.                                                                  %p%██║  ██║███████╗██████╔╝╚█████╔╝╚██████╔╝██║  ██║╚█████╔╝███████╗██████╔╝
echo.                                                                  %p%╚═╝  ╚═╝╚══════╝╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝ ╚════╝ ╚══════╝╚═════╝ 
echo.
echo. %w% Downloading Senyor Free Power Plan V7... (You can find it in the C:\exm folder) %b%                                                       
echo.
chcp 437 >nul 2>&1
curl -g -k -L -# -o "C:\exm\Exm_Free_Power_Plan_V7" "https://github.com/exm4L/EXM-FREE-UTILITY-RESCOURSES/blob/main/Exm%20Free%20Power%20Plan%20V7.pow"
chcp 65001 >nul 2>&1
powershell "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Downloaded Power Plan successfully, Press "OK" To Apply it! ', 'EXM TWEAKS', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"

cls
echo. 
echo. 
echo. 
echo.                                                                 %p%██████╗  █████╗  ██╗       ██╗███████╗██████╗      
echo.                                                                 %p%██╔══██╗██╔══██╗ ██║  ██╗  ██║██╔════╝██╔══██╗ 
echo.                                                                 %p%██████╔╝██║  ██║ ╚██╗████╗██╔╝█████╗  ██████╔╝        
echo.                                                                 %p%██╔═══╝ ██║  ██║  ████╔═████║ ██╔══╝  ██╔══██   
echo.                                                                 %p%██║     ╚█████╔╝  ╚██╔╝ ╚██╔╝ ███████╗██║  ██║      
echo.                                                                 %p%╚═╝      ╚════╝    ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝ 
echo. 
echo. 


echo %w% Importing Senyor Free Power Plan V7%b%
powercfg -import "C:\Senyor\Senyor_Free_Power_Plan_V7.pow"
powershell "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Imported Power Plan successfully, Press "OK" To continue! ', 'EXM TWEAKS', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
powercfg.cpl

cls
goto pd4

:pd4
cls
echo. 
echo. 
echo. 
echo.                                                           %p%██████╗ ███████╗██╗       ██████╗ ██╗      █████╗ ███╗  ██╗ ██████╗
echo.                                                           %p%██╔══██╗██╔════╝██║       ██╔══██╗██║     ██╔══██╗████╗ ██║██╔════╝
echo.                                                           %p%██║  ██║█████╗  ██║       ██████╔╝██║     ███████║██╔██╗██║╚█████╗ 
echo.                                                           %p%██║  ██║██╔══╝  ██║       ██╔═══╝ ██║     ██╔══██║██║╚████║ ╚═══██╗
echo.                                                           %p%██████╔╝███████╗███████╗  ██║     ███████╗██║  ██║██║ ╚███║██████╔╝
echo.                                                           %p%╚═════╝ ╚══════╝╚══════╝  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝ 
echo.                                              %b%"════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
echo.                                                  %p%[%w%1%p%]%w% Delete Default Power Plans                    %p%[%w%2%p%]%w% Skip and exit
echo.
echo.                                                                                     
echo.                                                                                 %p%[%w%R%p%]%w% Default Power Plans 
echo.
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                           Deletes default power plans (Balanced, Power saver and High performance)                                              
echo.                                              %b%"═════════════════════════════════════════════════════════════════════════════════════════════"%w%
         
set /p input=:
if /i %input% == 1 goto deletepowerplans
if /i %input% == 2 exit
if /i %input% == R goto revertpowerplans
) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Misspell Detected  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
goto p4

:deletepowerplans
echo %w% - Deleting useless power plans%b%
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to exit...          %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto exit

:revertpowerplans
echo %w% - Resetting power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to exit...          %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
goto exit
