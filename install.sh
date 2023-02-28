#!/bin/bash

function pause {
    echo -e -e "Verify all steps and press ENTER "
    
    read -n 1 -r key
    while [[ ! $key = "" ]]
    do
        read -n 1 -r key
    done
}

# Install with apt

echo -e -e "install enssential things"
./install_essential.sh
pause

echo -e -e "install cool themes "
./install_themes.sh
pause

echo -e -e "install apt's packages "
./install_apt.sh

echo -e -e "you stil need to install folder from Google Drive, ToolBox (JET Brains) and MATLAB "
echo -e -e "rstudio, postman, "

sleep 2

echo -e -e "cleaning"

sudo apt autoclean && sudo apt autoremove

echo -e -e "Instalation finished! "