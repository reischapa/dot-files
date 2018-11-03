#!/bin/bash

cd

#packages

sudo apt install git vim curl python3-pip
sudo apt install keepass2
sudo apt install docker docker-compose
sudo apt install i3-wm
sudo apt install compton
sudo apt install pulsemixer
sudo apt install pauvcontrol
sudo apt install libgtk-3-dev
sudo apt install liblightdm-gobject-1-dev
sudo apt install terminator
sudo apt install xfce4-power-manager

#remove libreoffice
sudo apt-get remove --purge libreoffice*

#ubuntu make

sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo apt update
sudo apt install ubuntu-make

#setup node

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install --global create-react-app http-server eslint prettier

#setup dot-files repo

cd 

git submodule update --init --recursive

sudo pip3 install neovim

cd ~/.vim/bundle/tern_for_vim && npm install && cd
 
#optionals

sudo ln -sv $HOME/bin/svim /usr/bin/svim

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# lightdm-mini-greeter
# https://github.com/prikhi/lightdm-mini-greeter
# install and then change user in lightdm-mini-greeter config

SETUP_ENV_FILES_DIR=~/.setupEnvFiles
sudo apt install lightdm-mini-greeter
sudo cp $SETUP_ENV_FILES_DIR/70-lightdm-mini-greeter.conf /etc/lightdm/lightdm.conf.d/70-lightdm-mini-greeter.conf
sudo cp $SETUP_ENV_FILES_DIR/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf


# install the lock-on-suspend service

sudo cp ~/.setupEnvFiles/wakelock.service /etc/systemd/system/
sudo chmod a+x /etc/systemd/system/wakelock.service
sudo systemctl enable wakelock

mkdir -p ~/bin

git clone git@github.com:reischapa/phrag.py.git ~/bin/phrag



