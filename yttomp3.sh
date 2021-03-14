read -p "Enter YT link: " ytlink
youtube-dl -f 140 "$ytlink" &&
for a in *.m4a
do
	ffmpeg -i "$a" "$a.mp3"
done &&
rm *.m4a
