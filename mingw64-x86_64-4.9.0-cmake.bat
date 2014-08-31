@echo off

set PATH=C:\dev\mingw-w64\x86_64-4.9.0-posix-seh-rt_v3-rev2\mingw64\bin;%PATH%

rem boost stuff
set BOOST_INCLUDEDIR=C:\dev\deps\x86_64-4.9.0-posix-seh-rt_v3-rev2\boost_1_56_0
set BOOST_LIBRARYDIR=C:\dev\deps\x86_64-4.9.0-posix-seh-rt_v3-rev2\boost_1_56_0\stage\lib

"C:\Program Files (x86)\CMake\bin\cmake-gui.exe"