#!/bin/bash

sudo apt install gnome-tweaks fonts-hack-ttf fonts-firacode -y

sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update
sudo apt install flat-remix-gnome

echo "themes and fonts installed successfully \n"