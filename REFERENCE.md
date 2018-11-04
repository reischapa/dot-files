# Mounting physical drive in virtualbox
vboxmanage internalcommands createrawvmdk -filename $HOME/win10.vmdk -rawdisk /dev/sdb

# Testing greeter
lightdm --test-mode


