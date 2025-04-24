#
# ~/.bash_profile
#
export PATH=$PATH:~/bin:~/go/bin:/home/chieftan/.local/bin
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  if [ $(lspci | grep NVIDIA | wc -l) = "2" ]; then
    exec startx -- -config xorg.conf.triple_monitor
	echo "Startx crash? Sleeping 10s"
	sleep 10
  else
    exec startx
  fi
fi


# Added by Toolbox App
export PATH="$PATH:/home/chieftan/.local/share/JetBrains/Toolbox/scripts"

