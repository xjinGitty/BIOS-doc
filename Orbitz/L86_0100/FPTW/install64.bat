@ECHO OFF
REM Copyright Intel Corporation 2004
REM Version 1.0
REM Function summary: 
REM    This batch file helps install the driver needed for the tools to run
REM ------------------------------------------------------------------

REM Check if a iqvw64e.sys already exists in the install directory that
REM the installation will get the file.
if exist .\iqvw64e.sys GOTO instfileexists
ECHO ivwv64e.sys file not found in installation directory.
ECHO Please make sure that iqvw64e.sys exists in the same
ECHO directory as install.bat
GOTO exit

:instfileexists
REM Check if a iqvw64e.sys already exists in the Windows install directory
echo Welcome to the Tools driver installation program.
echo After installation of the driver (iqvw64e.sys), the tool can be invoked.
echo -----------------------------------------------------------------------
echo Checking to see if iqvw64e.sys exists on system
if exist %systemroot%\system32\drivers\iqvw64e.sys GOTO chkexten 
GOTO clninst

:chkexten
REM Check to see if /y extension is enabled
if "%1" == "/y" GOTO extenbl 
GOTO options

:extenbl
echo /y extension is enabled!
GOTO copysys

:options
REM iqvw64e.sys file existence has been confirmed
REM Time to tell the user the options
echo ----------------------------------------------------------------------
echo An iqvw64e.sys file is already present on your system.
echo By overwriting this file (it exists in %systemroot%\system32\drivers)
echo there is a potential of blue-screens in PROSet and/or other tools
echo that already EXIST on the system.
echo *  If PROSet is installed, please uninstall PROSet and perform
echo    this setup again.  Please note, by re-installing PROSet later on,
echo    PROSet could render this tool useless and will require
echo    running install.bat again to make the tool work.
echo *  If PROSet not installed, this file could be used by another
echo    corresponding tool.  This may cause a blue-screen or failure in
echo    existing tools using the old iqvw64e.sys file, so you may want to 
echo    rename the file for backup reasons.  If you want to overwrite
echo    iqvw64e.sys, please re-run the installation with a /y extension
echo    (install.bat /y).
echo ----------------------------------------------------------------------
echo.
goto exit 

:clninst
REM This path is taken when an iqvw64e.sys file does not exist on the system
echo No existing iqvw64e.sys file exists
GOTO copysys

:copysys
REM This copies the file whether or not something exist.
echo Copying iqvw64e.sys file to %systemroot%\system32\drivers
copy iqvw64e.sys %systemroot%\system32\drivers /y
echo Installation done!  You can now invoke the tool.  To exit,
GOTO end

:exit
REM Exit point for a aborted install 
cls
echo Aborting installation because driver already exists. Run install /y to override!  
echo To Exit, 
:end 
rem PAUSE
