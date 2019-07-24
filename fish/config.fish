####################
#
# Abbreviations
#
####################

abbr --add nvimrc 	nvim ~/.config/nvim/init.vim
abbr --add fishrc 	nvim ~/.config/fish/config.fish
abbr --add dev 		  cd ~/dev/
abbr --add i3rc 	  nvim ~/.config/i3/config
abbr --add rrc 		  nvim ~/.config/ranger/rc.conf
abbr --add comprc 	nvim ~/.config/compton.conf
abbr --add surf     tabbed -c surf -e

function fish_prompt
  set_color normal
  echo -n '['
  set_color fabd2f
  echo -n $USER
  set_color normal
  echo -n ' >> '
  set_color b8bb26
  echo -n (prompt_pwd)
  set_color normal
  echo -n ' >> '
  set_color fb4934
  echo -n " "(git branch 2>/dev/null | grep '^*' | colrm 1 2)
  set_color normal
  echo -n ']'
  set_color 8ec07c
  printf '\n\t>>>> '
end

function fish_right_prompt
  set_color fe8019
  date
end

set -x -U GOPATH $HOME/go
set -x -U EDITOR /usr/bin/nvim
