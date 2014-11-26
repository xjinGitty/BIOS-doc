@echo off
rem *  
rem * Set suggest update method for the version of BIOS
rem *

Set UpdateMethod=FPTW

if %UpdateMethod%==FPTW goto FPTW
if %UpdateMethod%==HPBIOSUPDREC goto HPBIOSUPDREC
goto HPBIOSUPDREC

:FPTW
cd FPTW
Update.bat

:HPBIOSUPDREC
cd HPBIOSUPDREC
HPBIOSUPDREC.exe
