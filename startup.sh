#!/bin/bash

#in order to run this script must do:
#copy this repo file from etc/systemd/system/zx200_startup.service
#and make shure that this file (startup.sh) have 0755 permitions
#

#start chargin from percentage
echo 25 > /sys/devices/platform/smapi/BAT0/start_charge_thresh;
#to percentage .....
echo 97 > /sys/devices/platform/smapi/BAT0/stop_charge_thresh;

echo 0 > /sys/devices/platform/smapi/BAT0/inhibit_charge_minutes;

#power of flash memory card
echo 1 > /sys/bus/usb/devices/2-1.1/remove;

echo "Script has finished at `date`"


#######
echo 'deadline' > /sys/block/sda/queue/scheduler;

#switch off gsm
#/usr/sbin/chat -v "" "AT+CFUN=4" "OK" > /dev/ttyACM1 < /dev/ttyACM1
#switch on mobile broadband
#echo 1 > /sys/devices/platform/thinkpad_acpi/rfkill/rfkill1/state

#disable power control for bluettoth
echo "on" > /sys/bus/usb/devices/1-1.4/power/control
echo "powersave" > /sys/module/pcie_aspm/parameters/policy
