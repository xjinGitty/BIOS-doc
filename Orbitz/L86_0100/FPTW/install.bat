@echo OFF
cls

rem Copyright Intel Corporation 2006-2012
rem Version 2.0
rem Function summary:
rem This batch file helps install the driver needed for the tools to run
rem ------------------------------------------------------------------
rem The following two lines will need to match the target system
set sysfilename=iqvw32.sys
set systemtype=x86

echo off
rem Check if that the driver is correct for this system
set PROCESSOR_IDENTIFIER | find /i "%systemtype%"
if not errorlevel 1 goto correctsystem
echo This is the wrong driver for this system
echo Driver type %systemtype%
echo System type:
set PROCESSOR_IDENTIFIER
goto exit


:correctsystem
rem Check if %sysfilename% already exists in the install directory
if exist .\%sysfilename% goto instfileexists
echo %sysfilename% file not found in the installation directory.
echo Please make sure that %sysfilename% exists in the same
echo directory as install.bat
goto exit

:instfileexists
rem Check if a %sysfilename% already exists in the Windows install directory
if exist %systemroot%\system32\drivers\%sysfilename% goto chkexten
goto copysys

:chkexten
rem Check to see if /y extension is enabled
if "%1" == "/y" goto copysys
goto options


:options
rem %sysfilename% file existence has been confirmed
rem Time to tell the user the options
echo ----------------------------------------------------------------------
echo An %sysfilename% file is already present on your system.
echo By overwriting this file (it exists in %systemroot%\system32\drivers)
echo there is a potential of blue-screens in PROSet and/or other tools
echo that already EXIST on the system.
echo *  If PROSet is installed, please uninstall PROSet and perform
echo    this setup again.  Please note, by re-installing PROSet later on,
echo    PROSet could render this tool useless and will require
echo    running install.bat again to make the tool work.
echo *  If PROSet not installed, this file could be used by another
echo    corresponding tool.  This may cause a blue-screen or failure in
echo    existing tools using the old %sysfilename% file, so you may want to
echo    rename the file for backup reasons.  If you want to overwrite
echo    %sysfilename%, please re-run the installation with a /y extension
echo    (install.bat /y).
echo ----------------------------------------------------------------------
echo.
goto exit


:copysys
rem This copies the file whether or not something exist.
echo ----------------------------------------------------------------------
echo Welcome to the Tools driver installation program.
echo After installation of the driver (%sysfilename%), the tool can be invoked.
echo Copying %sysfilename% file to %systemroot%\system32\drivers\.
copy %sysfilename% %systemroot%\system32\drivers\. /y

echo ----------------------------------------------------------------------
echo Installation done! You can now invoke the tool.
goto exit

:exists
rem Exit point for a aborted install
echo Aborting installation because driver already exists. Run install /y to override!
echo To Exit,
:exit
rem pause
