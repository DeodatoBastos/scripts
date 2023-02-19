#!/bin/bash

function pause {
    echo -e "Verify all steps and press ENTER "
    
    read -n 1 -r key
    while [[ ! $key = "" ]]
    do
        read -n 1 -r key
    done
}

# Install with apt

echo -e "install enssential things"
./install_essential.sh
pause

echo -e "install cool themes "
./install_themes.sh
pause

echo -e "install apt's packages "
./install_apt.sh

# Install with snap

echo -e "install snap's packages "
./install_snap.sh
pause

# Install ITAndroids repos

# echo -e "install ITAndroids repos "
# ./install_repos.sh
# pause

echo -e "you stil need to install folder from Google Drive, ToolBox (JET Brains) and MATLAB "
echo -e "rstudio, postman, "

sleep 2

echo -e "cleaning"

sudo apt autoclean && sudo apt autoremove

echo -e "Instalation finished! "