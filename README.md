# .confs
## xrandr modes for dell
```bash
# add mode
xrandr --newmode "2560x1440_33.00"  162.77  2560 2688 2960 3360  1440 1441 1444 1468  -HSync +Vsync && xrandr --addmode HDMI-1 2560x1440_33.00
# rm mode
xrandr --delmode HDMI-1 2560x1440_33.00 && xrandr --rmmode 2560x1440_33.00
```
