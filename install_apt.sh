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
echo "flakpak and flathub installed succefully \n"

flatpak install flathub com.github.marktext.marktext
echo "MarkText installed successfully \n"

sudo apt install VLC
echo "VLC installed successfully \n"

sudo apt install flameshot
echo "FlameShot installed successfully \n"

sudo apt install htop
echo "Htop installed successfully \n"

sudo apt install neofetch
echo "Neofetch installed successfully \n"

sudo apt install preload
echo "Preload installed successfully \n"

curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client
echo "spotify installed successfully \n"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update && sudo apt install code
echo "vs code installed successfully \n"

mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt update && sudo apt install onlyoffice-desktopeditors
echo "OnlyOffice installed successfully \n"

sudo apt install r-base
echo "R installed sucessfully \n"

sudo apt install steam
echo "Steam installed sucessfully \n"

sudo apt mpv
echo "mpv installed sucessfully \n"

sudo apt install aria2
echo "aria2 installed sucessfully \n"

sudo apt install ffmpeg
echo "ffmpeg installed sucessfully \n"

sudo apt install fzf
echo "fzf installed sucessfully \n"

wget -qO- https://Wiener234.github.io/ani-cli-ppa/KEY.gpg | sudo tee /etc/apt/trusted.gpg.d/ani-cli.asc
wget -qO- https://Wiener234.github.io/ani-cli-ppa/ani-cli-debian.list | sudo tee /etc/apt/sources.list.d/ani-cli-debian.list
sudo apt update
sudo apt install ani-cli
echo "ani-cli installed sucessfully \n"

sudo apt instal vim
echo "vim installed sucessfullt \n"

sudo apt install zsh
echo "zsh installed sucessfully \n"
chsh -s /usr/bin/zsh
echo $SHELL

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo "powerlevel10k installed sucessfully \n to configure type: 'pk10 configure' \n"