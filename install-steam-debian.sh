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

sudo dpkg --add-architecture i386

sudo apt update

sudo apt install -y mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386
# nvidia-driver-libs:i386

sudo apt install -y ./steam_latest.deb

cd ~

clear
echo " # # # # # RUN STEAM CORMAND: steam"
