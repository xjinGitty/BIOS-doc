@echo off
Find "Notebook Model" bios.txt > NUL
if errorlevel 1 goto NEW

echo 1 > Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON
rem LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Notebook Model'"  -i:TEXTLINE -q:ON >> Getlines.txt
echo Product Name
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Notebook Model'"  -i:TEXTLINE -q:ON > Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON

rem LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Product Number'"  -i:TEXTLINE -q:ON >> Getlines.txt
echo SKU Number
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Product Number'"  -i:TEXTLINE -q:ON > Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON

REM LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'PCID'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'PCID'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Serial Number'"  -i:TEXTLINE -q:ON > Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Serial Number'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'System Board CT'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'System Board CT'"  -i:TEXTLINE -q:ON >> Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON

rem LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Product Line Family'"  -i:TEXTLINE -q:ON >> Getlines.txt
echo Product Family
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Product Line Family'"  -i:TEXTLINE -q:ON > Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON

REM LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Manufacturing Programming Mode'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Manufacturing Programming Mode'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT ADD(IN_ROW_NUMBER(),2) FROM BIOS.txt WHERE Text = 'Manufacturing Programming Mode'"  -i:TEXTLINE -q:ON >> Getlines.txt
goto END

:NEW
echo 1 > Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Product Name'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Product Name'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'SKU Number'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'SKU Number'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'System Configuration ID'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'System Configuration ID'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Serial Number'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Serial Number'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'System Board CT'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'System Board CT'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Product Family'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Product Family'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT IN_ROW_NUMBER() FROM BIOS.txt WHERE Text = 'Manufacturing Programming Mode'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM BIOS.txt WHERE Text = 'Manufacturing Programming Mode'"  -i:TEXTLINE -q:ON >> Getlines.txt
REM LogParser "SELECT ADD(IN_ROW_NUMBER(),2) FROM BIOS.txt WHERE Text = 'Manufacturing Programming Mode'"  -i:TEXTLINE -q:ON >> Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM BIOS.txt WHERE Index = %%i" -i:TEXTLINE -q:ON
goto END


:END