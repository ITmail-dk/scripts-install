#!/bin/bash
cd ~/bspwm-install-ma-dte

#sudo sh -c "echo 'Xcursor.theme: Nordzy-cursors' >> /etc/X11/Xresources/x11-common"
#sudo sh -c "echo 'Xcursor.size: 22' >> /etc/X11/Xresources/x11-common"

sudo sh -c "echo 'deb http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Run APT Update
sudo apt update

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Do, mkdir, copy, copy, echo files.
. ~/bspwm-install-ma-dte/install-scripts/mkdir-cp-git-chmod-echo-files.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Add Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-core-packages.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Add Pulseaudio to system startup as user.
systemctl --user enable pulseaudio

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Last Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-software-last-packages.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


# Last step setup menu installing.
#. ~/bspwm-install-ma-dte/last-step-setup-menu.sh