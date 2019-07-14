#!/bin/bash
# File              : deploy.sh
# Author            : Ahmed Nasser <ahmednasser@gmail.com>
# Date              : 14.07.2019
# Last Modified Date: 14.07.2019
# Last Modified By  : Ahmed Nasser <ahmednasser@gmail.com>

git add .
git status
git commit -m "Update dotfiles"
git push
