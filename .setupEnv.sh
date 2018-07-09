#!/bin/bash

cd

#packages

sudo apt install git vim curl python3-pip
sudo apt install keepass2
sudo apt install docker docker-compose
sudo apt install i3-wm
sudo apt install compton

#zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#remove libreoffice
sudo apt-get remove --purge libreoffice*

#ubuntu make

sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo apt update
sudo apt install ubuntu-make

#gnome configuration
sudo apt remove gnome-shell-extension-ubuntu-dock
sudo apt install gnome-themes-standard
sudo apt install gnome-tweak-tool
sudo apt install chrome-gnome-shell

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


