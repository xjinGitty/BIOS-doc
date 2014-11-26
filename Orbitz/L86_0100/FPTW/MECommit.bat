@echo off
:Commit
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

cls
if "%SKUCheck%"=="Entry" goto vproff
echo.
echo STEP4
echo ========== Set Vpro ON/OFF ========== 
echo Commit VPRO ON?(Y/N)
echo. 
echo If yes, this system will commit as VPRO ON/OFF based on whether or not the WLAN card supports AMT.
echo.
echo If no,  this system will commit as VPRO OFF.
if "%WinOS%"=="WinXP" ( Choice_XP.com /c:yn ) else ( choice /c:yn )
if errorlevel 2 goto Vproff
if errorlevel 1 goto Vpron

:Vpron

Rem *
Rem *  Check if WLAN card support VPRO on this platform.  
Rem *
Rem echo ========== Check WLAN Support Vpro ON/OFF ========== 
Rem echo Are you using Intel Puma/Taylor Commit VPRO ON?(Y/N)
Rem echo.
 
IF EXIST WLAN.TXT DEL WLAN.TXT
if %PROCESSOR_ARCHITECTURE%==x86 WLAN_ID > WLAN.TXT
if %PROCESSOR_ARCHITECTURE%==AMD64 WLAN_ID_64 > WLAN.TXT
find "8086:" WLAN.TXT > NUL
if errorlevel 1 goto NOINTEL
if errorlevel 0 goto CHKWLAN

:CHKWLAN
find ":4238" WLAN.TXT > NUL
if errorlevel 1 goto CHKWLAN1
if errorlevel 0 goto Puma

:CHKWLAN1
find ":422b" WLAN.TXT > NUL
if errorlevel 1 goto CHKWLAN2
if errorlevel 0 goto Puma

:CHKWLAN2
find ":0085" WLAN.TXT > NUL
if errorlevel 1 goto CHKWLAN3
if errorlevel 0 goto Taylor

:CHKWLAN3
find ":0887" WLAN.TXT > NUL
if errorlevel 1 goto CHKWLAN4
if errorlevel 0 goto Jackson

:CHKWLAN4
find ":088e" WLAN.TXT > NUL
if errorlevel 1 goto CHKWLAN5
if errorlevel 0 goto Jackson

:CHKWLAN5
find ":0082" WLAN.TXT > NUL
if errorlevel 1 goto CHKWLAN6
if errorlevel 0 goto Taylor

:CHKWLAN6
find ":08b1" WLAN.TXT > NUL
if errorlevel 1 goto NOINTEL
if errorlevel 0 goto WilkinPeak

:Puma
@echo Puma Peak Intel Wi-Fi Link 6300
goto WLANVPRO

:Taylor
@echo Taylor Peak Intel Centrino Advanced-N 6205
goto WLANVPRO

:Jackson
@echo Jackson Peak Intel Wi-Fi
goto WLANVPRO

:WilkinPeak
@echo Wilkins Peak Intel Wi-Fi Link 7260HMW
goto WLANVPRO
  
:WLANVPRO
echo ========== Check UMA or DIS Mode ========== 
echo. 

if %PROCESSOR_ARCHITECTURE%==x86 IsUMA > VGA.log
if %PROCESSOR_ARCHITECTURE%==AMD64 IsUMA_64 > VGA.log
find "UMA" VGA.log > NUL
if errorlevel 1 goto DIS
if errorlevel 0 goto UMA

:NOINTEL
echo.
echo    ##################################################################
echo.
echo    The system will be commit as VPRO OFF.
echo.
echo    It is not an Intel WLAN card or an Intel card without VPRO support.
echo.
echo    ##################################################################
echo.
echo.
echo.
echo.
goto Vproff

:UMA
if "%AskAT%"=="No" goto UMAAToff
echo.
echo ==========   UMA system  ========== 
echo ========== Set AT ON/OFF ========== 
echo Set AT ON?(Y/N)
echo. 
echo If yes, this system will Set AT ON.
echo.
echo If no,  this system will Set AT OFF.
if "%WinOS%"=="WinXP" ( Choice_XP.com /c:yn ) else ( choice /c:yn )
if errorlevel 2 goto UMAAToff
if errorlevel 1 goto UMAATon

:UMAATon
if %PROCESSOR_ARCHITECTURE%==x86 (call VonAT.bat) else call VonAT64.bat
goto VPRO_END

:UMAAToff
if %PROCESSOR_ARCHITECTURE%==x86 (call VonNoAT.bat) else call VonNoAT64.bat
goto VPRO_END

:DIS
if "%AskAT%"=="No" goto DISNoAT
echo.
echo ==========   DIS system  ========== 
echo ========== Set AT ON/OFF ========== 
echo Set AT ON?(Y/N)
echo. 
echo If yes, this system will Set AT ON.
echo.
echo If no,  this system will Set AT OFF.
if "%WinOS%"=="WinXP" ( Choice_XP.com /c:yn ) else ( choice /c:yn )
if errorlevel 2 goto DISNoAT
if errorlevel 1 goto DISAT

:DISAT
if %PROCESSOR_ARCHITECTURE%==x86 (call DisAT.bat) else call DisAT64.bat
goto VPRO_END

:DISNoAT
if "%PROCESSOR_ARCHITECTURE%==x86 (call DISNoAT.bat) else call DISNoAT64.bat
goto VPRO_END

:Vproff
if "%AskAT%"=="No" goto Alloff
echo.
echo STEP4
echo ========== Set Vpro OFF and Set AT ON/OFF ========== 
echo Set AT ON?(Y/N)
echo. 
echo If yes, this system will Set AT ON.
echo.
echo If no,  this system will Set AT OFF.
if "%WinOS%"=="WinXP" ( Choice_XP.com /c:yn ) else ( choice /c:yn )
if errorlevel 2 goto Alloff
if errorlevel 1 goto VoffATon

:VoffATon
if %PROCESSOR_ARCHITECTURE%==x86 (call VoffAT.bat) else call VoffAT64.bat
goto VPRO_END

:Alloff
if %PROCESSOR_ARCHITECTURE%==x86 (call VoffNoAT.bat) else call VoffNoAT64.bat
goto VPRO_END

:VPRO_END
if %PROCESSOR_ARCHITECTURE%==x86 (
call clsmnf.bat
fptw /greset
) else (
call clsmnf64.bat
fptw64 /greset
)
shutdown -r -t 00

