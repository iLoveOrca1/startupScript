#!/bin/bash

lspci -nn | grep Network

sudo apt-get update 
sudo apt-get dist-upgrade

sudo apt-get install wireless-tools network-manager wpasupplicant 

sudo apt-get install linux-image-$(uname -r | sed 's,[^-]*-[^-]*-,,')
sudo apt-get install linux-headers-$(uname -r | sed 's,[^-]*-[^-]*-,,')

sudo apt-get install broadcom-sta-dkms

modules=(
    b44
    b43
    ssb
    brcmsmac
    bcma
)
for module in ${modules[@]};do
    sudo modprobe -r $module
done

sudo modprobe wl

systemctl reboot
