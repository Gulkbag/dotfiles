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
  set_color d79921
  echo -n $USER
  set_color normal
  echo -n ' >> '
  set_color 98971a
  echo -n (prompt_pwd)
  set_color normal
  echo -n ' >> '
  set_color cc241d
  echo -n " "(git branch 2>/dev/null | grep '^*' | colrm 1 2)
  set_color normal
  echo -n '] '
end

function fish_right_prompt
  set_color fe8019
  date
end

set -g theme_color_scheme gruvbox
set -x -U GOPATH $HOME/go
