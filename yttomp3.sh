#!/bin/bash
# Please see the README file. 
# You need youtube-dl and ffmpeg. In a nutshell:
# Paste a YT link and the script will:
# 1. Download an audio file (or files, if a playlist) (*.m4a)
# 2. Convert the *.m4a file to *.mp3
# 3. Delete the *m4a file(s)
# (c) voider755. MIT License
read -p "Enter YT link: " ytlink
youtube-dl -f 140 "$ytlink" &&
for a in *.m4a
do
	ffmpeg -i "$a" "$a.mp3"
done &&
rm *.m4a
