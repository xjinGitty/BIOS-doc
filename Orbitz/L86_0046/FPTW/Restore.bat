@echo off
call ProjectInfo.bat
if exist BIOS.txt BiosConfigUtility /SetConfig:BIOS.txt
if not exist BIOS.txt BiosConfigUtility /SetConfig:BIOS.bak

Rem *
Rem *  Restore GBE MAC address and SSID before reboot to prevent OS get wrong NIC SSID. 
Rem *
 
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==x86   EEUPDATEW32 /NIC=1 /A MAC.txt /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==x86   EEUPDATEW32 /NIC=1 /ww 0x0B %SysSSID% /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==AMD64 EEUPDATEW64e /NIC=1 /A MAC.txt /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==AMD64 EEUPDATEW64e /NIC=1 /ww 0x0B %SysSSID% /CALCCHKSUM
