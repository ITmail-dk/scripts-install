#!/bin/bash

# Install - Steam Flatpak Install

# flatpak install flathub com.valvesoftware.Steam

# flatpak repairl flathub com.valvesoftware.Steam

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Install Steam via Flatpaki on Flathub"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 2

sudo apt install -y flatpak

flatpak install flathub com.valvesoftware.Steam

clear
echo " # # # # # RUN STEAM CORMAND: flatpak run com.valvesoftware.Steam"