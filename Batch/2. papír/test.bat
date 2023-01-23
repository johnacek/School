@echo off
set /a result=1

:loop
set /p num=Enter a number to divide by: 
set /a result=result / %num%
echo Result: %result%
set /p continue=Do you want to enter another number? (y/n)
if /i "%continue%"=="y" goto loop
echo Final result: %result%
pause