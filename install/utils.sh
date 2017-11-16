#!/usr/bin/env bash

source ../.functions

apt install -y htop
apt install -y keepassxc

wget https://nodejs.org/dist/v6.11.0/node-v6.11.0-linux-x64.tar.xz
extract node-v6.11.0-linux-x64.tar.xz
rm node-v6.11.0-linux-x64.tar.xz
rm -r ~/app/node
rm /usr/bin/node
rm /usr/bin/npm
mv ./node-v6.11.0-linux-x64 ~/app/node
ln -s /home/aeryshev/app/node/bin/node /usr/bin/node
ln -s /home/aeryshev/app/node/bin/npm  /usr/bin/npm
