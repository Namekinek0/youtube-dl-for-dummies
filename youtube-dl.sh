#!/bin/bash/

echo "Searching for youtube-dl"
echo
current_dir=$(pwd)
#search for youtube-dl
search_for_youtubedl=$(ls | grep youtube-dl.exe )
if [ -z $search_for_youtubedl ]
then
	echo "It seems that you don't have youtube-dl inside this folder"
	echo 
	echo "Youtube-dl is the program that actually download videos"
	echo "this is only a script to use it"
	echo "Do you want to download youtube-dl? (y/n)"
	read varyoutubedl
	echo 
	if [ $varyoutubedl = y ] || [ $varyoutubedl = Y ]
	then
		echo "A web page will open, download youtube-dl.exe and put it in the same folder of this file"
		echo "https://youtube-dl.org/latest"
		echo "Once you finished, press the Enter button to close this script, and relaunch start-youtube-dl"
		read 
		exit
	elif [ $varyoutubedl = n ] || [ $varyoutubedl = N ]
	then
		echo "If you don't download youtube-dl, this script cannot work"
		echo "Therefore, type 'y' next time"
		echo "Press the Enter button to continue"
		read
		exit
	else
		echo "Invalid answer: just write 'y' for yes or 'n' for no"
		echo "Press the Enter button to continue"
		read
		exit
	fi
else
	echo "You've got youtube-dl!"
fi 

#here it goes
echo
echo "Copy and paste a link now"
echo "If possible, use the right click of the mouse and 'Paste,' otherwise you could screw the script"
echo "Be careful of the link being correct, otherwise script won't work"
read varlink
echo
echo "Do you want to use options? if yes, type them now, if not simply press Enter button"
echo "Remember that if you do not use options, the script will simply downloads the best quality video format inside this folder"
read varoptions
$current_dir/youtube-dl.exe -U
$current_dir/youtube-dl.exe $varoptions $varlink
echo "Press the Enter button to continue"
read 
