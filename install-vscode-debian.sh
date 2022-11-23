#!/bin/bash

# Install - VS Code Software.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Download & Install VS Code"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 1

cd /tmp/
wget -O vscode_amd64.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt install -y /tmp/vscode_amd64.deb

cd ~

clear

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     VS Code Install - ALL DONE"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"