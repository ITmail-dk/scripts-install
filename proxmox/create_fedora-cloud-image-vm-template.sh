#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
VNR="$(curl -s https://fedora.mirrorservice.org/fedora/linux/releases/ | grep 'href="[0-9][0-9]' | tail -n 1 | sed -n 's/.*href="\([^"]*\).*/\1/p' | sed 's~/~~g')"

#Proxmox - Cloud-Image VM Template
FULLURL="https://fedora.mirrorservice.org/fedora/linux/releases/$VNR/Cloud/x86_64/images/"
FILENAME="$(curl -s "$FULLURL" | grep x86_64.qcow2 | sed -n 's/.*href="\([^"]*\).*/\1/p')"
SSHPUBKEY=/root/ssh-public-key.pub
VMID="9001"
VMNAME="Fedora-Cloud-Image"
VMUSER="username"
VMPASSWORD="Code24"
VMSTORAGE="local-lvm"
TAGS="Template"

echo "Start of NEW VM $VMNAME"
echo "Check if the config file is there and if it is, then we delete the machine and the config files and prepare to make a new vm"
if [ -f /etc/pve/qemu-server/$VMID.conf ]; then
        qm destroy $VMID
else
        echo "The $VMID.conf file is not there, ok"
fi
echo "Switches to temporary folder"
cd /tmp

if [ -f $FILENAME ]; then
        rm $FILENAME
else
        echo "The file is not there, prepare to download"
fi
wget $FULLURL/$FILENAME && qm create $VMID --name $VMNAME --agent 1 --ostype l26 --cores 4 --sockets 1 --cpu x86-64-v2-AES --memory 4096 --balloon 2048 --scsihw virtio-scsi-single --scsi0 $VMSTORAGE:0,import-from=/tmp/$FILENAME --boot order=scsi0 --serial0 socket --vga serial0 --net0 model=virtio,bridge=vmbr0,firewall=1 --ide2 $VMSTORAGE:cloudinit --ciuser $VMUSER --cipassword $VMPASSWORD --sshkeys "$SSHPUBKEY" --ipconfig0 ip=dhcp --onboot 0 --tags $TAGS && qm resize $VMID scsi0 +53G && qm template $VMID
cd /root
echo "THE NEW $VMNAME VM IS DONE"