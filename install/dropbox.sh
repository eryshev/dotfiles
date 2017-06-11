#!/usr/bin/env bash

source ../.functions
installFromWEB https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
# install the daemon
dropbox start -i
# autostart it
# dropbox autostart y