#!/bin/bash

nvidiaVersion = "384"

sudo apt install -y libxss1 libappindicator1 libindicator7
sudo apt install -y htop tmux curl unity-tweak-tool

sudo apt-get install -y python3-pip python3-dev python-virtualenv
sudo apt-get install -y python-pip python-dev

sudo add-apt-repository ppa:jonathonf/ffmpeg-3
sudo apt-get install -y ffmpeg libav-tools x264 x265
sudo apt-get install -y vlc browser-plugin-vlc
mkdir ~/Programs


git config --global user.email "Abhik.ch6@gmail.com"
git config --global user.name "Abhik Chowdhury"


#arduino
wget https://www.arduino.cc/download.php?f=/arduino-nightly-linux64.tar.xz
tar -xf arduino*
mv arduino* ~/Programs
sudo ./../Programs/arduino/insall.sh

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f
sudo chown -R chowder:chowder /home/chowder
find /home/chowder -type d -print0 | xargs -0 chmod 775
rm google-chrome*

#Nvidia stuff
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt update
sudo apt install -y nvidia-$nvidiaVersion

#amd stuff

#sudo apt install radeontop


#tensorflow

google-chrome https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604&target_type=debnetwork
sudo apt-key add /var/cuda-repo-9-2-local/7fa2af80.pub
sudo dpkg -i ~/Downloads/cuda*
#use the latest
google-chrome https://developer.nvidia.com/rdp/form/cudnn-download-survey



sudo echo /opt/cuda/lib64 | sudo tee /etc/ld.so.conf.d/cudNN.conf

read -p "Press enter to continue"

pip install --upgrade tensorflow-gpu
pip install -U matplotlib

#atom
wget https://atom.io/download/deb
sudo dpkg -i deb
rm deb

#node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
