#!/bin/bash

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Install Flatpak & Hub"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 1

sudo apt install -y flatpak

sleep 1

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

clear
echo " # # # # # SEE MORE APPS ON https://flathub.org/home # # # # #"