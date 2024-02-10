#!/bin/bash

# Download & Install TeamViewer

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     TeamViewer - Download..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

cd  /tmp/
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

echo "Enter your user password, to continue install."
sudo apt install -y /tmp/teamviewer_amd64.deb

clear

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "    TeamViewer Install - ALL DONE"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "

cd ~

clear
read -p "Press a key to Exit"

exit