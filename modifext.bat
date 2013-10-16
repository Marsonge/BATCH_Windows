@echo off
cls
set y=%random%
set w=100
set /a x=%y%%%w%
set /a nbCoups=10
echo Bonjour ! Bienvenue pour une nouvelle partie !
:10
if /i %nbCoups% LEQ 0 goto :40 
::On verifie qu'il reste suffisamment de coups, ou on perd
echo Veuillez entrer votre essai. Vous avez %nbCoups% essais restants.
set essai=0
set /p essai=Essai : 
if /i %essai% EQU %x% goto 30
if /i %essai% EQU %x% goto 20
:20
set /a nbCoups-=1
if /i %x% GTR %essai% echo Trop petit ! & goto 10
if /i %x% LSS %essai% echo Trop grand ! & goto 10
:30
echo Gagne !!
goto 50
:40
echo Perdu !!
:50
Pause