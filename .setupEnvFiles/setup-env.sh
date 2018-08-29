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


#zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh

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

# install the lock-on-suspend service

sudo cp ~/.setupEnvFiles/wakelock.service /etc/systemd/system/
sudo chmod a+x /etc/systemd/system/wakelock.service
sudo systemctl enable wakelock

mkdir -p ~/bin

git clone git@github.com:reischapa/phrag.py.git ~/bin/phrag



