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

::Enabling Delayed Expansion
setlocal EnabledelayedExpansion > nul
cls 

for /f %%i in ('wmic path Win32_UserAccount where name^="%username%" get sid ^| findstr "S-"') do set "USER_SID=%%i"

chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.                                %p%███████╗██╗  ██╗███╗   ███╗  ████████╗ ██╗       ██╗███████╗ █████╗ ██╗  ██╗ ██████╗
echo.                                %p%██╔════╝╚██╗██╔╝████╗ ████║  ╚══██╔══╝ ██║  ██╗  ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo.                                %p%█████╗   ╚███╔╝ ██╔████╔██║     ██║    ╚██╗████╗██╔╝█████╗  ███████║█████═╝ ╚█████╗ 
echo.                                %p%██╔══╝   ██╔██╗ ██║╚██╔╝██║     ██║     ████╔═████║ ██╔══╝  ██╔══██║██╔═██╗  ╚═══██╗
echo.                                %p%███████╗██╔╝╚██╗██║ ╚═╝ ██║     ██║     ╚██╔╝ ╚██╔╝ ███████╗██║  ██║██║ ╚██╗██████╔╝
echo.                                %p%╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝      ╚═╝   ╚═╝  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝                                                    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo %w% - Reducing Keyboard Repeat Delay%b%
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f

echo %w% - Increasing Keyboard Repeat Rate%b%
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
echo %w% - Disabling Filter Keys %g%(the filterkeys app is completely useless placebo, dont use it)%b%
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
echo %w% - Disabling Toggle Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
echo %w% - Disabling Sticky Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo %w% - Disabling Mouse Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f

echo.
echo.
echo.                                                                                  %b%╔═══════════════════════════════════════════════════════════════╗
echo.                                                                                  %b%║    %w% * Operation Completed * Press any key to continue...      %b%║
echo.                                                                                  %b%╚═══════════════════════════════════════════════════════════════╝
echo.

pause > nul
cls
exit
