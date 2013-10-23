cls
@echo off
If "%~2"=="" goto blank
If "%~1"=="" goto blank
If /i "%~3" NEQ "" goto toomuch
set ext1=%1
set ext2=%2
if not exist *.%ext1% goto exist

for %%a in (*.%ext1%) do call :rename %%a
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
:rename
ren *.%ext1% *.%ext2%

