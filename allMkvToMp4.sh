mkdir mp4
for i in *.mkv; do
    ffmpeg -i "$i" -vcodec copy -acodec copy -metadata "mp4/${i//\.mkv/.mp4}"
done
