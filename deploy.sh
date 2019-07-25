#!/bin/bash
# File              : deploy.sh
# Author            : Ahmed Nasser <ahmednasser@gmail.com>
# Date              : 14.07.2019
# Last Modified Date: 25.07.2019
# Last Modified By  : Ahmed Nasser <ahmednasser@gmail.com>

cp ~/.conky/.conkyrc ~/dev/dotfiles/conky/conkyrc
cp ~/.conky/conky_dashboard.lua ~/dev/dotfiles/conky/conky_dashboard.lua
cp ~/.config/i3/config ~/dev/dotfiles/i3/
cp ~/.config/i3blocks/config ~/dev/dotfiles/i3/i3blocks/
cp ~/.config/nvim/init.vim ~/dev/dotfiles/nvim/
sudo cp -rf ~/.config/fish/* ~/dev/dotfiles/fish/
cp ~/.tmux.conf ~/dev/dotfiles/tmux/
git add .
git status
git commit -m "Update dotfiles"
git push
