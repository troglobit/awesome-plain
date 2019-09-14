#!/bin/sh

type=$1
device=$2
status=$3
desc=$4

case "$type,$device,$status,$desc" in
  display,HDMI-3,connected,*)
        xrandr --output $device --primary --auto --left-of LVDS-1
        ;;

  display,DP-2,connected,*)
        xrandr --output $device --primary --auto --right-of LVDS-1
        ;;

  display,DP-2-2,connected,*)
        xrandr --output $device --primary --auto --right-of eDP-1
        ;;

  display,VGA-1,connected,*)
        xrandr --output $device --auto --left-of LVDS-1 --primary
        ;;

  display,*,disconnected,*)
        xrandr --auto
        ;;

  pointer,*,connected,"SynPS/2 Synaptics TouchPad")
        xinput set-prop $device 'Synaptics Off' 1
        ;;

  keyboard,*connected,*)
        setxkbmap -option ctrl:nocaps
        ;;
esac
