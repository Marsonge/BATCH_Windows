cls
@echo off

set ext1=%1
set ext2=%2

for %%a in (*.%ext1%) do call :rename %%a
:rename
ren *.%ext1% *.%ext2%
