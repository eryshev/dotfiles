#!/usr/bin/env bash

# i3
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
apt update
apt install -y i3
rm keyring.deb

# i3blocks - flexible bar for i3
apt install -y i3blocks

# rofi - a dmenu remplacement
apt install -y rofi

# Configure layout switcher
cd ~/dev/dotfiles/.config/i3/tools/xkblayout-state
make
