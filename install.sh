#!/usr/bin/env bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo $SCRIPTPATH

# Just an example
# ln -sv “~/.dotfiles/runcom/.bash_profile” ~
# ln -sv “~/.dotfiles/runcom/.inputrc” ~
# ln -sv “~/.dotfiles/git/.gitconfig” ~

# Update dotfiles itself
# git pull origin master
# git submodule update --init --recursive

# link i3 config
# ln -s ~/dev/gits/dotfiles/.config/i3 ~/.config/i3

# zsh, oh-my-zsh
sudo apt install -y zsh zsh-syntax-highlighting
ln -s $SCRIPTPATH/.zshrc ~/.zshrc 
ln -s $SCRIPTPATH/.oh-my-zsh ~
ln -s $SCRIPTPATH/oh-my-zsh/custom $SCRIPTPATH/.oh-my-zsh
chsh