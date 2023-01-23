@echo off
chcp 65001

REM 1. část

color fa
echo Hello world
echo Budiž pozraveni všichni lidé na světě!
echo Dnes je %DATE% a právě je %TIME% hodin.
echo:
echo Ani na internetu neschoval svůj byznys s drogami. Celní správa dopadla devatenáctiletého mladíka z Brna, který obchodoval s psychotropními látkami na tzv. Darknetu. Zejména šlo o MDMA a ketamin z Nizozemska. Za svou krátkou „kariéru“, která trvala od jara do listopadu, obchodoval minimálně se 17 kily drog, které mu prodejem v USA a na Novém Zélandu vynesly zhruba 700 tisíc korun. Hrozí mu 12 let za mřížemi. 
echo:

REM 2. část

set /p first="Vlož 1. text: "
set /p second="Vlož 2. text: "
echo 1. text: %first%
echo 2. text: %second%
echo:

REM Kalulačka (+)

set /p a="Sčítanec: "
set /p b="Sčítanec: "
set /a soucet="%a%+%b%"
echo Součet: %soucet%
echo:

REM Kalkulačka (*)

set /p c="Činitel: "
set /p d="Činitel: "
set /p e="Činitel: "
set /a soucin="%c%*%d%*%e%"
echo Součin: %soucin%
echo:

REM Kalulačka (/)

set /p f="Dělenec: "
set /p g="Delitel: "
set /a podil="%f%/%g%"
echo Podíl: %podil%
echo:

REM Kalkulačka (-)

set /p h="Menšenec: "
set /p i="Menšitel: "
set /a rozdil="%h%-%i%"
echo Rozdíl: %rozdil%
echo:

REM Porovnávání

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