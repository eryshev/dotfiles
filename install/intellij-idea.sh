#!/usr/bin/env bash

PACKAGE_NAME=idea.tar.gz
wget -O$PACKAGE_NAME https://download-cf.jetbrains.com/idea/ideaIU-2017.1.3.tar.gz
tar xf $PACKAGE_NAME
rm $PACKAGE_NAME 
mkdir -p ~/app/idea
cp -r idea*/* ~/app/idea
ln -s ~/app/idea/bin/idea.sh /usr/bin/idea
rm -r idea*
