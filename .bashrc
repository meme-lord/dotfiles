#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
alias pacman='sudo pacman'
alias openvpn='sudo openvpn'
alias ssh='TERM=xterm-256color ssh'

PS1='\[\e[32m\][\u \W]\$ \[\e[m\]'
#PS1='[\u@\h \W]\$ '
export EDITOR=nano
export HISTCONTROL=ignoredups
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export XCURSOR_SIZE=32
export SCREENRC=$HOME/.config/screenrc
export WGETRC=$HOME/.config/wget/wgetrc
complete -cf sudo

export PATH="$PATH:/home/chieftan/.foundry/bin:/home/chieftan/.local/share/gem/ruby/3.2.0/bin"
export GOPATH="/home/chieftan/go"
export SEMGREP_RULES="~/semgrep-rules/"
export SEMGREP_SEND_METRICS=off
