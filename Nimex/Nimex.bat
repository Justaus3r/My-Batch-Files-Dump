@echo off

REM NIMRUN,my personal nimrunner
REM Licensed under General public license version 3(GPLv3)  

setlocal enabledelayedexpansion
set FILENAME=%1
if [%1]==[] goto help 
goto execprog
:help
echo Nimex:
echo       A simple batch scipt to run nim programs like a script
echo Usage:
echo       Nimex yourprog.nim
goto _exitapp
:execprog
for /f "tokens=1 delims=." %%a in ("%FILENAME%") do (
  set EXECNAME=%%a
  )  
nim compile %FILENAME% >nul 2>&1
cls
call "%EXECNAME%.exe"
del "%EXECNAME%.exe"
endlocal
:_exitapp