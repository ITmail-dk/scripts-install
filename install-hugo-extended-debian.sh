#!/bin/bash

# APT UPDATE & APT UPGRADE
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Hugo Extended - Install"
echo "     Before we Install we run an update..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update && sudo apt upgrade -y

# Install Hugo Extended v0.94.1

cd  /tmp/
wget https://github.com/gohugoio/hugo/releases/download/v0.94.1/hugo_extended_0.94.1_Linux-64bit.deb

echo "Enter your user password, to continue install."
sudo apt install -y /tmp/hugo_extended_0.94.1_Linux-64bit.deb

clear

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "    Hugo Extended Install - ALL DONE"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "

cd ~/bspwm-install-ma-dte
clear
read -p "Press a key to Exit"
