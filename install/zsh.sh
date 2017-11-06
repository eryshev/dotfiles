#!/usr/bin/env bash

apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ~/dev/gits/dotfiles/zsh/.zshrc ~/.zshrc
chsh
