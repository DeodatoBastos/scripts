#!/bin/bash

function pause {
    echo -e -e "Verify all steps and press ENTER "
    
    read -n 1 -r key
    while [[ ! $key = "" ]]
    do
        read -n 1 -r key
    done
}

echo -e -e "install enssential things"
./install_essential.sh
pause

echo -e -e "install apt's packages "
./install_apt.sh

sleep 2

echo -e -e "cleaning"

sudo apt autoclean && sudo apt autoremove

echo -e -e "Instalation finished! "
