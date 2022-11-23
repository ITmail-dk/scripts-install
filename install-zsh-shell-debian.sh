#!/bin/bash

# APT UPDATE & APT UPGRADE
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT UPDATE & APT UPGRADE + install ZSH Shell"
echo "     Enter your user password, to continue."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update && sudo apt upgrade -y

# Install ZSH Shell
# Debian install zsh shell.:

sudo apt install -y zsh && zsh --version

# Make it your default shell:
sudo chsh -s $(which zsh)


# Test that it worked with.: 
echo $SHELL


# Test with...
$SHELL --version

cd ~/bspwm-install-ma-dte
clear
read -p "ZSH Shell Install - ALL DONE - Press a key to Exit"