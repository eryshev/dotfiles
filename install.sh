#!/usr/bin/env bash

# Just an example
# ln -sv “~/.dotfiles/runcom/.bash_profile” ~
# ln -sv “~/.dotfiles/runcom/.inputrc” ~
# ln -sv “~/.dotfiles/git/.gitconfig” ~

# Update dotfiles itself
git pull origin master
git submodule update --init --recursive

# link i3 config
ln -s ~/dev/gits/dotfiles/.config/i3 ~/.config/i3