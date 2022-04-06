#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'

GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"
PS1='${GREEN}[\u@\h \W]\$${RESET} '
export PATH=$PATH:~/bin
export EDITOR=nano
export HISTCONTROL=ignoredups
complete -cf sudo

