#
# ~/.bash_profile
#
export PATH=$PATH:~/bin:~/go/bin:/home/chieftan/.local/bin
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
