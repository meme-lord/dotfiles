#xrandr --output DP-2 --rotate right --right-of DP-4
#TODO - wrap the xrandr command in an if statement?
if [ $(xrandr --listmonitors | wc -l) = "4" ]
then
	xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 640x1440 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --mode 2560x1440 --pos 2560x0 --rotate right --output DP-3 --off --output DP-4 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-5 --off
fi
exec i3
