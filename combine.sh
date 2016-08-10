#this shellscript combines your images into a gif
#in order to get the software you need to run this script on Raspbian, run:

#1.) sudo apt-get install imagemagick
#2.) make sure this script is in the same folder as capture.sh and the "timelapse" folder

#you can run this script manually or do it as a cronjob if you want

#command below is filler until i customize it
convert *.png[400x400] -splice 0x10 -background "#ffffff"  -append  -crop -0+10 output.png
#to finish the job, go to the info at http://gotofritz.net/blog/geekery/combining-images-imagemagick/
