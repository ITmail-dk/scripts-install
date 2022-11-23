#!/bin/bash

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Install Discord via .DEB"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 2

cd /tmp

wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb

sudo apt install -y ./discord.deb

clear
echo " # # # # # RUN Discord # # # # #"