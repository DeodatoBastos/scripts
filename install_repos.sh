#!/bin/bash

cd /home/$USER/Desktop
mkdir ITAndroids && cd ITAndroids
mkdir soccer3D && cd soccer3D

git clone git@gitlab.com:itandroids/projects/lib/itandroids-lib.git
git clone git@gitlab.com:itandroids/projects/soccer3d/itandroids-soccer3d.git

echo -e "repos cloned successfully "