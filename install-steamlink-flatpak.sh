#!/bin/bash


echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Install Steam Link via Flatpak on Flathub"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 1

flatpak install flathub com.valvesoftware.SteamLink

clear
echo " # # # # # RUN STEAM LINK CORMAND: flatpak run com.valvesoftware.SteamLink"