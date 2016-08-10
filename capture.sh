#this script does the actual capturing of images
#to use it you'll need the "streamer" program installed and a webcam plugged in
#you'll probably also want to set up a cronjob that runs this script

declare -i count=0
count=$(ls ./timelapse | wc -w)
streamer -c /dev/video0 -b 16 -o ./timelapse/picture$count.jpeg
echo picture$count.jpeg
