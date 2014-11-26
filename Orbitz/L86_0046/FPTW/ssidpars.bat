@echo off
:NEW
echo 1 > Getlines.txt
LogParser "SELECT IN_ROW_NUMBER() FROM %1 WHERE Text = 'System Board ID'"  -i:TEXTLINE -q:ON >> Getlines.txt
LogParser "SELECT ADD(IN_ROW_NUMBER(),1) FROM %1 WHERE Text = 'System Board ID'"  -i:TEXTLINE -q:ON >> Getlines.txt
FOR /F "usebackq" %%i in (Getlines.txt) DO LogParser "SELECT TEXT FROM %1 WHERE Index = %%i" -i:TEXTLINE -q:ON
goto END

:END