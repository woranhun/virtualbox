#!/bin/bash
sudo echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get -y purge dkms 
sudo apt-get -y install dkms
sudo apt-get -y purge virtualbox*
sudo apt-get -y install virtualbox-5.2
/sbin/vboxconfig
