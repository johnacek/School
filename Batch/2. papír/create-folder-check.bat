::Admin perms needed
@echo off
color a
echo Zadejte cestu, kde chcete adresar vytvorit.
echo Pr. C:/Users/pepa/Documents
echo:
set /p folder=
echo:
echo Zadejte nazev slozky.
echo:
set /p foldername=
if exist %folder%/%foldername%/ (
  echo Tato slozka jiz existuje.
  goto End
) else (
  cd C:\
  cd %folder%
  mkdir %foldername%
)
:End
pause