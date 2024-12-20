#!/bin/bash

xrandr --newmode "1920x1080_75.00"  220.75  1920 2056 2264 2608  1080 1083 1088 1130 -hsync +vsync;
xrandr --verbose --addmode HDMI-A-0 "1920x1080_75.00";
sleep 2 && xrandr --output HDMI-A-0 --mode "1920x1080_75.00";
