@echo off
cls
if %PROCESSOR_ARCHITECTURE%==x86 set OSArc=32
if %PROCESSOR_ARCHITECTURE%==AMD64 set OSArc=64
if "%ALLUSERSPROFILE%"=="C:\Documents and Settings\All Users" Set WinOS=WinXP
echo PROCESSOR_ARCHITECTURE=%OSArc%

:IsWin8
ver > OSver.txt
find "6.2." OSver.txt > NUL
if errorlevel 1 goto IsWin7
if errorlevel 0 set WinOS=Win8
goto NotWin7

:IsWin7
ver > OSver.txt
find "6.1." OSver.txt > NUL
if errorlevel 1 goto NotWin7
if errorlevel 0 set WinOS=Win7

:NotWin7

REM *
REM * Please modify ProjectInfo.bat for project specific settings
REM *

echo Getting Project Information...
echo.

Call ProjectInfo.bat

echo Back to Update...

echo.

if exist step3.flg goto end
if exist step2.flg goto step3
if exist step0.flg goto BackupInfo

if "%WinUAC%"=="ON" (
Turnuacoff.hta
UACOFF.reg
shutdown -r -t 00
goto UpdateTerminate
)

:ACConfirm
ACNeeded.hta
goto chklock
if %PROCESSOR_ARCHITECTURE%==x86 start /wait ecram_rw -r 0x99 > acdc.log
if %PROCESSOR_ARCHITECTURE%==AMD64 start /wait ecram_rw_64 -r 0x99 > acdc.log

if errorlevel 216 (
TurnUACOff.HTA
goto UpdateTernimate     
)
find "ECRAM value is 0x1" acdc.log > NUL
if errorlevel 1 goto CHKLOCK
if errorlevel 0 goto NoAC
goto chklock

:NoAC
cls
echo.
echo The AC adapter MUST BE plugged in order to update the BIOS...
echo.
pause
GOTO ACConfirm


:Unlock
MEUnlock.hta
goto endcom1

:CHKLOCK

if %PROCESSOR_ARCHITECTURE%==x86 (
devcon32 find * > devlist.txt
) else (
devcon64 find * > devlist.txt
)

find "Microsoft" devlist.txt > NUL
if errorlevel 1 goto TurnUACOff

if %PROCESSOR_ARCHITECTURE%==x86 (
MEInfoWin.exe -fwsts > Vpro.log
) else (
MEInfoWin64.exe -fwsts > Vpro.log
)
if errorlevel 1 goto MeInfoError

find "Error 9470:" Vpro.log > NUL
if errorlevel 1 goto MeinitCheck
goto TurnUACOff

:MeInitCheck
find "FW Status Register1: 0x1E000055" vpro.log > NUL
if errorlevel 1 goto CheckCommitted
if errorlevel 0 goto MeInfoError

:CheckCommitted
find "FW Status Register1: 0x1E000245" vpro.log > NUL
if errorlevel 1 goto UPBIOS0
if errorlevel 0 goto Unlock

:UPBIOS0
cls
echo This system was uncommitted...
goto UPBIOS

:UPBIOS
@echo off
cls
echo.
echo This BIOS update batch file will update to the latest BIOS.  
echo.
echo Step 1. Backup BIOS information
echo.
echo Step 2. Update BIOS
echo.
echo Step 3. Restore BIOS information
echo.       
echo.Step 4. Commit the system      
echo. 
echo When the BIOS update is completed, you should 
echo see the message "BIOS is successfully updated!". 
echo Otherwise, Please continue to run update.bat after each
echo reboot. You should expect to see several reboots during this process.
echo.
pause

:step1
if exist step1.flg goto step2
md c:\fptw
del c:\fptw\*.flg
del c:\fptw\*.log
del c:\fptw\*.dat
del c:\fptw\WLAN.txt
xcopy *.* c:\fptw /s /y
del *.log
c:
cd\fptw
rem Win7 startup
copy autoupd.bat "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" /Y
rem XP startup
copy autoupd.bat "%HOMEPATH%\Start Menu\Programs\Startup" /Y
echo STEP0 > Step0.flg
cls
update.bat

:BackupInfo
cls
echo.
echo Step 1. Backup BIOS information.......
echo.

if %PROCESSOR_ARCHITECTURE%==x86 (
BiosConfigUtility /GetConfig:"BIOS.TXT"
if "%NICController%"=="Intel" call install.bat
if "%NICController%"=="Intel" EEUPDATEW32 /NIC=1 /MAC_DUMP_FILE > NUL
) else (
BiosConfigUtility64 /GetConfig:"BIOS.TXT"
if "%NICController%"=="Intel" call install64.bat
if "%NICController%"=="Intel" EEUPDATEW64e /NIC=1 /MAC_DUMP_FILE > NUL
)

find "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" BIOS.bak > NUL
if errorlevel 1 ( echo. ) else ( del BIOS.bak )

find "888888888788" MAC.bak > NUL
if errorlevel 1 ( echo. ) else ( del MAC.bak )

if not exist BIOS.bak copy BIOS.txt BIOS.bak
if not exist MAC.bak if exist MAC.txt copy MAC.txt MAC.bak

echo STEP1 > step1.flg
echo.
echo Backup done!
echo.

:step2
if exist step2.flg goto step3
cls
echo.
echo step 2. Update BIOS......
echo.
if not exist %BIOSBin% goto noBIOSBinary
if %PROCESSOR_ARCHITECTURE%==x86 fptw /f %BIOSBIN%
if %PROCESSOR_ARCHITECTURE%==AMD64 fptw64 /f %BIOSBIN%

if not errorlevel 1 goto RestoreMACSSID

echo Intel Flash Programming Tool Report Error!!!
echo.
echo Do you want to try again? 
echo.
echo (Choose "N" to terminate BIOS update process can cause system fail to boot.)
echo.
if "%WinOS%"=="WinXP" ( Choice_XP.com /c:ny ) else ( choice /c:ny )
if errorlevel 2 goto step2
if errorlevel 1 goto bottom
goto step2

:RestoreMACSSID
Rem *
Rem *  Restore GBE MAC address and SSID before reboot to prevent OS get wrong NIC SSID. 
Rem *
 
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==x86   EEUPDATEW32 /NIC=1 /A MAC.txt /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==x86   EEUPDATEW32 /NIC=1 /ww 0x0B %SysSSID% /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==AMD64 EEUPDATEW64e /NIC=1 /A MAC.txt /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==AMD64 EEUPDATEW64e /NIC=1 /ww 0x0B %SysSSID% /CALCCHKSUM

echo STEP2 > step2.flg
cls
echo.
echo Step2 is completed.
echo.
echo After system reboot, please run update.bat again.
echo.

rem *
rem *  Remark 'pause' to make BIOS update process continue automatically.
rem *

rem echo Press any key to reboot the system....
rem echo.
rem pausse

if "%WinOS%"=="Win8" bootmode.hta
shutdown -r -t 00
pause

:step3
if exist step3.flg goto end
cls

rem *
rem *  WinUAC cannnot be disabled completely under Win8 by User. Need user to run CMD as Administrator manually.
rem *

if "%WinUAC%"=="ON" if "%WinOS%"=="Win8" (
GOFPTW.HTA
goto Bottom
)

echo.
echo Step 3. Restore BIOS information ....
echo.
pause
REM *  
REM *  Check if Product Name is empty. If empty, use backuped BIOS Information.
REM *  

LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Product Name'"  -i:TEXTLINE -q:ON > Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON > ProdName.txt
find "HP" Prodname.txt > NUL
if errorlevel 1 copy BIOS.bak BIOS.txt /y

REM *  
REM *  Check if UUID is empty. If empty, use backuped BIOS Information.
REM *  

find "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" BIOS.txt > NUL
if errorlevel 1 goto CheckMAC
if errorlevel 0 copy BIOS.bak BIOS.txt /y

REM *  
REM *  If not exist BIOS.txt, use backuped BIOS Information.
REM *  

if not exist BIOS.txt copy BIOS.bak BIOS.txt

:CheckMAC
Rem *
Rem *  Check if MAC address is default. If is default, use backuped MAC address.
Rem *

if exist MAC.txt ( find "888888888788" MAC.txt > NUL ) else goto RestoreStart
if errorlevel 1 goto RestoreStart
if errorlevel 0 copy MAC.bak MAC.txt /y

Rem *
Rem *  If not exist MAC.txt, use backuped MAC address.
Rem *

if not exist MAC.txt copy MAC.bak MAC.txt

:RestoreStart
Rem *
Rem *  Parse BIOS.txt to get necessary system information only.
Rem *

call biospars.bat > BIOS2.txt

Rem *
Rem *  Check if Product Name is still empty. If empty, use Default BIOS Information.
Rem *

LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Product Name'"  -i:TEXTLINE -q:ON > Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON > ProdName.txt

find "HP" Prodname.txt > NUL
if errorlevel 1 (
echo English> BIOS2.txt
echo Product Name>> BIOS2.txt
echo %ProductName%>> BIOS2.txt
echo SKU Number>> BIOS2.txt
echo 	123456#ABA>> BIOS2.txt
echo Serial Number>> BIOS2.txt
echo 	ABC1234567>> BIOS2.txt
echo System Board CT>> BIOS2.txt
echo 	CCAAAARRSSWWXX>> BIOS2.txt
echo Product Family>> BIOS2.txt
echo %ProductFamily%>> BIOS2.txt
)

if not exist BIOS2.bak copy BIOS2.txt BIOS2.bak /y

Rem *
Rem *  Update project specific PCID (System configuration ID) 
Rem *

if "%AskNFC%"=="Yes" goto AskNFC

Rem *
Rem *  If not ask NFC support, use default PCID.
Rem *

echo English>PCID.txt
echo Manufacture>>PCID.txt
echo 	Hewlett-Packard>>PCID.txt
echo PCID>>PCID.txt
echo %PCID%>>PCID.txt
echo System Configuration ID>>PCID.txt
echo %PCID%>>PCID.txt

goto BCUStart

:AskNFC
cls
echo.
echo ========== System with NFC module or not ========== 
echo.
echo NFC Support?(Y/N)
echo. 

if "%WinOS%"=="WinXP" ( Choice_XP.com /c:yn ) else ( choice /c:yn )

if errorlevel 2 ( 

Rem *
Rem *  If no NFC support, use NONFCPCID.
Rem *

echo English>PCID.txt
echo Manufacture>>PCID.txt
echo 	Hewlett-Packard>>PCID.txt
echo PCID>>PCID.txt
echo %NONFCPCID%>>PCID.txt
echo System Configuration ID>>PCID.txt
echo %NONFCPCID%>>PCID.txt

) else (

Rem *
Rem *  If NFC support, use default PCID.
Rem *

echo English>PCID.txt
echo Manufacture>>PCID.txt
echo 	Hewlett-Packard>>PCID.txt
echo PCID>>PCID.txt
echo %PCID%>>PCID.txt
echo System Configuration ID>>PCID.txt
echo %PCID%>>PCID.txt
)
goto BCUStart

:BCUStart
Rem *
Rem *  Restore System information, Intel NIC SSID and MAC address.
Rem *

if %PROCESSOR_ARCHITECTURE%==x86 (
BiosConfigUtility /SetConfig:"PCID.TXT"
BiosConfigUtility /SetConfig:"BIOS2.TXT"
) else (
BiosConfigUtility64 /SetConfig:"PCID.TXT"
BiosConfigUtility64 /SetConfig:"BIOS2.TXT"
)

if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==x86   EEUPDATEW32 /NIC=1 /A MAC.txt /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==AMD64 EEUPDATEW64e /NIC=1 /A MAC.txt /CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==x86   EEUPDATEW32 /NIC=1 /ww 0x0B %SysSSID%/CALCCHKSUM
if "%NICController%"=="Intel" if %PROCESSOR_ARCHITECTURE%==AMD64 EEUPDATEW64e /NIC=1 /ww 0x0B %SysSSID% /CALCCHKSUM

cls
echo.
echo ========== Set Manufacture Production Mode (MPM) ON/OFF ========== 
echo Set Manufacture Production Mode (MPM) OFF?(Y/N)
echo. 
if "%WinOS%"=="WinXP" ( Choice_XP.com /c:ny ) else ( choice /c:ny )
if errorlevel 2 if %PROCESSOR_ARCHITECTURE%==x86 BiosConfigUtility /SetConfig:"MPMLock.TXT"
if errorlevel 2 if %PROCESSOR_ARCHITECTURE%==AMD64 BiosConfigUtility64 /SetConfig:"MPMLock.TXT"
echo STEP3 > step3.flg
cls
echo Restore BIOS information done.
echo.
echo.

if "%Commit%"=="Yes" ( call MECommit.bat ) else ( goto Clsmnf )
goto bottom

:Clsmnf
if %PROCESSOR_ARCHITECTURE%==x86 (
call clsmnf.bat
fptw /greset
) else (
call clsmnf64.bat
fptw64 /greset
)
shutdown -r -t 00
goto bottom

:endcom1
del *.flg
del *.log
del BIOS.txt
shutdown -s -t 00
pause

:noBIOSBinary
cls
echo.
echo BIOS binary file %BIOSBin% not exist!!!
echo.
echo Please check if %BIOSBin% file exist in C:\FPTW folder.
echo.
echo BIOS Update Terminated...
echo.
pause
goto UpdateTerminate
 
:MeInfoError
InstallIMEI.hta
goto UpdateTerminate

:TurnUACOff
TurnUACOff.hta
goto UpdateTerminate

:UpdateTerminate     
del *.flg
del *.log
del *.dat
del BIOS.txt
del MAC.txt
del WLAN.txt
del "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\autoupd.bat"
del "%HOMEPATH%\Start Menu\Programs\Startup\autoupd.bat"
cls
goto bottom

:end
del *.flg
del *.log
del *.dat
del WLAN.txt
del "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\autoupd.bat"
del "%HOMEPATH%\Start Menu\Programs\Startup\autoupd.bat"
cls
echo.
echo    ################################################################
echo.
echo    BIOS is successfully updated and this system is ME committed.
echo.
echo    ################################################################
echo.
echo.
echo.
echo.

:endcom
pause

:bottom
