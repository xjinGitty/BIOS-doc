@echo off
if errorlevel 2 if %PROCESSOR_ARCHITECTURE%==x86 BiosConfigUtility /SetConfig:"MPMLock.TXT"
if errorlevel 2 if %PROCESSOR_ARCHITECTURE%==AMD64 BiosConfigUtility64 /SetConfig:"MPMLock.TXT"
