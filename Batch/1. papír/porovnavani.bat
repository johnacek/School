@echo off
set /p input1="1. číslo: "
set /p input2="2. číslo: "

if %input1% lss %input2% (
    echo 1. číslo je menší
) else if %input1% gtr %input2% (
    echo 2. číslo je větší
) else if %input1% equ %input2% (
    echo Čísla jsou si rovny
)
pause