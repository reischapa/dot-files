# Mounting physical drive in virtualbox
vboxmanage internalcommands createrawvmdk -filename $HOME/win10.vmdk -rawdisk /dev/sdb

# Testing greeter
lightdm --test-mode

# Adding a service in systemd
sudo vim /etc/systemd/system/<serviceName>.conf
sudo systemctl daemon-reload
sudo systemctl <serviceName> enable
sudo systemctl <serviceName> start 

# Notes

autojump on arch needs a symlink from the .bash to .sh

needed programs

npm:
  npx
  nodemon
  n
  babel-cli
  prettier
  lerna

others:
  lxterminal ?
  realtek driver  
  yay and/or yaourt
  ssh
  keepass
  jq
  pulsemixer
  feh
  compton
  .git-bash
  autojump
  terminator
  rofi
  polybar
  vim
  python
  node
  nodemon
