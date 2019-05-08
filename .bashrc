#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Aliases
alias ls='ls -l --color=auto --group-directories-first'
alias v='vim'
alias se='sudoedit'
alias p='sudo pacman'
alias grep='grep --color=auto'
# script for external monitor
alias screen='~/.bin/scripts/extmon.sh'
# script for FYP dev
alias FYP='~/.scripts/FYP.sh'

# PYTHONPATH
# export PYTHONPATH="${PYTHONPATH}:/home/archd/Git/FYP/bevs/testapp"

# PATH
# virtualenv add to path
export PATH=$PATH:/home/archd/.local/bin

