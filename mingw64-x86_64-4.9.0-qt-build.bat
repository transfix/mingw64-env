@echo off

set DEPS=C:\dev\deps\x86_64-4.9.0-posix-seh-rt_v3-rev2
set INCLUDE=%DEPS%\libpng-1.6.12;%DEPS%\openssl-1.0.1h\include
set LIB=%DEPS%\libpng-1.6.12\.libs;%DEPS%\openssl-1.0.1h

configure.bat -release -opensource -confirm-license -static -make libs -no-sql-sqlite -no-opengl -system-zlib -qt-pcre -no-icu -no-gif -system-libpng -no-libjpeg -no-freetype -no-angle -no-vcproj -openssl -no-dbus -no-audio-backend -no-wmf-backend -no-qml-debug
mingw32-make
