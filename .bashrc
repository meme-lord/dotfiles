#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias docker='sudo docker'
alias pacman='sudo pacman'
alias ssh='TERM=xterm-256color ssh'

PS1='\[\e[32m\][\u@\h \W]\$ \[\e[m\]'
#PS1='[\u@\h \W]\$ '
export PATH=$PATH:~/bin:~/go/bin
export EDITOR=nano
export HISTCONTROL=ignoredups
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
complete -cf sudo

