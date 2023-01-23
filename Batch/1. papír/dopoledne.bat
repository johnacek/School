@echo off

echo Ted je %TIME%.
echo:

set hour=%time:~0,2%
set /a hour=%hour%

if %hour% LSS 12 (
  echo Je dopoledne.
) else (
  echo Je odpoledne.
)

pause