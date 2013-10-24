@echo off
If "%~2"=="" goto blank
If "%~1"=="" goto blank
If /i "%~3" NEQ "" goto toomuch
set i=1
set y=%1
set x=%2
if not exist *.%x% goto exist
for %%a in (*.%x%) do call :balise %%a
goto :eof
:blank
echo Erreur ! Il vous manque un parametre !
pause
goto :eof
:toomuch
echo Erreur ! Il y a trop de parametres !
pause
goto :eof
:exist
echo Erreur ! Il n'y a pas de fichier de cette extension !
pause
goto :eof
:balise
set b=%~n1
ren %b%.%x% %y%%i%.%x%
set /a i=%i%+1
pause
