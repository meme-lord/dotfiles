#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles='git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'
alias docker='sudo docker'
alias ssh='TERM=xterm-256color ssh'

GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"
PS1='${GREEN}[\u@\h \W]\$${RESET} '
export PATH=$PATH:~/bin
export EDITOR=nano
export HISTCONTROL=ignoredups
complete -cf sudo

