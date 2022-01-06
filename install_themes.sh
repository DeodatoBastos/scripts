#!bin/bash

sudo apt install gnome-tweak-tool fonts-hack-ttf fonts-firacode -y

cd ~
mkdir themes && cd themes

git clone https://github.com/daniruiz/flat-remix
git clone https://github.com/daniruiz/flat-remix-gtk

mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/themes/Flat-Remix-GTK* ~/.themes/

echo "themes and fonts installed successfully \n"