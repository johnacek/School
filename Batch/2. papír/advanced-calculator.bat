@echo off
chcp 65001
color a
:Start
cls
echo ###################################################################
echo:
echo 1. Sčítání
echo 2. Odčítání
echo 3. Násobení
echo 4. Dělení
echo 5. Umocnění
echo:
echo ###################################################################
echo:
echo 6. Vypnout kalkulačku
echo:
set /p method="Vyber možnost: "

if "%method%"=="1" goto Scitani
if "%method%"=="2" goto Odcitani
if "%method%"=="3" goto Nasobeni
if "%method%"=="4" goto Deleni
if "%method%"=="5" goto Umocneni
if "%method%"=="5" goto Vypnout
if "%method%"=="" goto Vypnout

:Vypnout
exit

:Scitani
cls
echo Pro součet zadaných čísel napiš konec
echo -------------------------------------
set "input="
:zacatek
set /p input=Zadejte číslo:
if "%input%"=="konec" goto konec
set /a sum=%sum% + %input%
goto zacatek
:konec
echo Součet je %sum%
goto End

:Odcitani
cls
echo Pro rozdíl zadaných čísel napiš konec
echo -------------------------------------
set "sum2=0"
set "input2=0"
set /p sum2=Zadejte první číslo:
:zacatek2
set /p input2=Zadejte číslo:
if "%input2%"=="konec" goto konec2
set /a sum2=%sum2% - %input2%
goto zacatek2
:konec2
echo Rozdíl je je %sum2%
goto End

:Nasobeni
cls
echo Pro součin zadaných čísel napiš konec
echo -------------------------------------
set "input3="
set "sum3=1"
:zacatek3
set /p input3=Zadejte číslo:
if "%input3%"=="konec" goto konec3
set /a sum3=%sum3% * %input3%
goto zacatek3
:konec3
echo Součin je %sum3%
goto End

:Deleni
cls
echo Pro podíl zadaných čísel napiš konec
echo -------------------------------------
set "sum4=0"
set "input4=0"
set /p sum4=Zadejte první číslo:
:zacatek4
set /p input4=Zadejte číslo:
if "%input4%"=="konec" goto konec4
set /a sum4=%sum4% / %input4%
goto zacatek4
:konec4
echo Podíl je je %sum4%
goto End

:Umocneni
cls
echo Pro mocninu čísel zadej základ a exponent
echo -----------------------------------------
set /p base=Zadejte základ mocniny:
set /p exponent=Zadejte exponent mocniny:
set /a sum5=1
for /l %%x in (1, 1, %exponent%) do set /a sum5*=%base%
echo Mocnina základu %base% a exponentu %exponent% je %sum5%
goto End

:End
echo:
set /p end=Chces kalkulacku pouzit znovu? Napis a, jinak jakoukoliv klavesou vypni.
if %end% == a (
    goto Start
) else (
    exit
)

pause