#!/bin/bash

modprobe btusb

sleep 1

sudo systemctl enable bluetooth.service

sleep 1

sudo systemctl start bluetooth.service

sleep 1

clear

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "               Enable Bluetooth DONE"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"