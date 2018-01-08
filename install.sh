#!/usr/bin/env bash
set -x

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo $SCRIPTPATH

# Just an example
# ln -sv “~/.dotfiles/runcom/.bash_profile” ~
# ln -sv “~/.dotfiles/runcom/.inputrc” ~
# ln -sv “~/.dotfiles/git/.gitconfig” ~

# Update dotfiles itself
# git pull origin master
# git submodule update --init --recursive

# zsh, oh-my-zsh
# sudo apt install -y zsh zsh-syntax-highlighting
# ln -s $SCRIPTPATH/.zshrc ~/.zshrc 
# ln -s $SCRIPTPATH/.oh-my-zsh ~
# ln -s $SCRIPTPATH/oh-my-zsh/custom $SCRIPTPATH/.oh-my-zsh
# chsh

# i3
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
apt update
rm keyringw.deb
sudo apt install -y i3 i3blocks rofi fonts-font-awesome
# pushd ~/dev/dotfiles/.config/i3/tools/xkblayout-state
# make
# popd
# Nautilus i3 bug correction
gsettings set org.gnome.desktop.background show-desktop-icons false
ln -s $SCRIPTPATH/.config/i3 ~/.config
ln -s $SCRIPTPATH/.config/weston.ini ~/.config

# sway
# sudo add-apt-repository ppa:s.noack/ppa
# sudo apt-get update
# sudo apt-get install sway

# others
sudo apt install -y htop git