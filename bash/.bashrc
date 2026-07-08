#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

GREEN="$(tput setaf 2)"
BLUE="$(tput setaf 6)"
RESET="$(tput sgr0)"
PS1='[${GREEN}\u${RESET}@${BLUE}\h${RESET} \W]\$ '

export GPG_TTY=$(tty)
export MANPATH=$MANPATH:/usr/local/texlive/2026/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/usr/local/texlive/2026/texmf-dist/doc/info
export PATH=$PATH:/usr/local/texlive/2026/bin/x86_64-linux
export QT_QPA_PLATFORM=xcb
