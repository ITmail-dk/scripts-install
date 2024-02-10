#!/bin/bash

# APT UPDATE & APT UPGRADE
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Alacritty Themes - Install"
echo "     NPM Install alacritty-themes"
echo " "
echo " See more at https://github.com/rajasegar/alacritty-themes"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

echo "Enter your user password, to continue."

sudo apt update && sudo apt install -y npm

# NPM Install alacritty-themes

npm i -g alacritty-themes



clear
echo " "
echo " "
echo " "
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "    ALL DONE run alacritty-themes to use it"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo " "
echo " "
echo " "
echo " "