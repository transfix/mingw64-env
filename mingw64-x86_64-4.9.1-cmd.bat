@echo off

set COMPILER=x86_64-4.9.1-posix-seh-rt_v3-rev0
set DEPS=C:\dev\deps\%COMPILER%
set PATH=C:\dev\mingw-w64\%COMPILER%\mingw64\bin;%DEPS%\qtbase-opensource-src-5.3.1\bin;%PATH%
set QTDIR=%DEPS%\qtbase-opensource-src-5.3.1
cmd.exe
