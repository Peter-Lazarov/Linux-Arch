#!/bin/bash
xdg-open /home/peter/Documents/
sleep 1s
wmctrl -r 'Documents' -e 0,0,0,800,600

xdg-open /home/peter/Documents/_JavaScript/
sleep 1s
wmctrl -r '_JavaScript' -e 0,800,0,800,600

xdg-open /home/peter/Downloads/
sleep 1s
wmctrl -r 'Downloads' -e 0,0,600,800,600

#xdg-open /home/peter/Downloads/
#sleep 1s
#wmctrl -r 'Downloads' -e 0,800,600,800,600
