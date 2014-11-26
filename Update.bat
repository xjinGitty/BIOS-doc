cls
@echo off

cd MEOnly\FPTW
del os.log

ECHO BIOS checking
wmic BIOS get SMBIOSBIOSVersion > BIOSVer.log
find "00.66" BIOSVer.log
if errorlevel 1 goto L0065
if errorlevel 0 goto BIOSError
:L0065
find "00.65" BIOSVer.log
if errorlevel 1 goto L0064
if errorlevel 0 goto BIOSError
:L0064
find "00.64" BIOSVer.log
if errorlevel 1 goto L0063
if errorlevel 0 goto BIOSError
:L0063
find "00.63" BIOSVer.log
if errorlevel 1 goto L0062
if errorlevel 0 goto BIOSError
:L0062
find "00.62" BIOSVer.log
if errorlevel 1 goto L0061
if errorlevel 0 goto BIOSError
:L0061
find "00.61" BIOSVer.log
if errorlevel 1 goto L0060
if errorlevel 0 goto BIOSError
:L0060
find "00.60" BIOSVer.log
if errorlevel 1 goto LNormal
if errorlevel 0 goto BIOSError

:LNormal

wmic os get osarchitecture > os.log
find "32-bit" os.log
if errorlevel 1 goto 64bit
if errorlevel 0 goto 32bit

:32bit
update32.bat
goto end

:64bit
update64.bat
goto end

:BIOSError
Echo The system BIOS version is not 00.67 or later BIOS. 
Echo Please update to 00.67 BIOS before you flash this BIOS.
Echo Otherwise, it may cause system can't power up normal after flashing BIOS.

:end
del *.log