#this shellscript combines your images into a gif
#in order to get the software you need to run this script on Raspbian, run:

#1.) sudo apt-get install imagemagick
#2.) make sure this script is in the same folder as capture.sh and the "timelapse" folder

#you can run this script manually or do it as a cronjob if you want

convert ./timelapse/*.jpeg  -set delay 10 output.gif

#for explanation on how to modify this to suit your own needs, to go http://gotofritz.net/blog/geekery/combining-images-imagemagick/
