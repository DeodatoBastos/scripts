#!bin/bash

sudo apt update

sudo apt install build-essential git valgrind ubuntu-restricted-extras
sudo apt install snapd snapd-xdg-open
sudo apt install apt-transport-https curl software-properties-common

echo "type python's version which you would like to download \n"

read -n 2 -r num
read -n 1 -r key

while [[ ! $key = ""]]
do
	read -n 1 -r key
done

version = "python3.$num"

sudo apt install $version

echo "create ssh keys \n"
ssh-keygen -t ed25519


echo "installing kitty"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# create a simboly link for kitty
sudo ln -s /home/deodato/.local/kitty.app/bin/kitty /usr/local/bin/kitty