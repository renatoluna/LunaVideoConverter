mkdir mp4
for i in *.mkv; do
    ffmpeg -i "$i" -vcodec copy -acodec copy -metadata show="The Office" "mp4/${i//\.mkv/.mp4}"
done
