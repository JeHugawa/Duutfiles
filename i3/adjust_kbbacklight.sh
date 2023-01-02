#!/bin/bash

current=$(cat /sys/class/leds/tpacpi\:\:kbd_backlight/brightness)


if [ $current -eq 0 ]
then
    brightnessctl -q --device="tpacpi::kbd_backlight" set 1
elif [ $current -eq 1 ]
then
    brightnessctl -q --device="tpacpi::kbd_backlight" set 2
elif [ $current -eq 2 ]
then
    brightnessctl -q --device="tpacpi::kbd_backlight" set 0
fi
