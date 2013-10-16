cls
@echo off

cd C:\Documents and Settings\etu\Mes documents\tp4

set ext1=%1
set ext2=%2

for %%a in (*.%ext1%) do call :rename %%a
:rename
ren *.%ext1% *.%ext2%
