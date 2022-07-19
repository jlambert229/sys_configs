#!/bin/bash

# install pre-reqs for NFS on ubuntu
sudo apt-get update && sudo apt-get install -y nfs-common

# create nfs folder for mounting
sudo mkdir -p /mnt/nfs_vol_01

sudo echo '10.1.100.16:/volume1/docker    /mnt/nfs_vol_01   nfs    defaults    0    0' \
    | sudo tee -a etc/fstab

sudo mount 10.1.100.16:/volume1/docker /mnt/nfs_vol_01

echo 'completed NFS setup for docker.'