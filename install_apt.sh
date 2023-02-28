#!/bin/bash

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo -e "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt install brave-browser

echo -e "brave installed successfully "

sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak

sleep 2

echo -e "installing flathub"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo -e "flatpak and flathub installed successfully "

flatpak install flathub com.github.marktext.marktext
echo -e "MarkText installed successfully "

sudo apt install vlc
echo -e "VLC installed successfully "

sudo apt install flameshot
echo -e "FlameShot installed successfully "

sudo apt install htop
echo -e "Htop installed successfully "

sudo apt install neofetch
echo -e "Neofetch installed successfully "

sudo apt install preload
echo -e "Preload installed successfully "

curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo -e "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client
echo -e "spotify installed successfully "

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo -e "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update && sudo apt install code
echo -e "vs code installed successfully "

mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo -e 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt update && sudo apt install onlyoffice-desktopeditors
echo -e "OnlyOffice installed successfully "

sudo apt install r-base
echo -e "R installed successfully "

sudo apt install steam
echo -e "Steam installed successfully "

sudo apt mpv
echo -e "mpv installed successfully "

sudo apt install aria2
echo -e "aria2 installed successfully "

sudo apt install ffmpeg
echo -e "ffmpeg installed successfully "

sudo apt install fzf
echo -e "fzf installed successfully "

wget -qO- https://Wiener234.github.io/ani-cli-ppa/KEY.gpg | sudo tee /etc/apt/trusted.gpg.d/ani-cli.asc
wget -qO- https://Wiener234.github.io/ani-cli-ppa/ani-cli-debian.list | sudo tee /etc/apt/sources.list.d/ani-cli-debian.list
sudo apt update
sudo apt install ani-cli
echo -e "ani-cli installed successfully "

sudo apt install -y jq
echo -e -e "jq installed successfully "

sudo apt instal vim
echo "vim installed sucessfullt "

sudo apt install zsh
echo -e "zsh installed successfully "
chsh -s /usr/bin/zsh
echo -e $SHELL

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo -e 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo -e "powerlevel10k installed successfully  to configure type: 'pk10 configure' "