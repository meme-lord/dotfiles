#
# ~/.bash_profile
#
export PATH=$PATH:~/bin:~/go/bin:/home/chieftan/.local/bin
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  if [ $(lspci | grep NVIDIA | wc -l) = "2" ]; then
    exec startx -- -config xorg.conf.triple_monitor
  else
    exec startx
  fi
fi
