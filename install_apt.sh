#!/bin/bash

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt install brave-browser

echo "brave instaled successfully \n"

sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak

sleep 2

echo "installing flathub"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install flathub org.Inkscape.Inkscape

echo "flakpak and flathub installed succefully \n"

flatpak install flathub org.gimp.GIMP

echo "GIMP installed successfully \n"

flatpak install flathub com.github.marktext.marktext

echo "MarkText installed successfully \n"

sudo apt install VLC

echo "VLC installed successfully \n"

sudo apt install flameshot

echo "FlameShot installed successfully \n"

# sudo add-apt-repository ppa:bashtop-monitor/bashtop
# sudo apt update
# sudo apt install bashtop

# echo "Bashtop installed successfully \n"

sudo apt install htop

echo "Htop installed successfully \n"

sudo apt install neofetch

echo "Neofetch installed successfully \n"

sudo apt install preload

echo "Preload installed successfully \n"
