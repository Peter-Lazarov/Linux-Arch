#!/bin/bash

#// to check window parameters
#//---------------------

#wmctrl -lG
#wmctrl -lG | grep 'window_title'


#// Another way
#//---------------------

# sudo pacman -S xorg-xwininfo
# xwininfo

xdg-open /home/peter/Documents/
sleep 1s
wmctrl -r 'Documents' -e 0,28,0,799,571

xdg-open /home/peter/Documents/_JavaScript/
sleep 1s
wmctrl -r '_JavaScript' -e 0,801,28,799,571

xdg-open /home/peter/Downloads/
sleep 1s
wmctrl -r 'Downloads' -e 0,0,628,799,540

#xdg-open /home/peter/Downloads/
#sleep 1s
#wmctrl -r 'Downloads' -e 0,801,628,799,540


# with Variables
MONITOR=1600
POSITION_LEFT=0
POSITION_RIGHT=800

HORIZONTAL_LEFT=$((MONITOR + POSITION_LEFT))
HORIZONTAL_RIGHT=$((MONITOR + POSITION_RIGHT))

xdg-open '/home/peter/Documents/_JavaScript/Udemy - microservices/09-library-shared/'
sleep 1s
wmctrl -r '09-library-shared' -e 0,$HORIZONTAL_RIGHT,28,799,571

xdg-open '/home/peter/Documents/Nodejs-Reacjs-Microservices/microservices/'
sleep 1s
wmctrl -r 'microservices — Dolphin' -e 0,$HORIZONTAL_RIGHT,628,799,540

xdg-open '/home/peter/Documents/Nodejs-Reacjs-Microservices/'
sleep 1s
wmctrl -r 'Nodejs-Reacjs-Microservices — Dolphin' -e 0,$HORIZONTAL_LEFT,628,799,540

wmctrl -r 'microservices - Visual Studio Code' -e 0,65,126,1453,937
