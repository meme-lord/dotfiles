#!/bin/sh

#if [ $(xrandr --listmonitors | wc -l) = "4" ] # this happens when plugged in at home
#if [ $(xrandr --listmonitors | wc -l) = "2" ] # this happens when plugged in at home
if lspci | grep -qi "nvidia" # this happens when plugged in to eGPU (and therefore monitors)
then
	xrandr --output DP-0 --mode 2560x1440 --refresh 144 --primary --pos 0x0 --output HDMI-0 --mode 2560x1440 --pos 2560x0 --rotate left
	#xrandr --output DP-0 --mode 2560x1440 --refresh 144 --rotate normal --primary --output DP-4 --rotate right --right-of DP-0
	# only background start syncthing if at home
	syncthing --no-browser &
	sudo cpupower frequency-set -g performance & # modified sudoers for this
	sudo iw dev wlan0 set power_save off &
	sudo systemctl start docker &
	# xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 640x1440 --rotate normal --output DP-1 --off --output DP-3 --off --output DP-2 --mode 2560x1440 --pos 2560x0 --rotate right --output DP-4 --off --output DP-0 --primary --mode 2560x1440 --rate 144 --pos 0x0 --rotate normal --output DP-5 --off
	# previous config
	# xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 640x1440 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --mode 2560x1440 --pos 2560x0 --rotate right --output DP-3 --off --output DP-4 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-5 --off
else
	sudo cpupower frequency-set -g powersave # modified sudoers for this
	xrandr --output eDP-1 --refresh 60 --mode 2880x1920 # lower refresh rate is better for battery
	# fusuma gives actions for touchpad but we dont need it when at home
	fusuma &
fi
export DISPLAY=:0
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY DBUS_SESSION_BUS_ADDRESS
exec i3
