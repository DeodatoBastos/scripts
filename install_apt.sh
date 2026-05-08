#!/bin/bash

curl -fsS https://dl.brave.com/install.sh | sh

echo -e "brave installed successfully "

# sudo apt install flatpak
# sudo apt install gnome-software-plugin-flatpak

# sleep 2

# echo -e "installing flathub"

# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# echo -e "flatpak and flathub installed successfully "

# flatpak install flathub com.github.marktext.marktext
# echo -e "MarkText installed successfully "

sudo apt install vlc -y
echo -e "VLC installed successfully "

sudo apt install flameshot
echo -e "FlameShot installed successfully "

sudo apt install btop
echo -e "Btop installed successfully "

sudo apt install neofetch
echo -e "Neofetch installed successfully "

sudo apt install preload
echo -e "Preload installed successfully "

# curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
# echo -e "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt update && sudo apt install spotify-client
# echo -e "spotify installed successfully "

mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo -e 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt update && sudo apt install onlyoffice-desktopeditors
echo -e "OnlyOffice installed successfully "

sudo apt install steam
echo -e "Steam installed successfully "

sudo apt install mpv
echo -e "mpv installed successfully "

sudo apt install aria2
echo -e "aria2 installed successfully "

sudo apt install ffmpeg
echo -e "ffmpeg installed successfully "

sudo apt install fzf
echo -e "fzf installed successfully "

sudo apt install ani-cli
echo -e "ani-cli installed successfully "

sudo apt instal vim
echo -e "vim installed successfully "

sudo apt install ninja-build gettext cmake curl build-essential git
git clone https://github.com/neovim/neovim ~/neovim/
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
echo -e "nvim installed successfully"
cd $HOME

curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash
sudo apt install python3-pip, python3-venv

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install --lts

npm install --global @ast-grep/cli

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo binstall tree-sitter-cli

sudo apt install ripgrep, xclip

sudo apt install libreadline-dev unzip
sudo apt install lua5.1 liblua5.1-dev
cd ~/Downloads/
wget https://luarocks.org/releases/luarocks-3.13.0.tar.gz
tar zxpf luarocks-3.13.0.tar.gz
cd luarocks-3.13.0
./configure && make && sudo make install
sudo luarocks install luasocket

curl -fsSL https://pyenv.run | bash
source ~/.bashrc
pyenv virtualenv nvim
pyenv activate nvim
pip install neovim
pyenv deactivate

sudo apt install perl perl-tk
sudo apt install cpanminus
sudo cpanm -n Neovim::Ext

cd $HOME

sudo apt install ruby-full
sudo gem install neovim

echo -e "nvim extras installed successfully"

sudo apt install zsh
echo -e "zsh installed successfully "
chsh -s /usr/bin/zsh
echo -e $SHELL

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo -e 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo -e "powerlevel10k installed successfully  to configure type: 'pk10 configure' "

sudo apt install gnome-tweaks -y

sudo apt install lsd

sudo apt install nala
