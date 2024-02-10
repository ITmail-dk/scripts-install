#!/bin/sh
#Proxmox - Debian-Cloud-Image VM Template
URLIMG="https://cloud.debian.org/images/cloud/bookworm/latest"
IMGFILENAME="debian-12-generic-amd64.qcow2"
VMID="9000"
VMNAME="Debian-12-Cloud-Image"
VMUSER="user"
VMPASSWORD="Code24"
VMSTORAGE="local-lvm"

echo "Start of NEW VM Debian-Cloud-VM"
echo "Check if the config file is there and if it is, then we delete the machine and the config files and prepare to make >if [ -f /etc/pve/qemu-server/$VMID.conf ]; then
        qm destroy $VMID
else
        echo "The $VMID.conf file is not there, ok"
fi
echo "Switches to temporary folder"
cd /tmp

if [ -f $IMGFILENAME ]; then
        rm $IMGFILENAME
else
        echo "The file is not there, prepare to download"
fi
wget $URLIMG/$IMGFILENAME && qm create $VMID --name $VMNAME --agent 1 --ostype l26 --cores 4 --sockets 1 --cpu x86-64-v2-A>cd /root
echo "THE NEW $VMNAME VM IS TEMPLATE DONE"