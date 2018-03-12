#!/bin/sh

#install the motion package
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install motion -y
sudo modprobe bcm2835-v4l2
v4l2-ctl -V

wait 2
#Amend /etc/motion/motion.conf file
cp /etc/motion/motion.conf /tmp/motion.conf.backup


wait 2
#start the motion deamon


wait 2
#create directory to store the feed
mkdir /home/pi/Monitor
sudo chgrp motion /home/pi/Monitor
chmod g+rw /home/pi/Monitor

wait 5

#start the service
sudo service motion start

echo Access the feed at  http://raspberrypi:8081/
