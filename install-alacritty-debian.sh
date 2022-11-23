#!/bin/bash

#APT UPDATE & APT UPGRADE
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'--'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT + Alacritty - Building and installing"
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'--'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update && sudo apt upgrade -y
sudo apt install -y cmake cargo pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Create folders."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#mkdir ~/.config/alacritty
mkdir ~/make

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     GIT Download."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cd ~/make/
git clone https://github.com/alacritty/alacritty.git
mv alacritty ~/make/
cd ~/make/alacritty

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

echo "-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Building."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-"

cargo build --release

echo "-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Buil DONE."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-"

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'--'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Add Desktop Entry."
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'--'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

cd ~/bspwm-install-ma-dte
clear
echo "Alacritty Install - ALL DONE"