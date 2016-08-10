#this is a script that counts the number of files in the folder timelapse below it, then takes a webcam image, gives it a name with an index number one higher than the number of files in the folder, then saves it in the folder.
#made by dylan rees for citizen science lab purposes (probably for a time lapse station)
#to use it you'll need the streamer program installed and a webcam plugged in
#this is public domain

declare -i count=0
count=$(ls ./timelapse | wc -w)
streamer -c /dev/video0 -b 16 -o ./timelapse/picture$count.jpeg
echo picture$count.jpeg
