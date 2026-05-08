#!/bin/bash

sudo apt update

sudo apt install build-essential git valgrind ubuntu-restricted-extras -y
sudo apt install apt-transport-https curl software-properties-common -y
sudo apt install libglib2.0-dev-bin imagemagick -y
sudo apt install apt-transport-https wget gpg dirmngr -y
sudo apt install ninja-build gettext cmake curl -y

echo -e "installing kitty"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# create a simboly link for kitty
sudo ln -s /home/deodato/.local/kitty.app/bin/kitty /usr/local/bin/kitty
