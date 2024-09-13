@REM run as Administrator
@echo off

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe
set BIN2HEADER_DIR=%USERPROFILE%\Downloads\bin2header_0.3.1_win64
set BIN2HEADER_EXE=%BIN2HEADER_DIR%\bin2header.exe

if not exist %BIN2HEADER_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/AntumDeluge/bin2header/releases/download/v0.3.1/bin2header_0.3.1_win64.zip" -L -O  &&^
%SEVENZIP% x bin2header_0.3.1_win64.zip -o"%BIN2HEADER_DIR%"  &&^
del bin2header_0.3.1_win64.zip
)

if exist %BIN2HEADER_EXE% (
    echo %BIN2HEADER_EXE%  found
)

pause
