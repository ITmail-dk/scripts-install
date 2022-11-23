#!/bin/bash

egrep -c '(vmx|svm)' /proc/cpuinfo

read -p "Output = 8 - Press a key to continue the installation."

sudo apt update && sudo apt upgrade -y


sudo apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager


sudo usermod -aG kvm $USER

sudo usermod -aG libvirt $USER

virt-manager