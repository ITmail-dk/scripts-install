#!/bin/sh
#Proxmox - Ubuntu-Cloud-Image VM Template
URLIMG="https://cloud-images.ubuntu.com/jammy/current/"
IMGFILENAME="jammy-server-cloudimg-amd64.img"
SSHPUBKEY=/root/ssh-public-key.pub
VMID="9002"
TAGS="Template"
VMNAME="Ubuntu-Cloud-Image"
VMUSER="username"
VMPASSWORD="Code24"
VMSTORAGE="local-lvm"

echo "Start of NEW VM $VMNAME"
echo "Check if the config file is there and if it is, then we delete the machine and the config files and prepare to make a new vm"
if [ -f /etc/pve/qemu-server/$VMID.conf ]; then
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
wget $URLIMG/$IMGFILENAME && qm create $VMID --name $VMNAME --agent 1 --ostype l26 --cores 4 --sockets 1 --cpu x86-64-v2-AES --memory 4096 --balloon 2048 --scsihw virtio-scsi-single --scsi0 $VMSTORAGE:0,import-from=/tmp/$IMGFILENAME --boot order=scsi0 --serial0 socket --vga serial0 --net0 model=virtio,bridge=vmbr0,firewall=1 --ide2 $VMSTORAGE:cloudinit --ciuser $VMUSER --cipassword $VMPASSWORD --sshkeys "$SSHPUBKEY" --ipconfig0 ip=dhcp --onboot 0 --tags $TAGS && qm resize $VMID scsi0 +53G && qm template $VMID
cd /root
echo "THE NEW $VMNAME VM IS DONE"