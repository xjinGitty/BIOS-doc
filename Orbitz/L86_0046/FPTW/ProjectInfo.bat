@echo off
REM *
REM *  Get ME Info and UAC status                                    
REM *

if %PROCESSOR_ARCHITECTURE%==x86 (
MEInfoWin.exe -fwsts > Vpro.log
) else (
MEInfoWin64.exe -fwsts > Vpro.log
)
find "Error 9470:" Vpro.log > NUL
if errorlevel 1 goto Mecheck
goto TurnUACOff

REM *
REM *  UAC is off. Detect Project to set specific info.
REM *

:SPISizeCheck

REM *
REM *  Check SPI ROM Size
REM * 

echo Checking SPI ROM Size...

if %PROCESSOR_ARCHITECTURE%==x86 fptw -i > spiid.log
if %PROCESSOR_ARCHITECTURE%==AMD64 fptw64 -i > spiid.log

:is8MB
find "Size: 8192KB" spiid.log > NUL
if errorlevel 1 ( Set SPISize=16MB ) else ( Set SPISize=8MB )
echo SPI ROM Size is %SPISIZE%

:MECheck

REM *
REM *  Enable ME sign check to PCH version and determine correct BIOS
REM *  binary to update automatically.
REM * 
REM *  Set MESignCheck=Enable
REM *  Set MESignCheck=Disable
REM *

set MESignCheck=Disable

if NOT %MESignCheck%==Enable goto SSIDcheck

REM *
REM *  MESignCheck=Enable
REM * 
REM *  Get Read PCI device 0 1F 0 offset 8 to check PCH Revision by PCI_RW.
REM * 

echo Check PCH Revision
REM Check PCH Revision.
if %PROCESSOR_ARCHITECTURE%==x86 (
PCI_RW -r 0 1F 0 8 > NUL
) else (
PCI_RW64 -r 0 1F 0 8 > NUL
)
find "0x2" PCIRW.log > NUL
if errorlevel 1 ( Set PCHVER=QS ) else ( Set PCHVER=ES2 )
echo PCH Version is %PCHVer%

:SSIDcheck

REM *
REM *  Parse BIOS settings to get platform SSID.
REM * 

if %PROCESSOR_ARCHITECTURE%==x86 (
BIOSConfigutility /Getconfig:"SSIDCHK.txt" > NUL
) else (
BiosConfigUtility64 /GetConfig:"SSIDCHK.txt" >NUL
)

call ssidpars.bat ssidchk.txt > SSID.log
del ssidchk.txt 

REM *
REM *  Check platform and set specific informations.
REM * 

:IsRacer
find "1946" SSID.log > NUL
if errorlevel 1 goto IsRampage
if errorlevel 0 set ModelName=Racer
set SysSSID=1946
set NICController=Realtek
set FullBinary=L73_8.bin
set SignBinary=L73_8.bin
set UnsignBinary=L73_8.bin
set ProductName=	HP ProBook 430 G1
set ProductFamily=	103C_5336AN G=N L=BUS B=HP S=PRO
set PCID=	A3009C510000
set SKUCheck=Entry
set Commit=Yes
if NOT %MESignCheck%==Enable set BIOSBin=%FullBinary%
goto SignCheck
	
:IsRampage
find "1944" SSID.log > NUL
if errorlevel 1 goto IsRenegade
if errorlevel 0 set ModelName=Rampage
set SysSSID=1944
set NICController=Realtek
set FullBinary=L74_8.bin
set SignBinary=L74_8.bin
set UnsignBinary=L74_8.bin
set ProductName=	HP ProBook 440 G1
set ProductFamily=	103C_5336AN G=N L=BUS B=HP S=PRO
set PCID=	A3009E510000
set SKUCheck=Entry
set Commit=Yes
if NOT %MESignCheck%==Enable set BIOSBin=%FullBinary%
goto SignCheck
	
:IsRenegade
find "1942" SSID.log > NUL
if errorlevel 1 goto IsRicochet
if errorlevel 0 set ModelName=Renegade
set SysSSID=1942
set NICController=Realtek
set FullBinary=L74_8.bin
set SignBinary=L74_8.bin
set UnsignBinary=L74_8.bin
set ProductName=	HP ProBook 450 G1
set ProductFamily=	103C_5336AN G=N L=BUS B=HP S=PRO
set PCID=	A3009E510000
set SKUCheck=Entry
set Commit=Yes
if NOT %MESignCheck%==Enable set BIOSBin=%FullBinary%
goto SignCheck

:IsRicochet
find "1940" SSID.log > NUL
if errorlevel 1 goto IsBullet
if errorlevel 0 set ModelName=Ricochet
set SysSSID=1940
set NICController=Realtek
set FullBinary=L74_8.bin
set SignBinary=L74_8.bin
set UnsignBinary=L74_8.bin
set ProductName=	HP ProBook 470 G1
set ProductFamily=	103C_5336AN G=N L=BUS B=HP S=PRO
set PCID=	A3009E510000
set SKUCheck=Entry
set Commit=Yes
if NOT %MESignCheck%==Enable set BIOSBin=%FullBinary%
goto SignCheck

:IsBullet
find "213E" SSID.log > NUL
if errorlevel 1 goto IsOrbitz
if errorlevel 0 set ModelName=Bullet
set SysSSID=213E
set NICController=Intel
set FullBinary=L83_16.bin
set SignBinary=L83_16.bin
set UnsignBinary=L83_16.bin
set ProductName=	HP EliteBook 940 G1
set ProductFamily=	103C_5336AN G=D L=BUS B=HP S=ELI
set PCID=	A3009CF18002
set NONFCPCID=	A3009C710002
set SKUCheck=Full
set Commit=Yes
set AskNFC=Yes
set AskAT=No
if NOT %MESignCheck%==Enable set BIOSBin=%FullBinary%
goto SignCheck


:IsOrbitz
find "21B3" SSID.log > NUL
if errorlevel 1 goto IsUnknown
if errorlevel 0 set ModelName=Orbitz
set SysSSID=21B3
set NICController=Intel
set FullBinary=L86_16.bin
set SignBinary=L86_16.bin
set UnsignBinary=L86_16.bin
set ProductName=	HP EliteBook Revolve 810 G2
set ProductFamily=	103C_5336AN G=N L=BUS B=HP S=ELI
set PCID=	A3009FF18002
set NONFCPCID=	A3009FF10002
set SKUCheck=Full
set Commit=Yes
set AskNFC=No
set AskAT=No
if NOT %MESignCheck%==Enable set BIOSBin=%FullBinary%
goto SignCheck



:IsUnknown
set ModelName=Unknown
goto SignCheck

:SignCheck
if NOT %MESignCheck%==Enable ( 
echo ME Sign check Disabled.
Set BIOSBin=%FullBinary%
goto exit   
)

if %PCHVER%==QS Set BIOSBin=%SignBinary%
if %PCHVER%==ES2 Set BIOSBin=%UnsignBinary%
goto exit

:TurnUACOff
Set WinUAC=ON
goto exit

:exit
echo Model Name = %ModelName%
echo BIOS Binary = %BIOSBin%