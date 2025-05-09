#!/bin/bash

# Function to check and exit on error
check_error() {
  if [ $? -ne 0 ]; then
    echo "Error occurred during $1. Exiting."
    exit 1
  fi
}

# Step 1: Install required packages
echo "Installing required packages..."
sudo apt -y install linux-headers-$(uname -r) gcc make acpid dkms libglvnd-core-dev libglvnd0 libglvnd-dev
check_error "package installation"

# Step 2: Blacklist nouveau
echo "Blacklisting nouveau..."
BLACKLIST_CONF="/etc/modprobe.d/blacklist.conf"
echo "blacklist nouveau" | sudo tee -a $BLACKLIST_CONF
check_error "blacklisting nouveau"

# Step 3: Remove old NVIDIA drivers
echo "Removing old NVIDIA drivers..."
sudo apt remove -y nvidia-* && sudo apt autoremove -y $(dpkg -l nvidia-driver* | grep ii | awk '{print $2}')
check_error "removal of old NVIDIA drivers"

# Step 4: Enable i386 architecture and install 32-bit libraries
echo "Enabling i386 architecture and installing 32-bit libraries..."
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y libc6:i386
check_error "installation of i386 libraries"

# Step 5: Update GRUB configuration
echo "Updating GRUB configuration..."
GRUB_CONF="/etc/default/grub"
sudo sed -i '/^GRUB_CMDLINE_LINUX=/ s/"$/ rd.driver.blacklist=nouveau"/' $GRUB_CONF
check_error "updating GRUB configuration"
sudo update-grub
check_error "GRUB update"

# Step 6: Download and install NVIDIA driver
echo "Downloading and installing NVIDIA driver..."
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/550.135/NVIDIA-Linux-x86_64-550.135.run
check_error "downloading NVIDIA driver"
chmod +x NVIDIA-Linux-x86_64-550.135.run
sudo ./NVIDIA-Linux-x86_64-550.135.run
check_error "NVIDIA driver installation"

echo "All steps completed successfully!"
