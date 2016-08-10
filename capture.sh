#this shellscript does the actual capturing of images
#in order to set this script up on Raspbian, run:

#1.) sudo apt-get install streamer (command-line capture utility)
#2.) make sure there is a directory called "timelapse" the same folder as this script
#3.) make sure a webcam is plugged in
#4.) set up a cronjob that runs the script (assuming you know how to do that)

#you might want to just try running this script from the command line to make sure everything works

declare -i count=0
count=$(ls ./timelapse | wc -w)
streamer -c /dev/video0 -b 16 -o ./timelapse/picture$count.jpeg
echo picture$count.jpeg
