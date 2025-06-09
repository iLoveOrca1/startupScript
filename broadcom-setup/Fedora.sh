#!/bin/bash

lspci -nn | grep Network

sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf update -y

sudo dnf install kmod-wl broadcom-wl wpa_supplicant -y 

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
sudo modprobe broadcom-wl

systemctl reboot
