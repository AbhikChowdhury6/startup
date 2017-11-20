#!/bin/bash

nvidiaVersion = "384"
sudo apt install -y libxss1 libappindicator1 libindicator7
sudo apt install -y htop tmux

sudo apt-get install -y python3-pip python3-dev python-virtualenv

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f
rm google-chrome*

#Nvidia stuff
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt update
sudo apt install -y nvidia$nvidiaVersion

#tensorflow
google-chrome https://developer.nvidia.com/rdp/form/cudnn-download-survey
pip3 install --upgrade tensorflow-gpu

#atom
wget https://atom.io/download/deb
sudo dpkg -i atom*
rm atom*
