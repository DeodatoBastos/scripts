#!/bin/bash

function pause {
    echo -e "Verify all steps and press ENTER \n"
    
    read -n 1 -r key
    while [[ ! $key = "" ]]
    do
        read -n 1 -r key
    done
}

# Install with apt

echo -e "install enssential things\n"
./install_essential.sh
pause

echo -e "install cool themes \n"
./install_themes.sh
pause

echo -e "install apt's packages \n"
./install_apt.sh

# Install with snap

echo -e "install snap's packages \n"
./install_snap.sh
pause

# Install ITAndroids repos

echo -e "install ITAndroids repos \n"
./install_repos.sh
pause

echo -e "you stil need to install folder from Google Drive, ToolBox (JET Brains) and MATLAB \n"

sleep 2

echo -e "cleaning"

sudo apt autoclean && sudo apt autoremove

echo -e "Instalation finished! \n"