#!/bin/bash
# File              : .bashrc
# Author            : Ahmed Nasser <ahmednasser@gmail.com>
# Date              : 02.08.2019
# Last Modified Date: 09.08.2019
# Last Modified By  : Ahmed Nasser <ahmednasser@gmail.com>
# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -n "$XTERM_VERSION" ] && transset --id "$WINDOWID" >/dev/null

# Wall colorscheme, comment if using st
# (cat ~/.cache/wal/sequences &)

stty -ixon # Disable ctrl-s and ctrl-q
shopt -s autocd # Zsh like autocd

# exec fish

# Aliases, same as my abbreviations in fish
alias ls='ls --color=auto'
alias nvc='nvim ~/.config/nvim/init.vim'
alias fc='nvim ~/.config/fish/config.fish'
alias bc='nvim ~/.bashrc'
alias df='cd ~/dev/dotfiles/'
alias i3c='nvim ~/.config/i3/config'
alias rrc='nvim ~/.config/ranger/rc.conf'
alias br='netsurf'
alias vim='nvim'
alias dp='sh deploy.sh'
alias xi='sudo xbps-install -Sy'
alias xr='sudo xbps-remove -Ry'
alias xq='xbps-query -Rs'
alias rmc='sudo xbps-remove -Ooy'
alias upd='sudo xbps-install -Suy'
alias lock='i3lock-fancy -t "See you later" -f "Hack-Bold-Nerd-Font-Complete-Mono"' 

# Setup prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

ranger_check() {
  if pgrep ranger >/dev/null 2>&1
    then
      echo "₪"
    else
      echo ""
  fi
}

export PS1="[\e[1;91m\u@\h \[\033[1;32m\]\w\033[1;33m\]\$(parse_git_branch) \e[0;37m] \n     >>>> "

echo -e -n "\x1b[\x34 q"

export PAGER="most"
