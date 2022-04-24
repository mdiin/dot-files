#!/bin/sh

#DP11=`xrandr | grep 'DP1-1 connected'`
EDP1=`xrandr | grep '^eDP-1 connected'`
DP1=`xrandr | grep '^DP-1 connected'`
DP2=`xrandr | grep '^DP-2 connected'`
HDMI2=`xrandr | grep '^HDMI-2 connected'`

if [ -n "$HDMI2" ]; then
  echo "HDMI-2 found"
fi

if [ -n "$DP1" ]; then
  echo "DP-1 found"
fi

if [ -n "$DP2" ]; then
  echo "DP-2 found"
fi

if [ -n "$EDP1" ]; then
  echo "eDP-1 found"
fi

if [ -n "$EDP1" ]; then
  xrandr --output eDP-1 --off
  xrandr --output eDP-1 --primary --mode 2560x1440 --scale 1.25x1.25
else
  xrandr --output eDP-1 --off
  xrandr --output DP-1 --primary --mode 2560x1440 --scale 1.25x1.25
fi

if [ -n "$DP11" -a -n "$HDMI2" ]; then
  xrandr --output DP1-1 --off
  xrandr --output HDMI-2 --off
  xrandr --output DP1-1 --mode 2560x1440 --left-of e-DP1
  xrandr --output HDMI-2 --mode 2560x1440 --left-of e-DP1 --right-of DP1-1
  xrandr --output HDMI-2 --mode 2560x1440 --left-of e-DP1
  xrandr --output DP1-1 --mode 2560x1440 --left-of HDMI-2
  sh ~/.fehbg
elif [ -n "$EDP1" -a -n "$DP1" ]; then
  xrandr --output DP-1 --off
  xrandr --output DP-1 --mode 3840x2160 --left-of eDP-1 --scale 1.25x1.25
  xrandr --output eDP-1 --pos 4800x0
  sh ~/.fehbg
elif [ -n "$EDP2" -a -n "$DP2" ]; then
  xrandr --output DP-2 --off
  xrandr --output DP-2 --mode 3840x2160 --left-of eDP-1 --scale 1.25x1.25
  xrandr --output eDP-1 --pos 4800x0
  sh ~/.fehbg
elif [ -n "$EDP1" -a -n "$HDMI2" ]; then
  xrandr --output HDMI-2 --off
  xrandr --output HDMI-2 --mode 3840x2160 --left-of DP-1 --scale 1.25x1.25
  xrandr --output eDP-1 --pos 4800x0
  sh ~/.fehbg
else
  exit 1;
fi

