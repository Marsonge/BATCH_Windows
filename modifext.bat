@echo off
set i=0
set y=%1
set x=%2
for %%a in (*.%x%) do call :balise %%a
:balise
set b=%~n1
ren %b%.%x% %y%%i%.%x%
set /a i=%i%+1
pause