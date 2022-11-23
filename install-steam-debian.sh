#!/bin/bash

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Install Steam via .DEB and APT & NVIDIA GPU libs-i386"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 2

cd /tmp
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb

sudo apt install -y nvidia-driver-libs:i386

sudo apt install -y ./steam.deb

clear
echo " # # # # # RUN STEAM CORMAND: steam"