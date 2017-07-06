#!/usr/bin/env bash

source ../.functions

apt install -y htop
apt install -y keepassxc

extract https://nodejs.org/dist/v8.1.2/node-v8.1.2-linux-x64.tar.xz
mv ./node-v8.1.2-linux-x64 ~/app/node
ln -s /home/aeryshev/app/node/bin/node /usr/bin/node
ln -s /home/aeryshev/app/node/bin/npm  /usr/bin/npm
