#!/bin/bash
#Note: No guarantee that this theme will be seen correctly at all screen resolutions available
#execute only from within the floflis-plymouth folder!

sudo mkdir /usr/share/plymouth/themes/floflis-plymouth
clear
sudo rsync -aq --exclude=install.sh * /usr/share/plymouth/themes/floflis-plymouth/
clear
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/floflis-plymouth/floflis-plymouth.plymouth 100
sudo update-alternatives --config default.plymouth  #here, choose the number of the theme you want to use then hit enter
sudo update-initramfs -u
#echo
#echo Installing plymouth-x11...   Redundant if already installed.
#sudo apt-get install plymouth-x11
#echo
#echo Running 10-second test...
#sudo plymouthd ; sudo plymouth --show-splash ; for ((I=0; I<10; I++)); do sleep 1 ; sudo plymouth --update=test$I ; done ; sudo plymouth --quit
exit
