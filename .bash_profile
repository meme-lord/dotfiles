#
# ~/.bash_profile
#
export PATH=$PATH:~/bin:~/go/bin:/home/chieftan/.local/bin:/home/chieftan/.bun/bin
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	select option in "xorg_2026_egpu.conf" "just startx"; do
	case $option in
		"xorg_2026_egpu.conf")
			exec startx -- -config xorg_2026_egpu.conf
			;;
		"just startx")
			exec startx
			;;
		*)
			echo "invalid option $option"
	esac
	done

#  if [ $(lspci | grep NVIDIA | wc -l) = "2" ]; then
#    #exec startx -- -config xorg.conf.triple_monitor
#    exec startx -- -config xorg_2026.conf
#	echo "Startx crash? Sleeping 10s"
#	sleep 10
#  else
#    exec startx
#  fi
fi


# Added by Toolbox App
export PATH="$PATH:/home/chieftan/.local/share/JetBrains/Toolbox/scripts"

