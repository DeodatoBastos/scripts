#!/bin/bash

sudo apt update

sudo apt install build-essential git valgrind ubuntu-restricted-extras
sudo apt install snapd snapd-xdg-open
sudo apt install apt-transport-https curl software-properties-common
sudo apt install libglib2.0-dev-bin imagemagick
sudo apt install apt-transport-https wget gpg dirmngr

echo "installing kitty"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# create a simboly link for kitty
sudo ln -s /home/deodato/.local/kitty.app/bin/kitty /usr/local/bin/kitty