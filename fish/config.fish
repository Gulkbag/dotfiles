####################
#
# Abbreviations
#
####################

fish_vi_key_bindings # Vi Mode

abbr --add nvc 	nvim ~/.config/nvim/init.vim
abbr --add fc 	nvim ~/.config/fish/config.fish
abbr --add df 	cd ~/dev/
abbr --add i3c 	nvim ~/.config/i3/config
abbr --add rrc	nvim ~/.config/ranger/rc.conf
abbr --add cc 	nvim ~/.config/compton.conf
abbr --add srf  tabbed -c surf -e
abbr --add vim  nvim # I sometimes type vim instead of nvim
abbr --add df   cd ~/dev/dotfiles/
abbr --add dp   sh deploy.sh
abbr --add xi   sudo xbps-install -Sy
abbr --add xr   sudo xbps-remove -Ry
abbr --add xq   xbps-query -Rs
abbr --add rmc  sudo xbps-remove -Ooy # Removes all cached stuff
abbr --add upd  sudo xbps-install -Suy # Update

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
  echo (date '+%Y %b %d %I:%M%p')
end

function fish_mode_prompt --description 'Displays current mode'
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    switch $fish_bind_mode
      case default
        set_color --bold red
        echo N
      case insert
        set_color --bold green
        echo I
      case replace-one
        set_color --bold green
        echo R
      case visual
        set_color --bold brmagenta
        echo V
    end
    set_color normal
    printf " "
  end
end

set -x -U GOPATH $HOME/go
set -x -U EDITOR /usr/bin/nvim


