@echo off

setlocal enabledelayedexpansion

set /a hours=12-%time:~0,2%
set /a minutes=00-%time:~3,2%

if %hours% LEQ 0 (
  set /a hours=24+%hours%
)

if %minutes% LEQ 0 (
  set /a minutes=60+%minutes%
  set /a hours=%hours%-1
)

echo %hours% hodin %minutes% minut do 12:00.

pause