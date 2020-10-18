:begin
@echo off
set currentdir="%~dp0"
if exist "C:\msys64\msys2.exe" (
	echo You've got Msys2!
	goto actualprogram
)	else	(
	goto checkmsysdownload	
)

:checkmsysdownload
set /P _downloadmsys= It seems you don't have Msys2. Do you want to download it? (y/n)
if "%_downloadmsys%"=="y" (
	echo A web page will open. Simply install the program in the default directory.
	echo Once you finished, reopen this file.
	pause
	start "" https://www.msys2.org/#installation
	exit
)
if "%_downloadmsys%"=="n" (
	echo This script needs msys2 to run. This script will be closed.
	pause
	exit
)
if not "%_downloadmsys%"=="y" if not "%_downloadmsys%"=="n" set usercantread=true
if "%usercantread%"=="true" (
	echo Invalid input. You must type 'y' for yes or 'n' for no.
	pause
	set usercantread=false
	goto checkmsysdownload
)
:actualprogram
echo The main script will now start.
C:\\msys64\\msys2_shell.cmd -where %currentdir% youtube-dl.sh
:end