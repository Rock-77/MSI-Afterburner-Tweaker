@echo off
Title MSI Afterburner Tweaker By Roc-k#3397
echo Downloading MSI Afterburner
powershell Invoke-WebRequest "https://www.dropbox.com/s/fgy79agbhaf5em6/MSIAfterburnerSetup.exe?dl=1" -OutFile "C:\msiafterburner.exe" > nul
start /B /wait C:\msiafterburner.exe /S /D=C:\MSIAfterburner > nul
del /q /f "C:\msiafterburner.exe"
start C:\MSIAfterburner\MSIAfterburner.exe > nul
timeout /T 3 /NOBREAK > nul
taskkill /f /im MSIAfterburner.exe > nul
cls
echo Importing settings - Note: You need to add your own Benchmark/On screen display keys
timeout /T 2 /NOBREAK > nul
del /q /f "C:\MSIAfterburner\Profiles\MSIAfterburner.cfg" > nul
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/1045315856395141182/1045587057906561134/MSIAfterburner.cfg" -OutFile "C:\MSIAfterburner\Profiles\MSIAfterburner.cfg" > nul
start C:\MSIAfterburner\MSIAfterburner.exe > nul
exit

