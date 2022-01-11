#!/bin/bash
#hour="55$(date +'%-I')"
#echo $hour > /home/vega/leds.fifo
#CAM=$(v4l2-ctl --list-devices | grep C920 -A 1 | grep /dev | awk '{$1=$1};1')
#Uncomment the next line to verify it's using the correct device
#echo $CAM
#ffmpeg -f video4linux2 -s 1920x1080 -i $CAM -ss 0:0:2 -frames 1 "/mnt/data/lapse/tl$(date +"%Y-%m-%d_%H-%M-%S").jpg"
spigot command list | choose 6 > /home/vega/.config/craftonline