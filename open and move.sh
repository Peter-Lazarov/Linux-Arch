#!/bin/bash
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



#sudo pacman -S xorg-xwininfo
#xwininfo
