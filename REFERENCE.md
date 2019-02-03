# Mounting physical drive in virtualbox
vboxmanage internalcommands createrawvmdk -filename $HOME/win10.vmdk -rawdisk /dev/sdb

# Testing greeter
lightdm --test-mode

# Adding a service in systemd
sudo vim /etc/systemd/system/<serviceName>.conf
sudo systemctl daemon-reload
sudo systemctl <serviceName> enable
sudo systemctl <serviceName> start 


