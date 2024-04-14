
tt:
	gource -1280x720 --seconds-per-day 1 -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4

tt06:
	gource -1280x720 --seconds-per-day 1

sar:
	cd ../ip/sun_sar9b_sky130nm; gource -1280x720 --seconds-per-day 0.1
