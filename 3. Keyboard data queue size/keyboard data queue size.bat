@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
@echo off

:: Color Codes
set w=[97m
set g=[90m
set p=[95m
set b=[96m
set o=[1m

:: Enabling ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul
chcp 65001 >nul 2>&1
::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul
cls 

:dataqueue
cls
echo.
echo.
echo.
echo.                                                %p%██████╗  █████╗ ████████╗ █████╗    ██████╗ ██╗   ██╗███████╗██╗   ██╗███████╗  
echo.                                                %p%██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗  ██╔═══██╗██║   ██║██╔════╝██║   ██║██╔════╝  
echo.                                                %p%██║  ██║███████║   ██║   ███████║  ██║██╗██║██║   ██║█████╗  ██║   ██║█████╗    
echo.                                                %p%██║  ██║██╔══██║   ██║   ██╔══██║  ╚██████╔╝██║   ██║██╔══╝  ██║   ██║██╔══╝    
echo.                                                %p%██████╔╝██║  ██║   ██║   ██║  ██║   ╚═██╔═╝ ╚██████╔╝███████╗╚██████╔╝███████╗  
echo.                                                %p%╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝     ╚═╝    ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝  
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"   
echo.                                                                                                                       
echo.                                         %p%[%w%1%p%]%w% 13 %G%(High end CPU)              %p%[%w%2%p%]%w% 18 %g%(Mid end CPU)               %p%[%w%3%p%]%w% 22 %g% (Low end CPU)                 
echo.  
echo.                                                                                                                                                                                      
echo.                                         %p%%p%%p%%p%                                      %p%[%w%R%p%]%w% Revert                                    
echo.                                                                                                                
echo.                                         %p%%p%%p%%p%                                      %p%[%w%T%p%]%w% Open Task Manager                                     
echo.                                                                                                                       
echo.                                         %p%%p%%p%%p%                                      %p%[%w%E%p%]%w% Exit               
echo.                                                                                          
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                         %w% The lower the value, the less peripheral latency you will have
echo.                                                 %w% But it may cause KBM stutters and lag on lower end pc's if the value is too high
echo.
echo.                                           %w% Comment Your CPU under the tutorial youtube video, and we will tell you which value to use
echo.                                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.
echo. 

set /p input=: 
if /i %input% == 1 goto 13v
if /i %input% == 2 goto 18v
if /i %input% == 3 goto 22v
if /i %input% == R goto Revert
if /i %input% == T start taskmgr & goto :dataqueue
if /i %input% == E cls & exit

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
goto Redirectmouse

:Redirectmouse
cls
goto :dataqueue

:revert
echo %w% - Default %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
exit



:13v
echo %w% - 13 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "19" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
exit

:18v
echo %w% - 18 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "24" /f

echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
exit


:22v
echo %w% - 22 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "34" /f
echo.
echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
exit
