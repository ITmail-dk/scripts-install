#!/bin/bash
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo "              SET GRUB_TIMEOUT TO 1"
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo sed -i 's+GRUB_TIMEOUT=5+GRUB_TIMEOUT=1+g' /etc/default/grub

clear

sudo update-grub

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo "                     ALL DONE"
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"