@echo off
cls
echo.
echo Battery Health Reporter Version 1
echo.
echo This Program Report Battery Health
echo.
echo By Ali Amrollahi
echo.
pause
echo.
echo Starting Report. Please Wait...
echo.
powercfg /batteryreport /output "C:\battery_report.html"
echo.
echo Reporting Done!
echo. 
set /p choice=Do You Want To Open The File? Automatically Confirm (Y) In 10 Seconds [Y=Yes Or N=No]:
echo.
if "%choice%"=="y" (
start "" "C:\battery_report.html" 
) else if "%choice%"=="n" (
explorer.exe /select,"C:\battery_report.html"
) else (
echo Invalid Input. Restart Program And Please Enter "Y" Or "N".
)
echo.
echo Thanks For Use. Exiting...
echo.
pause
