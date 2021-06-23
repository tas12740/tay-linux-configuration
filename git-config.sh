#!/bin/bash

# run with source git-config.sh

# git config --global user.name "Taylor Smith"
# git config --global user.email "tas12740@gmail.com"
git config --global core.editor vim
git config --global core.autocrlf input
git config --global core.filemode true
git config --global core.trustctime false
git config --global color.ui true
git config --global format.pretty oneline
git config --global push.default simple
git config --global alias.currbranch 'branch --show-current'
git config --global alias.lg1 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.lg2 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
git config --global alias.lg '!git lg1'
git config --global alias.logdog 'log --all --decorate --oneline --graph'
