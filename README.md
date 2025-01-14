# .confs

## Monitor Dell

```bash
# add mode
xrandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync && xrandr --addmode HDMI-1 2560x1440_60.00
# rm mode
xrandr --delmode HDMI-1 2560x1440_60.00 && xrandr --rmmode 2560x1440_60.00
```
